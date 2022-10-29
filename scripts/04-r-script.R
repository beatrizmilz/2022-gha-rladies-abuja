library(httr)
library(fs)

print("Checking which files we have:")
dir_ls()

#  the URL 
url_download = "https://app.anm.gov.br/SIGBM/Publico/ClassificacaoNacionalDaBarragem/ExportarExcel"

# file name to save
file_name = paste0("sigbm_download_", Sys.Date(), ".xlsx")


print("Making a POST request and writing file on disk:")
POST(url_download, write_disk(file_name))


print("Checking which files we have:")
dir_ls()