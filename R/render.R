
install.packages(c("googlesheets4", "jsonlite"), repos = "https://cloud.r-project.org")
library(googlesheets4)
#library(optparse)

# Look for the sa argument
# option_list <- list(optparse::make_option(c("--sa"), type = "character", default = NULL))
# service_account <- parse_args(OptionParser(option_list = option_list))$sa

gs4_deauth()

# Get the JSON file name
json_file <- grep(".json$", list.files(), value = TRUE)

# Verify we found exactly one file
if (length(json_file) != 1) {
  stop("Expected exactly one JSON file, found: ", length(json_file))
}

options(gargle_verbosity = "debug")

endpoint <- httr::oauth_endpoints("google")
secrets <- jsonlite::fromJSON(json_file)
scope <- "https://www.googleapis.com/auth/spreadsheets"

my_token <- oauth_service_token(endpoint, secrets, scope)

t <- gargle::credentials_byo_oauth2(token = my_token)

#t <- gargle::credentials_gce(scopes = "https://www.googleapis.com/auth/spreadsheets")

is.null(t)

# gs4_auth(
#   token =
#     gargle::credentials_service_account(
#       path = grep(".json$", list.files(), value = TRUE),
#       scopes = "https://www.googleapis.com/auth/spreadsheets"
#     )
# )
