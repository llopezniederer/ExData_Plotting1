# Exploratory Data Analysis Course Project
# 12-Apr-2015
# Author: LLN

# plot1.R
# Script to generate Global Active Power histogram

# Generate histogram from data$Global_active_power column
# Set color to "red"
# Set main title and x-axis labels appropriately
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

# Copy histogram to png graphics device
dev.copy(png, file = "plot1.png", width=480, height=480, units="px")
dev.off()

# End of script
