
install.packages(c("googlesheets4", "optparse"), repos = "https://cloud.r-project.org")
library(googlesheets4)
library(optparse)

# Look for the sa argument
option_list <- list(optparse::make_option(c("--sa"), type = "character", default = NULL))
service_account <- parse_args(OptionParser(option_list = option_list))$sa

# Authenticate
options(gargle.gce.use_ip = TRUE)
t <- gargle::credentials_external_account()
print("is it null?")
is.null(t)


gs4_auth()
