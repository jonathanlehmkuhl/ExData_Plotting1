# including the code for reading and preprocessing the data set
source("preprocessing.R")

# creating a line plot and storing it in "plot3.png"
# opening graphics device
png(file = "plot3.png")
# choosing margin
par(mar = c(5,4,2,1))

# creating canvas with appropriate size and labels
with(hpc_sub, plot(Time, Sub_metering_1,
                   type = "n", xlab = "", ylab = "Energy sub metering"))
# adding column Sub_metering_1
with(hpc_sub, points(Time, Sub_metering_1, type = "l"))
# adding column Sub_metering_1 in red
with(hpc_sub, points(Time, Sub_metering_2, type = "l", col = "red"))
# adding column Sub_metering_1 in blue
with(hpc_sub, points(Time, Sub_metering_3, type = "l", col = "blue"))
# adding legend
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

# closing graphics device
dev.off()