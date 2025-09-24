## clean out any previous work
#listing files from the pipeline
outputs <- c("./session-03-automation/lotr_project/data/raw/lotr_raw.tsv",
             "./session-03-automation/lotr_project/data/processed/lotr_clean.tsv",
             "./session-03-automation/lotr_project/outputs/tables/lotr_summary_table.tsv",
             list.files(path =  "./session-03-automation/lotr_project/outputs/figures/",pattern = "*.png$", full.names = TRUE)) #finding everything that looks like.png
file.remove(outputs)

## run scripts
source("./session-03-automation/lotr_project/scripts/00-packages.R")
source("./session-03-automation/lotr_project/scripts/01-download-data.R")
source("./session-03-automation/lotr_project/scripts/02-process-data.R")
source("./session-03-automation/lotr_project/scripts/03-plot.R")
source("./session-03-automation/lotr_project/scripts/04-table.R")