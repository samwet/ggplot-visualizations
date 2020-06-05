# ggplot2 Practice


rm(list=ls())

library(ggplot2)


View(midwest)

options(scipen=999) # Turn off Scientific Notation

# Bar Chart

# Basic Plot
plot1 <- ggplot2::ggplot(data = midwest, aes(x = state, y = poptotal)) + geom_bar(stat = "identity")
plot1

# Some Formatting
plot2 <- ggplot2::ggplot(data = midwest, aes(x = state, y = poptotal)) + 
  geom_bar(stat = "identity", fill = "orange") +
  labs(title = "Popluation of States in Midwest", x = "State Name", y = "Total Population",
       caption = "Source: Midwest Data in ggplot2") + theme_classic()
plot2

# Histogram
plot3 <- ggplot2::ggplot(data = midwest, aes(x=area)) + 
  geom_histogram(fill = "blue", col = "black", bins = 100) # blue bars and black borders
plot3

# Box Plot
plot4 = ggplot2::ggplot(data = midwest, aes(x=state, y = area, fill = state)) + 
  geom_boxplot() # colour by state
plot4


# Scatter Plot
plot5 = ggplot2::ggplot(data = midwest, aes(x=poptotal, y = popdensity, col = state)) + geom_point()
plot5

