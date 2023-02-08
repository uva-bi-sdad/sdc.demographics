# Age distribution for new geographies aera (only for sub-area in virginia) using the living units distribution across parcels (method 1)
# New geography : - Zip code
#                 - Human services
#                 - Civic association
#                 - Supervisor districts


# librairies ------------------------------------------------------------------------------------
library(dplyr)
library(sf)
library(httr)
library(sp)
library(data.table)
library(stringr)
library("rgdal", lib.loc="/usr/local/lib/R/site-library")
library(tidyr)
library(readr)
library(tidyverse)
library(tidycensus)
library(tigris)
library(rjson)


# upload parcels/ssl information -----------------------------------------------------------------

# upload the parcel demographics data and the parcel geometry
uploadpath = "Synthetic_population/Housing_units_distribution/Fairfax/data/working/"
fairfax_pc_dmg <- read_csv(xzfile(paste0(uploadpath, "va059_pc_sdad_2019_demographics.csv.xz"))) 

# upload the new geographies
hsr_geo <- sf::st_read("https://github.com/uva-bi-sdad/sdc.geographies/blob/7723c7ad25b92a7ae7edb88c17b3c561b521a82b/VA/Local%20Geographies/Fairfax%20County/Human%20Services%20Regions/2022/data/distribution/va059_geo_ffxct_gis_2022_human_services_regions.geojson?raw=T")
pd_geo <- sf::st_read("https://github.com/uva-bi-sdad/sdc.geographies/blob/7723c7ad25b92a7ae7edb88c17b3c561b521a82b/VA/Local%20Geographies/Fairfax%20County/Planning%20Districts/2022/data/distribution/va059_geo_ffxct_gis_2022_planning_districts.geojson?raw=T")
sd_geo <- sf::st_read("https://github.com/uva-bi-sdad/sdc.geographies/blob/7723c7ad25b92a7ae7edb88c17b3c561b521a82b/VA/Local%20Geographies/Fairfax%20County/Supervisor%20Districts/2022/data/distribution/va059_geo_ffxct_gis_2022_supervisor_districts.geojson?raw=T")
zc_geo <- sf::st_read("https://github.com/uva-bi-sdad/sdc.geographies/blob/7723c7ad25b92a7ae7edb88c17b3c561b521a82b/VA/Local%20Geographies/Fairfax%20County/Zip%20Codes/2022/data/distribution/va059_geo_ffxct_gis_2022_zip_codes.geojson?raw=T")
civic_geo <- sf::st_read("https://github.com/uva-bi-sdad/sdc.geographies/blob/7723c7ad25b92a7ae7edb88c17b3c561b521a82b/VA/Local%20Geographies/Arlington%20County/Civic%20Associations/2021/data/distribution/va013_geo_arl_2021_civic_associations.geojson?raw=T")


# map the new geography with the parcel
sf::sf_use_s2(FALSE)
fairfax_acs_dmg_dt <- st_join(geo_infos, fairfax_parcels_blocks_cnts_dmgs_dt_wide_geo, join = st_intersects)
fairfax_acs_dmg_dt <- st_join(geo_infos, fairfax_parcels_blocks_cnts_dmgs_dt_wide_geo, join = st_intersects)
fairfax_acs_dmg_dt <- st_join(geo_infos, fairfax_parcels_blocks_cnts_dmgs_dt_wide_geo, join = st_intersects)
fairfax_acs_dmg_dt <- st_join(geo_infos, fairfax_parcels_blocks_cnts_dmgs_dt_wide_geo, join = st_intersects)


# compute the age for the new geographies --------------------------------------------------------





# Compute statistics -----------------------------------------------------------------------------





# Save the data ----------------------------------------------------------------------------------

