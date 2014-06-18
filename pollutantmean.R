pollutantmean <- function(directory, pollutant, id = 1:332) {
        fileset <- dir(directory, full.names = TRUE) #list of files
        spec_data <- data.frame() #empty data frame
        for (i in id) {
                spec_data <- rbind(spec_data, read.csv(fileset[i]))
        }
        means <- mean(spec_data[, pollutant], na.rm=TRUE)
        means
}