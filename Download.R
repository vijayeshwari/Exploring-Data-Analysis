setwd("C:/Users/Veera raju/Documents/Exploring-Data-Analysis")
if(!file.exists("./dataStore")){dir.create("./dataStore")}
get.data.project <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
download.file(get.data.project,destfile="./dataStore/exdata-data-NEI_data.zip",method="auto")
check.url <- file(get.data.project,"r")
if (!isOpen(check.url)) {
  stop(paste("There's a problem with the data:",geterrmessage()))}
zipfile.data = "exdata-data-NEI_data.zip"
if(!file.exists(zipfile.data)) {        
  # download.file(get.data.project,zipfile.data)
  unzip(zipfile="./dataStore/exdata-data-NEI_data.zip",exdir="./dataStore")
} 
path_rf <- file.path("./dataStore" , "exdata-data-NEI_data")
files<-list.files(path_rf, recursive=TRUE)
files
NEI <- readRDS("C:/Users/Veera raju/Documents/Exploring-Data-Analysis/summarySCC_PM25.rds")
SCC <- readRDS("C:/Users/Veera raju/Documents/Exploring-Data-Analysis/Source_Classification_Code.rds")
number.add.width<-800 
number.add.height<-800 
require(dplyr)
