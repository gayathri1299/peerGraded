cols <- c("maroon", "orange", "yellow", "Aquamarine")
barplot(height=yearly_emmissions$Emissions/1000, names.arg=yearly_emmissions$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Aggregated PM'[2.5]*' Emmissions by Year'), col = cols)
# forming Baltimore data which will be NEI_data subset
baltdata <- NEI_data[NEI_data$fips=="24510", ]
# Baltimore yearly emmisisons data
baltYrEmm <- aggregate(Emissions ~ year, baltdata, sum)