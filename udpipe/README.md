# How to release

1. Copy models to this directory
1. Run 
```
$ python create.py --models=./models-2.6/models_list.sh  --docker-tag="ghcr.io/ufal/udpipe:2-%s-tf-1.15.-gpu-staging"
```

This will create:
- `Dockerfile`;
- `.dockerignore` for every model;
- `Dockerfile.all` for all the models (this one can get huge);
- `build.langs.bat` that builds all the images and pushes them.

3. Verify the contents of `build.langs.bat` that it contains e.g.,

```
$ docker build --progress=plain -f Dockerfile.af_afribooms -t ghcr.io/ufal/udpipe:2-af_afribooms-tf-1.15.-gpu-staging .
$ docker push ghcr.io/ufal/udpipe:2-af_afribooms-tf-1.15.-gpu-staging
```

4. Run `build.langs.bat`

---

### How to make a release to github

Create a PAT token and use it with your USERNAME to login to `ghcr.io`.

```
$ docker login ghcr.io -u USERNAME
```

Tag the appropriate version and push it to github packages (this will be done in `build.langs.bat`).

```
$ docker tag HASH ghcr.io/ufal/wembedding:tf-2.3.1-gpu-preloaded
$ docker push ghcr.io/ufal/wembedding:tf-2.3.1-gpu-preloaded
```

---

### How to use a different model

```
$ cd ..
$ docker-compose -f docker-compose.yml build --build-arg UDPIPEMODEL="en_all-ud-2.6-200830.model" udpipe2
```