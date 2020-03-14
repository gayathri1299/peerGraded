chart <- ggplot(baltYrTypEmm, aes(factor(year), Emissions))
chart <- chart + geom_bar(stat="identity") +
  xlab("year") +
  ylab(expression('Total Emissions')) +
  ggtitle('Baltimore Motor Vehicle PM[2.5] Emissions From 1999 to 2008')
print(chart)
