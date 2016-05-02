best<-function(state, outcome) {
        ##read outcome data (outcome-of-care-measures.csv)
        ##Check state and outcome for validity
        ##Return Hospital name with lowest 30-day death rate
        hosp<-read.csv("C:/Users/bblank/Documents/ProgAssignment3-data/outcome-of-care-measures.csv")
        subset(hosp, state)
}