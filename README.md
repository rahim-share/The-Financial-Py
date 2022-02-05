# The-Finanical-Py
This is a mini project for week 13, demonstrating application of the ETL process.

Since the beginning of the millennium we have seen two recessions, the financial crash (2008) and the Covid-19 outbreak (2020). Both had a massive effect on the way we live and our economy, we are interested to compare how the two recessions have affected the housing prices and sales volume in the UK.

https://www.google.com/imgres?imgurl=https%3A%2F%2Fassets.site-static.com%2FuserFiles%2F2723%2Fimage%2Fuploads%2Fagent-1%2FBlog%2520Post%2520Pictures%2Fmarket%2520forecast.jpg&imgrefurl=https%3A%2F%2Fwww.thepernateam.com%2Fblog%2Fmichigan-real-estate-market-report%2F&tbnid=oOUTnjF13pddmM&vet=10CBUQxiAoBGoXChMIiOCxqaDo9QIVAAAAAB0AAAAAEA8..i&docid=LEG-YRVr8SZ3bM&w=400&h=300&itg=1&q=housing%20market&client=safari&ved=0CBUQxiAoBGoXChMIiOCxqaDo9QIVAAAAAB0AAAAAEA8![image](https://user-images.githubusercontent.com/93007493/152636305-5bff44e9-b0e5-4e04-a1d7-ba79a3d1aaa8.png)


# The process

We used data from the UK Government website and the Office for National Statistics. In order to extract the data, there were 2 different methods in use; the first  one using Selenium, a python automation module, and the second one using a module called Urllib.request.

With the extracted data it was cleaned to show only the key columns we desired and set two different date ranges for the new data frames.


Finally, cleaned data has been loaded to a relational database. Within housing_db database 3 tables have been created: - housing2008 – holding all the location details for UK regions, average prices and sales volumes for years 2008 and 2009- housing2020 – holding same respective data but for years 2020 and 6 months of 2021 - counties – holding region codes and names.
After loading data into respective tables, further queries have been performed in order to compare the prices and sales volumes at the beginning and end of each 
recession period, as well as to compare overall data between first and second time period.
During the analysis multiple views have been created to hold desired data and joined to enable comparison. Then specific data has been pulled out for the city 
of Birmingham and West Midlands regions for an example comparison.

# Results 

Analysis shows that the 2008 recession affected the housing market more significantly. Over one year the sales volumes in Birmingham decreased by 87 sales and the average house price dropped by almost 10%. The recent COVID situation didn’t affect the housing market as much. Even though the data was available only for half a year 2021 and the recorded sales volume were smaller by 120 transactions, the price increased by over 8% comparing to year 2020. Overall, comparison between the time period of the first and second recession shows a steady increase in price, the difference comes up to 30% and the sales volume increased by 44 sales.  

https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.gloucestershire.gov.uk%2Fbusiness-property-and-economy%2Fuk-community-renewal-fund%2F&psig=AOvVaw2DfGD5t4rJM1CyHjVT7OB9&ust=1644139491894000&source=images&cd=vfe&ved=0CAsQjRxqFwoTCMi5oYWf6PUCFQAAAAAdAAAAABAJ![image](https://user-images.githubusercontent.com/93007493/152636253-17be97d6-5daf-4679-88bf-9d79c95bc296.png)

https://www.google.com/imgres?imgurl=https%3A%2F%2Fcdn.ons.gov.uk%2Fassets%2Fimages%2Fons-logo%2Fv2%2Fons-logo.svg&imgrefurl=https%3A%2F%2Fwww.ons.gov.uk%2F&tbnid=iNf82Ha2svWxTM&vet=12ahUKEwjz7KiWoOj1AhX7h_0HHV8NCJIQMygAegUIARCpAQ..i&docid=8yNfRjPmnrUANM&w=800&h=156&q=office%20for%20national%20statistics&client=safari&ved=2ahUKEwjz7KiWoOj1AhX7h_0HHV8NCJIQMygAegUIARCpAQ![image](https://user-images.githubusercontent.com/93007493/152636270-d6050f3b-c882-4fcb-ba31-a5631f749e99.png)


