"""
    Create Dockefiles from models_list.sh
"""
import os
import sys
import io
import glob
import re
import argparse
import logging
logging.basicConfig(format='%(asctime)s %(message)s', level=logging.DEBUG)
_logger = logging.getLogger() 


def create_docker(docker_tmpl, outputdir, model_dir, lang_default, models, dockerfile_suffix=None):
    """
        Create specific Dockerfile, change what is copied and how udpipe is called.
    """
    suffix = dockerfile_suffix or lang_default
    dockerfile = os.path.join(outputdir, 'Dockerfile.%s' % suffix)
    # https://docs.docker.com/engine/reference/commandline/build/#use-a-dockerignore-file
    ignorefile = dockerfile + '.dockerignore'

    copy_str = 'COPY %s %s' % (model_dir, model_dir)
    arg_str = lang_default
    used_dirs = []
    for arg1, arg2, arg3, arg4 in models:
        arg_str += ' %s %s %s %s' % (arg1, arg2, arg3, arg4)
        used_dirs.append(arg2)

    docker_format = docker_tmpl.format(TEMPLATE_COPYMODELS=copy_str, TEMPLATE_ARGS=arg_str)
    with io.open(dockerfile, mode='w', encoding='utf-8', newline='\n') as fout:
        fout.write(docker_format)
    with io.open(ignorefile, mode='w', encoding='utf-8', newline='\n') as fout:
        fout.writelines([
            model_dir + '\n',
            '!%s' % '\n!'.join(used_dirs)
        ])
    return dockerfile


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Creates `models_list.sh`')
    parser.add_argument('--list-langs', help='List languages', action='store_true')
    parser.add_argument('--models', help='Input `models_list.sh` with supported langugages',
                        type=str)
    parser.add_argument('--docker-template', help='Docker template',
                        type=str, default='./_Dockerfile.template')
    parser.add_argument('--docker-tag', help='Tag to use',
                        type=str, default='udpipe2:%s')
    flags = parser.parse_args()


    if flags.list_langs:
        rec = re.compile('Dockerfile[.][^.]+$')
        dock_files = [os.path.basename(x) for x in glob.glob('./Dockerfile.*') if rec.match(os.path.basename(x)) is not None]
        langs = sorted([x.split('.')[1] for x in dock_files])
        langs = [x for x in langs if x not in ('all', )]
        _logger.info('Langs:\n%s\n', '\n'.join(langs))
        sys.exit(0)


    if not os.path.exists(flags.models):
        _logger.critical('Cannot find [%s]' % flags.models)
        sys.exit(1)

    try:
        with io.open(os.path.join(flags.models, 'MODELS.txt'), mode='r', encoding='utf-8') as fin:
            lines = fin.readlines()
        models = [x.split() for x in lines]
        models = [(a1, os.path.join(flags.models, a2), a3, a4) for (a1, a2, a3, a4) in models]

    except:
        _logger.critical('File [%s] in unknown format', flags.models)
        sys.exit(1)

    with io.open(flags.docker_template, mode='r', encoding='utf-8') as fin:
        docker = fin.read()

    outputdir = os.path.dirname(flags.docker_template)

    _logger.info('Creating `all` Dockerfile')
    create_docker(docker, outputdir, flags.models, 'eng', models, dockerfile_suffix='all')

    docker_build_cmds = []
    build_tmpl = 'docker build --progress=plain -f %s -t %s .'
    push_tmpl = ' docker push %s'
    rmi_tmpl = ' docker rmi %s'

    _logger.info('Creating [%d] lang specific Dockerfiles (and ignore files)' % len(models))
    for i, model in enumerate(models):
        # tags, path, lang_id, ack = model
        dockerfile = create_docker(docker, outputdir, flags.models, model[2], [model])
        tag =  flags.docker_tag % model[2]
        docker_build_cmds.append(build_tmpl % (os.path.basename(dockerfile), tag))
        docker_build_cmds.append(push_tmpl % tag)
        if i == 0:
            docker_build_cmds.append('echo Looks OK?')
            docker_build_cmds.append('pause')
        docker_build_cmds.append(rmi_tmpl % tag)


    _logger.info('Creating batch script to build all lang images')
    with io.open(os.path.join(outputdir, 'build.langs.bat'), mode='w', encoding='utf-8', newline='\r\n') as fout:
        fout.write('set DOCKER_BUILDKIT=1\n')
        fout.write('\n'.join(docker_build_cmds))
