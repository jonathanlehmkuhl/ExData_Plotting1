# including the code for reading and preprocessing the data set
source("preprocessing.R")

# creating four plots on one canvas and storing them in "plot4.png"#
# opening graphics device
png(file = "plot4.png")
# choosing margin and preparing the canvas to contain four plots
par(mar = c(5,4,2,1), mfrow = c(2,2))

#first plot
with(hpc_sub, plot(Time, Global_active_power, type = "l",
                   xlab = "", ylab = "Global Active Power (kilowatts)"))

#second plot
with(hpc_sub, plot(Time, Voltage, xlab = "datetime", type = "l"))

#third plot
with(hpc_sub, plot(Time, Sub_metering_1,
                   type = "n", xlab = "", ylab = "Energy sub metering"))
with(hpc_sub, points(Time, Sub_metering_1, type = "l"))
with(hpc_sub, points(Time, Sub_metering_2, type = "l", col = "red"))
with(hpc_sub, points(Time, Sub_metering_3, type = "l", col = "blue"))
legend("topright", lty = 1, col = c("black", "red", "blue"),
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

#fourth plot
with(hpc_sub, plot(Time, Global_reactive_power, xlab = "datetime", type = "l"))

# closing graphics device
dev.off()