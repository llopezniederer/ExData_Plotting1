# Exploratory Data Analysis Course Project
# 25-Jan-2015
# Author: LLN

# load_data.R
# Script to read the "household_power_consumption.txt" file
# in the current working directory and
# select the subset of rows corresponding to dates 2007-02-01 and 2007-02-02

# Read file into data frame
col.types <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
data.all <- read.csv("household_power_consumption.txt", header = TRUE, sep=";", na.strings="?", colClasses=col.types)

# Select the rows corresponding to data from 1/Feb/2007 and 2/Feb/2007
data <- subset(data.all, data.all$Date=="1/2/2007" | data.all$Date=="2/2/2007")
rm(data.all)

# Add a column with the concatenated character date & time
data$datetime <- paste(data$Date, data$Time)

# Add a POSIXlt date/time column named "dt"
data$dt <- strptime(data$datetime, "%d/%m/%Y %H:%M:%S")