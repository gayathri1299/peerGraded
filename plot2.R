cols1 <- c("maroon", "yellow", "orange", "Aquamarine")
barplot(height=baltYrEmm$Emissions/1000, names.arg=baltYrEmm$year, xlab="Year", ylab=expression('Aggregated Emission'),main=expression('Baltimore Aggregated PM'[2.5]*' Emmissions by Year'), col = cols1)
# Baltimore yearly emmisisons data
baltYrTypEmm <- aggregate(Emissions ~ year+ type, baltdata, sum)