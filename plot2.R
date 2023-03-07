# including the code for reading and preprocessing the data set
source("preprocessing.R")

# creating a line plot and storing it in "plot2.png"
# opening graphics device
png(file = "plot2.png")
# choosing margin
par(mar = c(5,4,2,1))

# creating line plot with appropriate labels
with(hpc_sub, plot(Time, Global_active_power, type = "l",
                   xlab = "", ylab = "Global Active Power (kilowatts)"))

# closing graphics device
dev.off()