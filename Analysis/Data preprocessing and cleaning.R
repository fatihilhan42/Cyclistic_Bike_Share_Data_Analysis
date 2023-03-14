#--------------------------------------------CREATING CSV FILE FOR TABLEAU------------------------------------------

#load libraries 
library(tidyverse) #calculations
library(lubridate) #dates 
library(hms) #time
library(data.table) #exporting data frame


#load original .csv files, a years worth of data from January 2022 to December 2022
jan01_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202201-divvy-tripdata.csv")
feb02_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202202-divvy-tripdata.csv")
mar03_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202203-divvy-tripdata.csv")
apr04_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202204-divvy-tripdata.csv")
may05_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202205-divvy-tripdata.csv")
jun06_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202206-divvy-tripdata.csv")
jul07_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202207-divvy-tripdata.csv")
aug08_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202208-divvy-tripdata.csv")
sep09_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202209-divvy-publictripdata.csv")
oct10_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202210-divvy-tripdata.csv")
nov11_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202211-divvy-tripdata.csv")
dec12_df <- read.csv("C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/202212-divvy-tripdata.csv")


#merge all of the data frames into one year view
Cyclistic_df <- rbind(jan01_df,feb02_df,mar03_df,apr04_df,may05_df,jun06_df,jul07_df,aug08_df,sep09_df,oct10_df,nov11_df,dec12_df)


#remove individual month data frames to clear up space in the environment
remove(jan01_df,feb02_df,mar03_df,apr04_df,may05_df,jun06_df,jul07_df,aug08_df,sep09_df,oct10_df,nov11_df,dec12_df)

#create new data frame to contain new columns
Cyclistic_date <- Cyclistic_df

#calculate ride length by subtracting ended_at time from started_at time and converted it to minutes
Cyclistic_date$ride_length <- difftime(Cyclistic_df$ended_at, Cyclistic_df$started_at, units = "mins")
Cyclistic_date$ride_length <- round(Cyclistic_date$ride_length, digits =1)

#create columns for: day of week, month, day, year, time, hour 
Cyclistic_date$date <- as.Date(Cyclistic_date$started_at) #default format is yyyy-mm-dd, use start date
Cyclistic_date$day_of_week <- wday(Cyclistic_df$started_at) #calculate the day of week
Cyclistic_date$day_of_week <- format(as.Date(Cyclistic_date$date), "%A") #create column for day of week
Cyclistic_date$month <- format(as.Date(Cyclistic_date$date), "%m") #create column for month
Cyclistic_date$day <- format(as.Date(Cyclistic_date$date), "%d") #create column for day
Cyclistic_date$year <- format(as.Date(Cyclistic_date$date), "%Y") #create column for year
Cyclistic_date$time <- format(as.Date(Cyclistic_date$started_at), "%H:%M:%S") #format time as HH:MM:SS
Cyclistic_date$time <- format(as.POSIXct(Cyclistic_date$started_at), format = "%H:%M:%S")
#Here are POSIXct functions to handle objects of the "POSIXlt" and "POSIXct" classes that represent calendar dates and times. 
#Thus, we can assign the time data to the time column.
Cyclistic_date$hour <- format(as.POSIXct(Cyclistic_date$started_at), format = "%H") #create new column for hour

#create column for different seasons: Spring, Summer, Fall, Winter
Cyclistic_date <- Cyclistic_date %>% mutate(season = 
                                              case_when(month == "03" ~ "Spring",
                                                        month == "04" ~ "Spring",
                                                        month == "05" ~ "Spring",
                                                        month == "06"  ~ "Summer",
                                                        month == "07"  ~ "Summer",
                                                        month == "08"  ~ "Summer",
                                                        month == "09" ~ "Fall",
                                                        month == "10" ~ "Fall",
                                                        month == "11" ~ "Fall",
                                                        month == "12" ~ "Winter",
                                                        month == "01" ~ "Winter",
                                                        month == "02" ~ "Winter")
                                            
)

#create column for different time_of_day: Night, Morning, Afternoon, Evening
Cyclistic_date <- Cyclistic_date %>% mutate(time_of_day = 
                                              case_when(hour == "00" ~ "Night",
                                                        hour == "01" ~ "Night",
                                                        hour == "02" ~ "Night",
                                                        hour == "03" ~ "Night",
                                                        hour == "04" ~ "Night",
                                                        hour == "05" ~ "Night",
                                                        hour == "06" ~ "Morning",
                                                        hour == "07" ~ "Morning",
                                                        hour == "08" ~ "Morning",
                                                        hour == "09" ~ "Morning",
                                                        hour == "10" ~ "Morning",
                                                        hour == "11" ~ "Morning",
                                                        hour == "12" ~ "Afternoon",
                                                        hour == "13" ~ "Afternoon",
                                                        hour == "14" ~ "Afternoon",
                                                        hour == "15" ~ "Afternoon",
                                                        hour == "16" ~ "Afternoon",
                                                        hour == "17" ~ "Afternoon",
                                                        hour == "18" ~ "Evening",
                                                        hour == "19" ~ "Evening",
                                                        hour == "20" ~ "Evening",
                                                        hour == "21" ~ "Evening",
                                                        hour == "22" ~ "Evening",
                                                        hour == "23" ~ "Evening")
)

#create a column for the month using the full month name
Cyclistic_date <- Cyclistic_date %>% mutate(month = 
                                              case_when(month == "01" ~ "January",
                                                        month == "02" ~ "February",
                                                        month == "03" ~ "March",
                                                        month == "04" ~ "April",
                                                        month == "05" ~ "May",
                                                        month == "06" ~ "June",
                                                        month == "07" ~ "July",
                                                        month == "08" ~ "August",
                                                        month == "09" ~ "September",
                                                        month == "10" ~ "October",
                                                        month == "11" ~ "November",
                                                        month == "12" ~ "December")
)

str(Cyclistic_date)

#clean the data 
Cyclistic_date <- na.omit(Cyclistic_date) #remove rows with NA values 
Cyclistic_date <- distinct(Cyclistic_date) #remove duplicate rows
Cyclistic_date <- Cyclistic_date[!(Cyclistic_date$ride_length <=0),] #remove where ride_length is 0 or negative
Cyclistic_date <- Cyclistic_date %>% #remove columns not needed: ride_id, start_station_id, end_station_id, start_lat, start_long, end_lat, end_lng
  select(-c(ride_id, start_station_id, end_station_id, start_lat, start_lng,end_lat,end_lng))


#view the final data 
View(Cyclistic_date)

#created a new dataframe to use in tableau
Cyclistic_tableau <- Cyclistic_date

#clean the data 
Cyclistic_tableau <- Cyclistic_tableau %>% #remove columns not needed: start_station_name, end_station_name, time, started_at, ended_at
  select(-c(start_station_name, end_station_name, time, started_at, ended_at))

#download the new data as a .csv file
fwrite(Cyclistic_tableau, "C:/Users/Casper/Desktop/Kurslar/Google Data Analytics/8.course/Case Study 1 (Cyclistic trip data 12 Months)/CSV/cyclistic_data.csv")
