# Cyclistic Bike-Share: Google Data Analytics Capstone Project

![Cyclistic](https://user-images.githubusercontent.com/63750425/224968385-9521ab10-d278-4595-a829-08b4f1c645be.png)

This repo contains the Google Data Analytics Capstone - Case Study 1 project, which is the final stage of the Google Data Analytics course on coursera. The description of the code and analysis is posted on my Kaggle account. I hope this repo will help everyone who wants to do this project. thanks.

## Introduction and Scenerio

**Google Data Analytics Capstone Project: How Does a Bike-Share Navigate Speedy Success?**

The Cyclistic case study is part of the Google Professional Data Analytics Certification. In this case study, I play the role of a junior data analyst at Cyclistic. I will follow basic data analysis process steps to solve core business problems.
I'm a junior data analyst working on the marketing analyst team at Cyclistic, a bike-sharing company in Chicago. The marketing manager believes the company's future success will depend on maximizing annual memberships. Therefore, as a marketing team, he wants to understand how cyclistic bikes are used in different ways according to membership types. Here, my task will be to review and analyze 12 months of data, to obtain insights from this data through certain visualizations and present it to the team. I have analyzed very specific data and tried to support these insights with clear graphs so that my suggestions can be taken into account.

**About the Company**
In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members. Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs. Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.
In this case-study, I will be drawing upon the 6 phases of the analysis process, namely Ask, Prepare, Process, Analyze, Share and Act.

I downloaded the datasets from the link below.

[The previous 12 months of Cyclistic trip data](https://divvy-tripdata.s3.amazonaws.com/index.html)

## Phase 1 – ASK 

Three questions will guide the future marketing program: 
1.	How do annual members and casual riders use Cyclistic bikes differently? 
2.	Why would casual riders buy Cyclistic annual memberships? 
3.	How can Cyclistic use digital media to influence casual riders to become members?

**1.1	Business Task**
Analyze data to gain insights into how users use Cyclistic's bikes by membership type and to identify trends based on Cyclistic's marketing strategy. 

**1.2	Key Stakeholders**
•	Cyclistic: A bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also offering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use them to commute to work each day.

•	Lily Moreno: The director of marketing and your manager. Moreno is responsible for the development of campaigns and initiatives to promote the bike-share program. These may include email, social media, and other channels.

•	Cyclistic marketing analytics team: A team of data analysts who are responsible for collecting, analyzing, and reporting data that helps guide Cyclistic marketing strategy. You joined this team six months ago and have been busy learning about Cyclistic’s mission and business goals — as well as how you, as a junior data analyst, can help Cyclistic achieve them.

•	Cyclistic executive team: The notoriously detail-oriented executive team will decide whether to approve the recommended marketing program.

**1.3	A clear statement of the business task**
The main purpose in this job role is to analyze Cyclistic data and gain insights for marketing trends based on user orientation and driving data and share them with key stakeholders. Specific and clear visualizations should be made and ready for sharing so that all stakeholders can understand the data.

## Phase 2 – PREPARE

Guiding Questions

Q1: Where is your data located?

A1: The data is available at the address I gave the link above. The data I have downloaded from this address have been handled in a way to cover 12 months, January 2022 and December 2022.

You can also find data from my personal [Kaggle](?) account.
Q2: How is the data organized?

A2: Many tools and programs can be used to edit data. I chose the R programming language for my work. In the R programming language, I combined 12 months of data into a single data frame, then added the necessary columns and removed the columns that would not be useful to us in our analysis.

Q3: Are there issues with bias or credibility in this data? Does your data ROCCC? 

A3: Yes, the data appears to be ROCCC. There don't seem to be any issues with bias or credibility in the data, as it consists of trip data from Cyclistic's own bike riders and is made available under license by Motivate International Inc. Additionally, the data appears to be reliable, original, comprehensive, current, and cited, meeting the criteria for ROCCC.

Q4: How are you addressing licensing, privacy, security, and accessibility?

A4: It is important to adhere to any licensing restrictions when using publicly available data. As mentioned in the prompt, the data is made available under a specific license, and users should review and comply with any requirements or restrictions specified by the license. To address privacy and security concerns, any personally identifiable information should be removed or obscured from the data. Additionally, it is important to ensure that the data is accessible and usable by anyone who needs to work with it.

Q5: How did you verify the data’s integrity?

A5: To verify the integrity of the data, it is important to check the data for any inconsistencies or errors. This may include checking for missing or incorrect data, identifying outliers or unusual values, or comparing data with other sources to ensure it is correct. I carried out this analysis with simple and fast methods in R language and as a result I checked that the data is consistent. I identified missing and incorrect data types, removed them and made them ready for analysis. 

Q6: How does it help you answer your question?

A6: Cyclistic trip data helps answer the question of how annual members and casual cyclists use the bike share program differently. Analyzing the patterns in the data, my work to identify usage differences between the two groups and to understand how each group uses the bikes has helped me come up with answers that are very effective in answering marketing strategy questions.

Q7: Are there any problems with the data?

A7: I found that there are some deficiencies and incorrect data types in the data. I solved them using methods in R language and made them suitable for analysis. 

## Phase 3 – PROCESS

Guiding Questions:

Q1: What tools are you choosing and why?

A1: I used the R programming language to process the data and make it ready for analysis. Thanks to its simple syntax and fast usage, I both consolidated my knowledge and analyzed and organized the data. I visualized the data I edited in the R language in the Tableau program. Thus, I developed my skills in both programs.

Q2: Have you ensured your data’s integrity?

A2: Yes, I managed to ensure the integrity of the data. I added 12 months of data to a single data frame, making it ready for a year's analysis.

Q3:  Have you documented your cleaning process so you can review and share those results?

A3: Yes, I have documented these operations and analysis process using R markdown. You can reach the markdown in my github account via this link.

## Phase 4 – Analyze

Q1: How should you organize your data to perform analysis on it?

A1: First of all, the driving data had to be grouped according to user types, hours, time zones of the day, days of the week, months and seasons, and I organized the data to be that way. As can be seen in the R markdown document that I just shared during the process phase, time columns were created and the driving data of the users were classified according to the time type. In addition to examining the average and total driving times of the user types, the driving time lengths were also extracted from the data in the data frame, such as the end and start time, and included in the analysis, and important insights were obtained.

You can examine the analysis I made in the R programming language in the [Analysis folder](?) in this repo.

## Phase 5 - SHARE

Of course, after analyzing this data, visualizing it and sharing it with stakeholders is a very important step. For this reason, you can look at the visualizations we obtained from the Tableau program, where I created explanatory graphics that everyone can understand. You can click this link to check out my [Tableau account](https://public.tableau.com/views/GoogleDataAnalyticsCapstoneStudyCase1/Averageridingtimesperseasonbymembertype?:language=en-US&:display_count=n&:origin=viz_share_link).

## Phase 6 – ACT

Final Conclusion and Recommendation
My answers to the three questions that will guide the future marketing program are as follows, based on my analysis and visualizations:

**Q1: How do annual members and casual riders use Cyclistic bikes differently?**

A1: 
•	Our annual members use the Cyclistic bike sharing service frequently and consistently in terms of total ride and ride time. It has shown that users prefer bicycles to other types of vehicles on issues such as cost, environmental pollution and traffic to use for certain jobs. 

•	On the other hand, casual riders do not use the bike frequently and consistently. Therefore, it is understandable that they do not prefer to switch to the annual membership plan. Despite this, casual riders like to cycle inconsistently compared to annual members, with long rides on weekends that we think are for fun and relaxation.

•	Annual members are very likely to opt for the annual membership plan, as their daily and weekly routines are set. The fact that users have school, work and other activities at certain time intervals seems to push them to use a certain means of transportation in a planned way. Due to this planned use, annual membership seems quite reasonable to meet the needs of such members.

•	As a result, usage differences give us information about drivers' tendencies and behaviors. These differences vary according to the drivers' behaviors and perceptions of use.

**Q2: Why would casual riders buy Cyclistic annual memberships?**

A2: In the light of the analysis and visualizations I have made, the suggestions I can give to the marketing team on how casual riders can be converted into annual members are as follows:
•	The advertising and marketing strategy to get casual riders to get their annual subscription plan should be around very specific issues. These issues are the cost of cycling, health, environmental health, traffic, etc. It should be noted that the benefits in these subjects are more than other tools.

•	In the light of the analyzes I have made; it has been observed that the reason for the annual members to use the service stems from their instincts to stick to their planned and routines in their lives. For this reason, mobile applications can be developed to encourage casual riders to move on to a planned life, and advertisements can be made for users to create routines at certain times of the day and use Cyclistic bicycles as a means of travel to these routines.

•	It is a known fact that time and money are very important in today's societies. For this reason, the transition to the annual plan can be encouraged by reducing the costs of the annual membership plans and by making special campaigns, sweepstakes, coupons and discounts for people who switch to the annual membership plan. Thanks to the agreements to be made with different establishments (food restaurants, cafes, book stores, entertainment centers, etc.), a system can be developed in which users can use the points they earn according to the number and frequency of driving in these establishments.

•	A system where driving time and number can be tracked would be very useful. Thanks to the application to be integrated into smart devices, it can be connected to other mobile applications such as Google fit and Apple Health, and the data can be created in the minds of users to create the perception that they are doing an activity to protect their health with their daily driving goals.

**Q3: How can Cyclistic use digital media to influence casual riders to become members?**

A3: 
•	The impact of social media on marketing and campaign processes in recent times is an undeniable fact. For this reason, encouraging campaigns can be organized using social media platforms. YouTube, Facebook, Twitter, TikTok etc. With the community and activity groups to be created on social media platforms, it can be ensured that members can share in these groups. In these community and group events where existing members will register, activities such as cycling and collective trips to certain points can be organized and shared on social media accounts. Especially with the planned activities to be held on social media, effective communication can be ensured between our current users and this communication can be met on social media and attract new users to our structure.

•	Various agreements are made with the faces known to the public from social media phenomena, and the sharing of these people about the Cyclistic company in their accounts can cause a significant increase in the number of members.

•	Especially in media sharing tools such as YouTube and TikTok, agreements with influencers who have a channel on travel will be very effective, and the owners of these channels will use their Cyclistic bikes on their trips and make special coupons and discount draws for people watching their videos. Historical, cultural, touristic, etc. Collective trips to places can be organized through these channels and shared on social media, thus attracting the attention of more users.
