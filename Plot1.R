 data<-read.table("household_power_consumption.txt", sep=";", header =T, 
                  colClasses=c('character', 'character', 'numeric', 'numeric', 'numeric', 'numeric','numeric', 'numeric', 'numeric'),
                  na.strings='?')
  subdata<-data[data$Date %in% c("1/2/2007","2/2/2007"),]                 
 
 #ight = 480, width = 480)
 hist(subdata$Global_active_power, col ='red', xlab ='Global Active Power (kilowatts)', main = 'Global Active Power')
 
 # Close png file
 dev.off()
