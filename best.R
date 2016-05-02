

best<-function(state, outcome) {
        ##read outcome data (outcome-of-care-measures.csv)
        ##Check state and outcome for validity
        ##Return Hospital name with lowest 30-day death rate
        index <- ifelse(outcome == "heart attack", 11, ifelse(outcome == "heart failure", 17, 23))
        
                        ifelse(outcome == "heart failure", 17,
        #Read and coerce our dataset while suppressing warnings and removing NA's.
        
        #Invalid state input or no observations
        if (!state %in% names(states)) { 
                stop("invalid state")
        }
        
        #Slice our data by the given state and sort it by outcome and hospital name.
        slice <- slice[order(slice[,index], na.last=TRUE),2]
        slice <- na.omit(slice)
        
        #Get hospital name with the lowest 30-day mortality rate.
        slice[1]
}