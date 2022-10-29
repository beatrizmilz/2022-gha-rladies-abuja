library(httr)
library(fs)

# checking which files we have
dir_ls()

#  the URL 
url_download <- "https://app.anm.gov.br/SIGBM/Publico/ClassificacaoNacionalDaBarragem/ExportarExcel"

# file name to save
file_name <- paste0(
  "sigbm_download_", Sys.Date(), ".xlsx"
)

# POST and write file on disk
POST(url_download, write_disk(file_name))

# checking which files document we have
dir_ls()

     