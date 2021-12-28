
# Library
library(shiny)
library(shinydashboard)
library(shinyWidgets)
library(shinyalert)
library(shinyFiles)
library(dashboardthemes)
library(shinycssloaders)
library(rintrojs)
library(shinyjs)
library(textclean)
library(textshape)
library(tm)
library(katadasaR)
library(RVerbalExpressions)
library(tokenizers)
library(stringr)
library(rtweet)
library(highcharter)
library(caret)
library(e1071)
library(yardstick)
library(scales)
library(lubridate)
library(writexl)
library(readxl)
library(DT)
library(dplyr)

# Call token for twitter API authentication
# WARNING! the API token will not be provided. Please use your own API token.
# The template will be provided (After filling up the tempalate, change the
# name of the API_token_template.R to API_token.R)
source("API_token.R")

# Load Machine Learning Model
naive_model <- readRDS("RDS/naive_model.RDS")

# Dictionary
spell.lex <- read.csv("data/colloquial-indonesian-lexicon.csv")
stopword <- readLines("http://static.hikaruyuuki.com/wp-content/uploads/stopword_list_tala.txt")

# Accident data in Indonesia 2008-2019
data_sensus <- as.data.frame(readxl::read_xlsx("data/Sensus kecelakaan 2008-2019.xlsx"))
sensus <- as.data.frame(t(data_sensus[-1]))
colnames(sensus) <- data_sensus[,1]

sensus <- sensus %>% 
  tibble::rownames_to_column(var = "tahun") %>% 
  janitor::clean_names() %>% 
  mutate_all(as.integer) %>% 
  mutate(jumlah_kecelakaan_chr = number(jumlah_kecelakaan, accuracy = 1, big.mark = ","),
         korban_mati_orang_chr = number(korban_mati_orang, accuracy = 1, big.mark = ","),
         luka_berat_orang_chr = number(luka_berat_orang, accuracy = 1, big.mark = ","),
         luka_ringan_orang_chr = number(luka_ringan_orang, accuracy = 1, big.mark = ","),
         kerugian_materi_juta_rupiah_chr = number(kerugian_materi_juta_rupiah, accuracy = 1, big.mark = ","))

# Function to process text to produce keywords
obtain_prediction <- function(tweeted_text) {
  
  # Processed twetted text
  tweeted_text <- tweeted_text %>% 
    tolower() %>% # Lower any capital letter
    replace_url() %>%
    replace_hash() %>%
    replace_tag() %>% 
    removeNumbers() %>%
    str_replace_all(rx_punctuation(), " ") %>% # Replace punctuation with white space
    str_replace_all("[^\u0001-\u007F]+|<U\\+\\w+>", " ") %>% # Replace non-ASCII character with white space
    str_replace_all("\n", " ") %>% # Replace HTML new line character with white space
    replace_emoji() %>%
    removeWords(lexicon::hash_emojis$y) %>% # Remove words result from replacing emoji with words describing the emoji
    str_squish() %>%  # Remove extra white space
    replace_internet_slang(slang = paste0("\\b", spell.lex$slang, "\\b"),
                           replacement = spell.lex$formal,
                           ignore.case = T)
  
  # Stemming the processed text
  stemming <- function(x){
    paste(lapply(x,katadasar),collapse = " ")}
  tweeted_text <- lapply(tokenize_words(tweeted_text[]), stemming)
  
  # Tokenized the stemmed text
  tweeted_text <- tokenize_words(tweeted_text, stopwords = stopword)
  
  # Convert tokenized words to Documented Term Matrix
  corpus <- VCorpus(VectorSource(tweeted_text))
  dtm <- DocumentTermMatrix(corpus)

  # Convert numbers of appearance of words that is bigger than 1 to 1
  bernoulli_conv <- function(x){
    x <- as.factor(ifelse(x > 0, 1, 0))
    return(x)
  }
  tweeted_text <- apply(dtm, MARGIN = 2, FUN = bernoulli_conv)

  # Prediction
  pred <- predict(object = naive_model,
          newdata = tweeted_text,
          type = "raw")
  
  # Return pred as result of this funtion
  return(pred)
}