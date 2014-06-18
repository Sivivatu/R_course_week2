corr <- function(directory, threshold = 0) {
        fileset <- dir(directory, full.names = TRUE) #list of files
        rawData <- data.frame()        
        corrv <- vector("numeric")
        for (i in 1:length(fileset)) {
                rawData <- rbind(read.csv(fileset[i])) #set of raw data for the correlation
                cleanData <- na.omit(rawData) #process to remove NA values
                count <- nrow(cleanData) #count of each file when NA cleaned out
                if(count>threshold) {
                        corrv <- append(corrv, cor(cleanData$sulfate, cleanData$nitrate))
                } #function to calculate the correlation when the number of rows is greater than the threashold
        }
        corrv
}