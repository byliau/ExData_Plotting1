setwd("C:\\Users\\Bee\\Documents\\Coursera\\01_Data_Science\\04_Exploratory_Data_Analysis\\02_Assignments\\01_Week_1\\01_Data")

data_full <- read.table("household_power_consumption.txt",sep=";",header = TRUE, na.string = "?")
head (data_full)
data_full$Date <-as.Date(data_full$Date, format="%d/%m/%Y")
data1 <- subset (data_full,Date >="2007-02-01" & Date <= "2007-02-02")
hist(data1$Global_active_power, xlab="Global Active Power (kilowatts)", ylab="Frequency", 
    col="Red", main="Global Active Power")

dev.copy(png, "plot1.png", width=480, height=480)
dev.off()
