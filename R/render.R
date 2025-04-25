
install.packages(c("googlesheets4", "optparse"), repos = "https://cloud.r-project.org")
library(googlesheets4)
library(optparse)

# Look for the sa argument
option_list <- list(optparse::make_option(c("--sa"), type = "character", default = NULL))
service_account <- parse_args(OptionParser(option_list = option_list))$sa

# Authenticate
options(gargle.gce.use_ip = TRUE)
t <- gargle::credentials_gce(service_account)

gs4_auth()
