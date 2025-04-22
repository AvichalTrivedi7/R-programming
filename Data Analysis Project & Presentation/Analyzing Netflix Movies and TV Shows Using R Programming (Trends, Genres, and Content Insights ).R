# Load necessary libraries (Install using install.packages() if not already there)
library(dplyr)
library(ggplot2) 
library(readr)
library(tidyr)  # For separate_rows()

# Step 1: Read the dataset
netflix_data <- read_csv("C:/Users/HP/Documents/College 1st Year (Repositories)/R programming/Data Analysis Project & Presentation/netflix_titles.csv")  # Make sure the path is correct

# Step 2: View the first few rows
head(netflix_data)

# Step 3: Clean data - remove NA rows in important columns
netflix_clean <- netflix_data %>%
  filter(!is.na(type), !is.na(release_year), !is.na(country), !is.na(duration), !is.na(listed_in))

# Step 4: Content type distribution
content_type_count <- netflix_clean %>%
  group_by(type) %>%
  summarise(Count = n())

ggplot(content_type_count, aes(x = type, y = Count, fill = type)) +
  geom_bar(stat = "identity") +
  ggtitle("Content Type Distribution on Netflix") +
  theme_minimal()

# Step 5: Release trend over the years
release_trend <- netflix_clean %>%
  group_by(release_year) %>%
  summarise(Count = n())

ggplot(release_trend, aes(x = release_year, y = Count)) +
  geom_line(color = "blue", size = 1.2) +
  ggtitle("Netflix Content Released Over the Years") +
  xlab("Release Year") + ylab("Number of Titles") +
  theme_minimal()

# Step 6: Top 10 genres (categories)
top_genres <- netflix_clean %>%
  separate_rows(listed_in, sep = ", ") %>%
  group_by(listed_in) %>%
  summarise(Count = n()) %>%
  arrange(desc(Count)) %>%
  head(10)

ggplot(top_genres, aes(x = reorder(listed_in, Count), y = Count, fill = listed_in)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  ggtitle("Top 10 Netflix Genres") +
  theme_minimal() +
  theme(legend.position = "none")

# Step 7: Top 10 countries producing Netflix content
top_countries <- netflix_clean %>%
  separate_rows(country, sep = ", ") %>%
  group_by(country) %>%
  summarise(Count = n()) %>%
  arrange(desc(Count)) %>%
  head(10)

ggplot(top_countries, aes(x = reorder(country, Count), y = Count, fill = country)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  ggtitle("Top 10 Countries Producing Netflix Content") +
  theme_minimal() +
  theme(legend.position = "none")

# Step 8: Movie duration distribution
movie_duration <- netflix_clean %>%
  filter(type == "Movie") %>%
  mutate(duration_minutes = as.numeric(gsub(" min", "", duration)))

ggplot(movie_duration, aes(x = duration_minutes)) +
  geom_histogram(binwidth = 10, fill = "darkred", color = "white") +
  ggtitle("Distribution of Movie Durations") +
  xlab("Duration (minutes)") + ylab("Number of Movies") +
  theme_minimal()

# Step 9: User-defined function — Average content per year
average_content_per_year <- function(df) {
  df %>%
    group_by(release_year) %>%
    summarise(count = n()) %>%
    summarise(avg = mean(count))
}

print(average_content_per_year(netflix_clean))

