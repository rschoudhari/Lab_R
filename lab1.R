# This script converts a CSV file with headers to XML or JSON, depending on
# the command line argument supplied.
#
# This script will be executed by calling:
#
#    ```
#    Rscript src/lab1.py xml/json <filename>
#    ```
#
# Output of XML and JSON should be printed to stdout.

parse_csv <- function(filename){
  # Parse a CSV file by separating it into headers and additional data.
  #
  # Args
  # filename: A path to a CSV file.
  #     
  # Returns
  # An R structure containing the headers from the csv file and the data.
  data<-read.csv(filename)
  return(data)
}

###################################
# Create your other functions here.
###################################

args <- commandArgs(trailingOnly = TRUE)
output_format<-args[1]
filename<-args[2]

data <-parse_csv(filename)
library(jsonlite)
require(jasonlite)
?jsonlite
toJSON(sample.csv)
data<-read.csv(filename)
print (jsonlite::toJSON(data))

