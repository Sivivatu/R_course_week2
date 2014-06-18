complete <- function(directory, id = 1:332) {
        fileset <- dir(directory, full.names = TRUE) #list of files
        compset <- data.frame()
        nobs <- data.frame()
        spec_data <- data.frame() #empty data frames created
        for(i in id){
                spec_data <- read.csv(fileset[i])
                compset <- complete.cases(spec_data)
                nobs <- rbind(nobs, c(i, sum(compset)))
                }
        colnames(nobs) <- c("id", "nobs")
        nobs
}