
install.packages(c("googlesheets4", "optparse"), repos = "https://cloud.r-project.org")
library(googlesheets4)
library(optparse)

# Look for the sa argument
option_list <- list(optparse::make_option(c("--sa"), type = "character", default = NULL))
service_account <- parse_args(OptionParser(option_list = option_list))$sa

# Authenticate
grep(".json$", list.files(), value = TRUE)
# gs4_deauth()
# gs4_auth(
#   token = gargle::credentials_service_account(
#     path = NULL,
#   scopes = "https://www.googleapis.com/auth/spreadsheets")
# )
