# Data Commons: Demographics
Demographic data and measures for the Social Impact Data Commons

Testing



Data repo structure

 - Age /distribution 
      va_trctbg_acs_20092020_age_demographics.csv.xz
      ncr_trctbg_acs_20092020_age_demographics.csv.xz
      va059_hsrpdsdzc_sdad_2019_age_demographics.csv.xz
      va013_civic_sdad_2019_age_demographics.csv.xz
      
 - Gender /distribution
      va_trctbg_acs_20092020_gender_demographics.csv.xz
      ncr_trctbg_acs_20092020_gender_demographics.csv.xz
      va059_hsrpdsdzc_sdad_2019_gender_demographics.csv.xz
      va013_civic_sdad_2019_gender_demographics.csv.xz
 
 - Race /distribution
      va_trctbg_acs_20092020_race_demographics.csv.xz
      ncr_trctbg_acs_20092020_race_demographics.csv.xz
      va059_hsrpdsdzc_sdad_2019_race_demographics.csv.xz
      va013_civic_sdad_2019_race_demographics.csv.xz
 
 - Language /distribution
      va_trctbg_acs_20092020_language_demographics.csv.xz
      ncr_trctbg_acs_20092020_language_demographics.csv.xz
      va059_hsrpdsdzc_sdad_2019_language_demographics.csv.xz
      va013_civic_sdad_2019_language_demographics.csv.xz



Synthetic estimation

Refinement:
  - Estimate demographics at the parcel/ssl for DC, Fairfax and Arlington,
  - Assumptions
    1.Population is distributed at the parcel/ssl level according to the number of living units
    2.living units distribution across parcels is fixed
      update version: consider the year when a parcel is created and build a dynamic version of parcels
      
  - data (not distributed)
    
Expansion:
  - estimate demographic for new geographies (civic association, human services, planning district, zip code)



