# UDPipe2 docker images

This project was used to dockerize [UDPipe2](https://ufal.mff.cuni.cz/udpipe/2). 


## How to start UDPipe2 docker image

**1. Clone this project**

```
git clone https://github.com/mazoea/udpipe2-docker.git
```

**2. Select the required language model (default: `en_ewt`)**

The default language model can be changed via an environmental variable:

```
export U2LANG=en_ewt
```
On Windows use
```
set U2LANG=en_ewt
```

**3. Start the docker containers**

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

**4. Test the service by visiting http://localhost:8001/models that should give you a similar response to this**

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

2. Setting the text directly via `curl`:

```
curl http://localhost:8001/process?data="Hello%20world.&tokenizer&tagger&parser"
```

3. Using a text file via `curl` (create your `input.txt` file):
```
curl -F data=@input.txt -F tokenizer= -F tagger= -F parser= http://localhost:8001/process
```

**NOTE**: The first processing takes longer in order for the model to load all required data.

## How to run on two GPUs

```
docker-compose -f docker-compose.gpu.yml up
```

**Note**: Windows OS does not support docker GPU out of the box.

---

# List of supported languages

af_afribooms, ar_padt, be_hse, bg_btb, ca_ancora, cop_scriptorium, cs_cac, cs_cltt, cs_fictree, cs_pdt, cu_proiel, cy_ccg, da_ddt, de_gsd, de_hdt, el_gdt, en_ewt, en_gum, en_lines, en_partut, es_ancora, es_gsd, et_edt, et_ewt, eu_bdt, fa_seraji, fi_ftb, fi_tdt, fr_gsd, fr_partut, fr_sequoia, fr_spoken, fro_srcmf, ga_idt, gd_arcosg, gl_ctg, gl_treegal, got_proiel, grc_perseus, grc_proiel, he_htb, hi_hdtb, hr_set, hu_szeged, hy_armtdp, id_gsd, it_isdt, it_partut, it_postwita, it_twittiro, it_vit, ja_gsd, ko_gsd, ko_kaist, la_evalatin20, la_ittb, la_llct, la_perseus, la_proiel, lt_alksnis, lt_hse, lv_lvtb, lzh_kyoto, mr_ufal, mt_mudt, nl_alpino, nl_lassysmall, no_bokmaal, no_nynorsk, no_nynorsklia, orv_rnc, orv_torot, pcm_nsc, pl_lfg, pl_pdb, pt_bosque, pt_gsd, ro_nonstandard, ro_rrt, ru_gsd, ru_syntagrus, ru_taiga, sa_vedic, sk_snk, sl_ssj, sl_sst, sme_giella, sr_set, sv_lines, sv_talbanken, ta_ttb, te_mtg, tr_imst, ug_udt, uk_iu, ur_udtb, vi_vtb, wo_wtb, zh_gsd, zh_gsdsimp


---
