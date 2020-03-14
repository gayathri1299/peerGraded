setwd("C:\Users\Admin\Documents\RRRRR\peerGraded")
getwd()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip", destfile = "FNEI_data.csv")
# Call Packages dplyr, bindrcpp & ggplot2
library(dplyr)
library(bindrcpp)
library(ggplot2)
NEI_data <- readRDS("summarySCC_PM25.rds")
# head data
head(NEI_data)
# string data
str(NEI_data)
# dimension data
dim(NEI_data)
SCC_data <- readRDS("Source_Classification_Code.rds")
# head data
head(SCC_data) 
# string data
str(SCC_data)
# dimension data
dim(SCC_data)
yearly_emmissions <- aggregate(Emissions ~ year, NEI_data, sum)