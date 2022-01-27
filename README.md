# UDPipe2 docker images

This project was used to dockerize [UDPipe2](https://ufal.mff.cuni.cz/udpipe/2). 


## How to start UDPipe2 docker image

1. Clone this project

```
git clone https://github.com/mazoea/udpipe2-docker.git
```

2. Start the docker containers

```
docker-compose up
```
with output similar to

```
Starting 058f82439976_udpipe2-docker_wembedding_1 ... done
Starting udpipe2-docker_udpipe2_1                 ... done
Attaching to 058f82439976_udpipe2-docker_wembedding_1, udpipe2-docker_udpipe2_1
058f82439976_udpipe2-docker_wembedding_1 | 2022-01-27 07:19:42.252659: I tensorflow/stream_executor/platform/default/dso_loader.cc:48] Successfully opened dynamic library libcudart.so.10.1
058f82439976_udpipe2-docker_wembedding_1 | Starting WEmbeddings server on port 8000.
058f82439976_udpipe2-docker_wembedding_1 | To stop it gracefully, either send SIGINT (Ctrl+C) or SIGUSR1.
udpipe2_1     | WARNING:tensorflow:From /udpipe/udpipe2.py:31: The name tf.logging.set_verbosity is deprecated. Please use tf.compat.v1.logging.set_verbosity instead.
udpipe2_1     |
udpipe2_1     | WARNING:tensorflow:From /udpipe/udpipe2.py:31: The name tf.logging.ERROR is deprecated. Please use tf.compat.v1.logging.ERROR instead.
udpipe2_1     |
udpipe2_1     | Started UDPipe 2 server on port 8001.
udpipe2_1     | To stop it gracefully, either send SIGINT (Ctrl+C) or SIGUSR1.
```

3. Test the service by visiting http://localhost:8001/models that should give you a similar response to this

```json
{
 "models": {
  "english-ewt-ud-2.6-200830": [
   "tokenizer",
   "tagger",
   "parser"
  ]
 },
 "default_model": "en_ewt"
}
```

## How to use the service


There are three ways how to process your text:

1. For testing: open `./html_page/run.html` in your web-browser, follow the description.

2. Using text directly via `curl`:

```
curl http://localhost:8001/process?data="Hello%20world.&tokenizer&tagger&parser"
```

3. Using text file via `curl` (create your `input.txt` file):
```
curl -F data=@input.txt -F tokenizer= -F tagger= -F parser= http://localhost:8001/process
```

**NOTE**: The first processing takes longer in order for the model to load all required data.

## How to choose the  language

The language is set through variable before running docker containers.

```
export U2LANG=en_ewt
```
or Windows users
```
set U2LANG=en_ewt
```

and then start the service

```
docker-compose up
```

And check http://localhost:8001/models .


## How to run on two GPUs

```
docker-compose -f docker-compose.gpu.yml up
```

**Note**: Windows OS does not support docker GPU out of the box.

---

# List of supported languages

af_afribooms, ar_padt, be_hse, bg_btb, ca_ancora, cop_scriptorium, cs_cac, cs_cltt, cs_fictree, cs_pdt, cu_proiel, cy_ccg, da_ddt, de_gsd, de_hdt, el_gdt, en_ewt, en_gum, en_lines, en_partut, es_ancora, es_gsd, et_edt, et_ewt, eu_bdt, fa_seraji, fi_ftb, fi_tdt, fr_gsd, fr_partut, fr_sequoia, fr_spoken, fro_srcmf, ga_idt, gd_arcosg, gl_ctg, gl_treegal, got_proiel, grc_perseus, grc_proiel, he_htb, hi_hdtb, hr_set, hu_szeged, hy_armtdp, id_gsd, it_isdt, it_partut, it_postwita, it_twittiro, it_vit, ja_gsd, ko_gsd, ko_kaist, la_evalatin20, la_ittb, la_llct, la_perseus, la_proiel, lt_alksnis, lt_hse, lv_lvtb, lzh_kyoto, mr_ufal, mt_mudt, nl_alpino, nl_lassysmall, no_bokmaal, no_nynorsk, no_nynorsklia, orv_rnc, orv_torot, pcm_nsc, pl_lfg, pl_pdb, pt_bosque, pt_gsd, ro_nonstandard, ro_rrt, ru_gsd, ru_syntagrus, ru_taiga, sa_vedic, sk_snk, sl_ssj, sl_sst, sme_giella, sr_set, sv_lines, sv_talbanken, ta_ttb, te_mtg, tr_imst, ug_udt, uk_iu, ur_udtb, vi_vtb, wo_wtb, zh_gsd, zh_gsdsimp


---

## Run embeddings image on GPU directly

```
$ docker run -d --gpus '"device=0"' -p 8000:8000 ghcr.io/ufal/wembedding:tf-2.3.1-gpu-preloaded-staging

$ docker ps -a
CONTAINER ID   IMAGE                                    COMMAND                  CREATED              STATUS                      PORTS                                       NAMES
9647d02e853d   wembedding:tf-2.3.1-gpu-preloaded   "python start_wembed…"   About a minute ago   Up About a minute           0.0.0.0:8000->8000/tcp, :::8000->8000/tcp   cranky_knuth

$ nvidia-smi
Fri Sep 24 08:59:29 2021
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 455.32.00    Driver Version: 455.32.00    CUDA Version: 11.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  GeForce RTX 208...  Off  | 00000000:01:00.0 Off |                  N/A |
| 31%   34C    P0    57W / 250W |      0MiB / 11019MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
|   1  GeForce RTX 208...  Off  | 00000000:02:00.0 Off |                  N/A |
| 32%   35C    P0     1W / 250W |      0MiB / 11019MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|  No running processes found                                                 |
+-----------------------------------------------------------------------------+

$ curl -s --data-binary @examples/request.json localhost:8000/wembeddings

$ nvidia-smi
Fri Sep 24 09:00:06 2021
+-----------------------------------------------------------------------------+
| NVIDIA-SMI 455.32.00    Driver Version: 455.32.00    CUDA Version: 11.1     |
|-------------------------------+----------------------+----------------------+
| GPU  Name        Persistence-M| Bus-Id        Disp.A | Volatile Uncorr. ECC |
| Fan  Temp  Perf  Pwr:Usage/Cap|         Memory-Usage | GPU-Util  Compute M. |
|                               |                      |               MIG M. |
|===============================+======================+======================|
|   0  GeForce RTX 208...  Off  | 00000000:01:00.0 Off |                  N/A |
| 27%   35C    P2    57W / 250W |  10442MiB / 11019MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+
|   1  GeForce RTX 208...  Off  | 00000000:02:00.0 Off |                  N/A |
| 32%   35C    P0     1W / 250W |      0MiB / 11019MiB |      0%      Default |
|                               |                      |                  N/A |
+-------------------------------+----------------------+----------------------+

+-----------------------------------------------------------------------------+
| Processes:                                                                  |
|  GPU   GI   CI        PID   Type   Process name                  GPU Memory |
|        ID   ID                                                   Usage      |
|=============================================================================|
|    0   N/A  N/A     42878      C   python                          10439MiB |
+-----------------------------------------------------------------------------+
```
