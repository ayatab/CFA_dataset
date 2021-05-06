library('dplyr')

df <- read.csv('Dataset - Sheet1.csv')

inc_filter <- df %>%
  select(Company) %>%
  filter(grepl('Inc', Company)) %>%
  distinct(Company)

only_company <- df %>%
  select(Company) %>%
  distinct(Company) %>% 
  arrange(Company)

data_skill <- df %>%
  select(Position, Qualification) %>%
  filter(grepl('data', Qualification))

bachelor_qualification <- df %>%
  select(Position, Qualification) %>%
  filter(grepl('Bachelor', Qualification))
