# report-script

library(asar)

create_template(
  format = "pdf", # optional "html"
  type = "sar", # add'l options: "safe", "nemt", "pfmc"
  office = "PIFSC",
  region = "Hawai'i",
  species = "Crimson jobfish (Uku)",
  spp_latin = "Pristipomoides filamentosus",
  authors = c("Samantha Schiano" = "OST", "Janelle Morano"="PIFSC"),
  file_dir = getwd() # folder where the "report" folder will be saved
)
