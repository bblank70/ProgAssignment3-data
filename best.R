

best<-function(state, outcome) {
        ##read hospital outcome(outcome-of-care-measures.csv)
        ##Check state and outcome for validity
        ##Return Hospital name with lowest 30-day death rate
        index <- ifelse(outcome == "heart attack", 11, 
                        ifelse(outcome == "heart failure", 17,
                               ifelse(outcome == "pneumonia",23,
                                      stop("invalid outcome"))))
        #Read and coerce our dataset while suppressing warnings and removing NA's.
        hosp <- read.csv("outcome-of-care-measures.csv", colClasses="character")
        hosp[,index] <- suppressWarnings(as.numeric(hosp[,index]))
        hosp <- na.omit(hosp)
        
        #Invalid state input or no observations
        states <- table(hosp$State)
        if (!state %in% names(states)) { 
                stop("invalid state")
        }
        
        #Slice our data by the given state and sort it by outcome and hospital name.
        slice <- subset(hosp, State==state)
        slice <- slice[order(slice[,index], na.last=TRUE),2]
        slice <- na.omit(slice)
        
        #Get hospital name with the lowest 30-day mortality rate.
        slice[1]
}
