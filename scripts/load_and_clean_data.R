#library(tidyverse)
#library(dplyr)
#library(collapse)

#going to ask prof if I should upload the original files just b/c they are
#extremely large (like 500 MB)

## LOAD the data


## CLEAN the data

#we will probably want to do more than this, but this is just a start

# cov_collapse <- seda_cov_geodist_long_4_1 %>% 
#   drop_na(sedaleaname) %>% 
#   collap(perspeced + totenrl + perell + perfl + unempall + pernam + perasn + perblk
#          + perhsp + perwht + single_momall + snapall + unempall 
#          + snapall + perecd ~ sedaleaname + year + stateabb, FUN = list(fmean))
# 
# 
# write.csv(cov_collapse, file = "SEDA_covariates_edited.csv")
# 
# test_scores_collapse <- seda_geodist_long_gcs %>% 
#   drop_na(sedaleaname) %>% 
#   collap(gcs_mn_all + gcs_mnse_all + totgyb_all + totgyb_asn + totgyb_blk + totgyb_fem
#          +totgyb_hsp + totgyb_mal + totgyb_ecd + totgyb_mtr + totgyb_nec + 
#            totgyb_wht + gcs_mn_asn + gcs_mn_blk + gcs_mn_ecd + gcs_mn_fem + 
#            gcs_mn_hsp + gcs_mn_wht + gcs_mn_mal + gcs_mn_mtr
#          ~ sedaleaname + year + stateabb + subject, FUN = list(fmean))
# 
# write.csv(test_scores_collapse, file = "SEDA_testscores_edited.csv")



