set DOCKER_BUILDKIT=1
docker build --progress=plain -f Dockerfile.af_afribooms -t ghcr.io/ufal/udpipe:2-af_afribooms-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-af_afribooms-tf-1.15.-gpu-staging
echo Looks OK?
pause
docker build --progress=plain -f Dockerfile.grc_perseus -t ghcr.io/ufal/udpipe:2-grc_perseus-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-grc_perseus-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.grc_proiel -t ghcr.io/ufal/udpipe:2-grc_proiel-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-grc_proiel-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ar_padt -t ghcr.io/ufal/udpipe:2-ar_padt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ar_padt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.hy_armtdp -t ghcr.io/ufal/udpipe:2-hy_armtdp-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-hy_armtdp-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.eu_bdt -t ghcr.io/ufal/udpipe:2-eu_bdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-eu_bdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.be_hse -t ghcr.io/ufal/udpipe:2-be_hse-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-be_hse-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.bg_btb -t ghcr.io/ufal/udpipe:2-bg_btb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-bg_btb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ca_ancora -t ghcr.io/ufal/udpipe:2-ca_ancora-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ca_ancora-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.zh_gsdsimp -t ghcr.io/ufal/udpipe:2-zh_gsdsimp-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-zh_gsdsimp-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.zh_gsd -t ghcr.io/ufal/udpipe:2-zh_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-zh_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.lzh_kyoto -t ghcr.io/ufal/udpipe:2-lzh_kyoto-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-lzh_kyoto-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cop_scriptorium -t ghcr.io/ufal/udpipe:2-cop_scriptorium-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cop_scriptorium-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.hr_set -t ghcr.io/ufal/udpipe:2-hr_set-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-hr_set-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cs_pdt -t ghcr.io/ufal/udpipe:2-cs_pdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cs_pdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cs_cac -t ghcr.io/ufal/udpipe:2-cs_cac-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cs_cac-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cs_fictree -t ghcr.io/ufal/udpipe:2-cs_fictree-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cs_fictree-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cs_cltt -t ghcr.io/ufal/udpipe:2-cs_cltt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cs_cltt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.da_ddt -t ghcr.io/ufal/udpipe:2-da_ddt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-da_ddt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.nl_alpino -t ghcr.io/ufal/udpipe:2-nl_alpino-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-nl_alpino-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.nl_lassysmall -t ghcr.io/ufal/udpipe:2-nl_lassysmall-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-nl_lassysmall-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.en_ewt -t ghcr.io/ufal/udpipe:2-en_ewt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-en_ewt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.en_gum -t ghcr.io/ufal/udpipe:2-en_gum-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-en_gum-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.en_lines -t ghcr.io/ufal/udpipe:2-en_lines-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-en_lines-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.en_partut -t ghcr.io/ufal/udpipe:2-en_partut-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-en_partut-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.et_edt -t ghcr.io/ufal/udpipe:2-et_edt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-et_edt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.et_ewt -t ghcr.io/ufal/udpipe:2-et_ewt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-et_ewt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fi_tdt -t ghcr.io/ufal/udpipe:2-fi_tdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fi_tdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fi_ftb -t ghcr.io/ufal/udpipe:2-fi_ftb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fi_ftb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fr_gsd -t ghcr.io/ufal/udpipe:2-fr_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fr_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fr_sequoia -t ghcr.io/ufal/udpipe:2-fr_sequoia-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fr_sequoia-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fr_partut -t ghcr.io/ufal/udpipe:2-fr_partut-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fr_partut-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fr_spoken -t ghcr.io/ufal/udpipe:2-fr_spoken-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fr_spoken-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.gl_ctg -t ghcr.io/ufal/udpipe:2-gl_ctg-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-gl_ctg-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.gl_treegal -t ghcr.io/ufal/udpipe:2-gl_treegal-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-gl_treegal-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.de_hdt -t ghcr.io/ufal/udpipe:2-de_hdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-de_hdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.de_gsd -t ghcr.io/ufal/udpipe:2-de_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-de_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.got_proiel -t ghcr.io/ufal/udpipe:2-got_proiel-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-got_proiel-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.el_gdt -t ghcr.io/ufal/udpipe:2-el_gdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-el_gdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.he_htb -t ghcr.io/ufal/udpipe:2-he_htb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-he_htb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.hi_hdtb -t ghcr.io/ufal/udpipe:2-hi_hdtb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-hi_hdtb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.hu_szeged -t ghcr.io/ufal/udpipe:2-hu_szeged-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-hu_szeged-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.id_gsd -t ghcr.io/ufal/udpipe:2-id_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-id_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ga_idt -t ghcr.io/ufal/udpipe:2-ga_idt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ga_idt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.it_isdt -t ghcr.io/ufal/udpipe:2-it_isdt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-it_isdt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.it_partut -t ghcr.io/ufal/udpipe:2-it_partut-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-it_partut-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.it_postwita -t ghcr.io/ufal/udpipe:2-it_postwita-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-it_postwita-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.it_twittiro -t ghcr.io/ufal/udpipe:2-it_twittiro-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-it_twittiro-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.it_vit -t ghcr.io/ufal/udpipe:2-it_vit-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-it_vit-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ja_gsd -t ghcr.io/ufal/udpipe:2-ja_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ja_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ko_kaist -t ghcr.io/ufal/udpipe:2-ko_kaist-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ko_kaist-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ko_gsd -t ghcr.io/ufal/udpipe:2-ko_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ko_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.la_ittb -t ghcr.io/ufal/udpipe:2-la_ittb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-la_ittb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.la_llct -t ghcr.io/ufal/udpipe:2-la_llct-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-la_llct-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.la_proiel -t ghcr.io/ufal/udpipe:2-la_proiel-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-la_proiel-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.la_perseus -t ghcr.io/ufal/udpipe:2-la_perseus-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-la_perseus-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.la_evalatin20 -t ghcr.io/ufal/udpipe:2-la_evalatin20-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-la_evalatin20-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.lv_lvtb -t ghcr.io/ufal/udpipe:2-lv_lvtb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-lv_lvtb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.lt_alksnis -t ghcr.io/ufal/udpipe:2-lt_alksnis-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-lt_alksnis-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.lt_hse -t ghcr.io/ufal/udpipe:2-lt_hse-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-lt_hse-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.mt_mudt -t ghcr.io/ufal/udpipe:2-mt_mudt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-mt_mudt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.mr_ufal -t ghcr.io/ufal/udpipe:2-mr_ufal-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-mr_ufal-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.pcm_nsc -t ghcr.io/ufal/udpipe:2-pcm_nsc-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-pcm_nsc-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sme_giella -t ghcr.io/ufal/udpipe:2-sme_giella-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sme_giella-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.no_bokmaal -t ghcr.io/ufal/udpipe:2-no_bokmaal-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-no_bokmaal-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.no_nynorsk -t ghcr.io/ufal/udpipe:2-no_nynorsk-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-no_nynorsk-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.no_nynorsklia -t ghcr.io/ufal/udpipe:2-no_nynorsklia-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-no_nynorsklia-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cu_proiel -t ghcr.io/ufal/udpipe:2-cu_proiel-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cu_proiel-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fro_srcmf -t ghcr.io/ufal/udpipe:2-fro_srcmf-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fro_srcmf-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.orv_torot -t ghcr.io/ufal/udpipe:2-orv_torot-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-orv_torot-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.orv_rnc -t ghcr.io/ufal/udpipe:2-orv_rnc-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-orv_rnc-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.fa_seraji -t ghcr.io/ufal/udpipe:2-fa_seraji-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-fa_seraji-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.pl_pdb -t ghcr.io/ufal/udpipe:2-pl_pdb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-pl_pdb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.pl_lfg -t ghcr.io/ufal/udpipe:2-pl_lfg-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-pl_lfg-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.pt_gsd -t ghcr.io/ufal/udpipe:2-pt_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-pt_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.pt_bosque -t ghcr.io/ufal/udpipe:2-pt_bosque-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-pt_bosque-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ro_rrt -t ghcr.io/ufal/udpipe:2-ro_rrt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ro_rrt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ro_nonstandard -t ghcr.io/ufal/udpipe:2-ro_nonstandard-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ro_nonstandard-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ru_syntagrus -t ghcr.io/ufal/udpipe:2-ru_syntagrus-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ru_syntagrus-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ru_gsd -t ghcr.io/ufal/udpipe:2-ru_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ru_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ru_taiga -t ghcr.io/ufal/udpipe:2-ru_taiga-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ru_taiga-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sa_vedic -t ghcr.io/ufal/udpipe:2-sa_vedic-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sa_vedic-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.gd_arcosg -t ghcr.io/ufal/udpipe:2-gd_arcosg-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-gd_arcosg-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sr_set -t ghcr.io/ufal/udpipe:2-sr_set-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sr_set-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sk_snk -t ghcr.io/ufal/udpipe:2-sk_snk-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sk_snk-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sl_ssj -t ghcr.io/ufal/udpipe:2-sl_ssj-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sl_ssj-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sl_sst -t ghcr.io/ufal/udpipe:2-sl_sst-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sl_sst-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.es_ancora -t ghcr.io/ufal/udpipe:2-es_ancora-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-es_ancora-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.es_gsd -t ghcr.io/ufal/udpipe:2-es_gsd-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-es_gsd-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sv_talbanken -t ghcr.io/ufal/udpipe:2-sv_talbanken-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sv_talbanken-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.sv_lines -t ghcr.io/ufal/udpipe:2-sv_lines-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-sv_lines-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ta_ttb -t ghcr.io/ufal/udpipe:2-ta_ttb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ta_ttb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.te_mtg -t ghcr.io/ufal/udpipe:2-te_mtg-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-te_mtg-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.tr_imst -t ghcr.io/ufal/udpipe:2-tr_imst-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-tr_imst-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.uk_iu -t ghcr.io/ufal/udpipe:2-uk_iu-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-uk_iu-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ur_udtb -t ghcr.io/ufal/udpipe:2-ur_udtb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ur_udtb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.ug_udt -t ghcr.io/ufal/udpipe:2-ug_udt-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-ug_udt-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.vi_vtb -t ghcr.io/ufal/udpipe:2-vi_vtb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-vi_vtb-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.cy_ccg -t ghcr.io/ufal/udpipe:2-cy_ccg-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-cy_ccg-tf-1.15.-gpu-staging
docker build --progress=plain -f Dockerfile.wo_wtb -t ghcr.io/ufal/udpipe:2-wo_wtb-tf-1.15.-gpu-staging .
 docker push ghcr.io/ufal/udpipe:2-wo_wtb-tf-1.15.-gpu-staging