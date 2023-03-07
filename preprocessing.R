# reading dataset
hpc <- read.csv("household_power_consumption.txt", sep = ";", na.strings = "?")

# correcting the data types
for(j in names(hpc)) {
    if(j != "Date" && j != "Time")
        hpc[[j]] <- as.numeric(hpc[[j]])
    if(j == "Date")
        hpc$Date <- as.Date(hpc$Date, "%d/%m/%Y")
    if(j == "Time")
        hpc$Time <- as.POSIXct(strptime(paste(hpc$Date, hpc$Time), "%Y-%m-%d %H:%M:%S"))
}

# choosing a subset
hpc_sub <- subset(hpc, hpc$Date >= "2007-02-01" & hpc$Date <= "2007-02-02")