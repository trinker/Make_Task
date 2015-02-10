if (!"pacman" %in% dir(.libPaths())) devtools::install_github("trinker/pacman")
pacman::p_load(rmarkdown, knitr)
pacman::p_load_gh("trinker/gmailR")

## This will need to be changed to your local settings
setwd("C:/Users/Tyler/Desktop/Make_Task")

unlink("reports", recursive = TRUE, force = FALSE)

rmarkdown::render("apple_microsoft.Rmd", "all", output_dir = "reports")

gmailR::gmail(
    to="tyler_rinker@hotmail.com", 
    subject = "Stock Reports", 
    password = "PASSWORD",
    message = "Please find the attached stock report.",
    attachment = "reports/apple_microsoft.pdf",
    username = "YOU_SOMEPLACE@gmail.com"
)



