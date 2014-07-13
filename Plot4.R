subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]                 

# Get the date
subdata$datetime<-strptime(paste(subdata$Date,subdata$Time),"%d/%m/%Y %H:%M:%S")

# Open plot4.png
png("plot4.png", height = 480, width = 480)

# multiplot
par(mfrow=c(2,2))
# Global Active Power plot
plot(subdata$datetime,subdata$Global_active_power,xlab ="", ylab = "Global Active Power", type ="l")

# Voltage plot
plot(subdata$datetime,subdata$Voltage,xlab ="datetime", ylab = "Voltage", type ="l")
