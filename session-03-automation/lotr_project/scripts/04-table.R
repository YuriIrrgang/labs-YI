#import clean data
lotr_dat <- read_tsv("./session-03-automation/lotr_project/data/processed/lotr_clean.tsv") %>%
  
  #creating summary table 
  words_spoken_species_film <- lotr_dat %>%
    group_by(Species, Film) %>%
    summarise(
      Characters = n(),
      Words = sum(Words), 
      ungroup ()
      )
#saving table as .tsv file
write_tsv(summary_table, "./session-03-automation/lotr_project/outputs/tables/lotr_summary_table.tsv")
  