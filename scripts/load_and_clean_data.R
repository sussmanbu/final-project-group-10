library(tidyverse)
library(dplyr)
library(collapse)


cov_collapse <- seda_cov_geodist_long_4_1 %>% 
  drop_na(sedaleaname) %>% 
  collap(perspeced + totenrl + perell + perfl + unempall + pernam + perasn + perblk
         + perhsp + perwht + single_momall + snapall + unempall 
         + snapall + perecd ~ sedaleaname + year + stateabb, FUN = list(fmean))


test_scores_collapse <- seda_geodist_long_gcs %>% 
  drop_na(sedaleaname) %>% 
  collap(gcs_mn_all + gcs_mnse_all + totgyb_all + totgyb_asn + totgyb_blk + totgyb_fem
         +totgyb_hsp + totgyb_mal + totgyb_ecd + totgyb_mtr + totgyb_nec + 
           totgyb_wht + gcs_mn_asn + gcs_mn_blk + gcs_mn_ecd + gcs_mn_fem + 
           gcs_mn_hsp + gcs_mn_wht + gcs_mn_mal + gcs_mn_mtr
         ~ sedaleaname + year + stateabb + subject, FUN = list(fmean))



cleaned_seda <- merge(test_scores_collapse, cov_collapse, by=c("sedaleaname","year"))


cleaned_seda <- cleaned_seda %>% 
  rename(district = sedaleaname, state = stateabb, mn_score_all = cs_mn_all, 
         mn_score_wht = cs_mn_wht, mn_score_asn = cs_mn_asn, mn_score_blk = cs_mn_blk,
         mn_score_ecd = cs_mn_ecd, mn_score_mtr = cs_mn_mtr, mn_score_hsp = cs_mn_hsp,
         mn_score_fem = cs_mn_fem, mn_score_male = cs_mn_mal, numstu_all = totgyb_all,
         numstu_asn = totgyb_asn, numstu_wht = totgyb_wht, numstu_hsp = totgyb_hsp,
         numstu_blk = totgyb_blk, numstu_fem = totgyb_fem, numstu_ecd = totgyb_ecd,
         numstu_mtr = totgyb_mtr, numstu_male = totgyb_mal, numstu_nec = totgyb_nec)

saveRDS(cleaned_seda, file = "cleaned_seda.rds")


