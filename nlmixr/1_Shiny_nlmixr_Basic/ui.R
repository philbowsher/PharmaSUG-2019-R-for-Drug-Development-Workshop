library(DT)
library(readr)

theo_sd <- read_csv("~/PAGE-2019-Intro-R-4-Drug-Development-Workshop/nlmixr/theo_sd.csv")

fluidPage(
  titlePanel("Basic DataTable for Theophiline"),
  
  
  # Create a new Row in the UI for selectInputs
  fluidRow(
    column(4,
           selectInput("CMT",
                       "Compartment Number:",
                       c("All",
                         unique(as.character(theo_sd$CMT))))
    )
    )
  ,
  # Create a new row for the table.
  fluidRow(
    DT::dataTableOutput("table")
  )
)