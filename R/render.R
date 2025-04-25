
install.packages("googlesheets4", repos = "https://cloud.r-project.org")
library(googlesheets4)
#library(optparse)

# Look for the sa argument
# option_list <- list(optparse::make_option(c("--sa"), type = "character", default = NULL))
# service_account <- parse_args(OptionParser(option_list = option_list))$sa

# Authenticate
gs4_deauth()
t <- gargle::credentials_service_account(path = grep(".json$", list.files(), value = TRUE),
                                         scopes = "https://www.googleapis.com/auth/spreadsheets")
is.null(t)

# gs4_auth(
#   token =
#     gargle::credentials_service_account(
#       path = grep(".json$", list.files(), value = TRUE),
#       scopes = "https://www.googleapis.com/auth/spreadsheets"
#     )
# )
