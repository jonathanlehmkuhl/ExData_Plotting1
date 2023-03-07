# including the code for reading and preprocessing the data set
source("preprocessing.R")

# creating a histogram and storing it in "plot1.png"
# opening graphics device
png(file = "plot1.png")
# choosing margin
par(mar = c(5,4,2,1))

# creating histogram with appropriate color, labels and title
hist(hpc_sub$Global_active_power, col = "red",
    xlab = "Global Active Power (kilowatts)", main = "Global Active Power")

# closing graphics device
dev.off()