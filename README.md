# The-Finanical-Py
This is a mini project for week 13, demonstrating application of the ETL process.

Since the beginning of the millennium we have seen two recessions, the financial crash (2008) and the Covid-19 outbreak (2020). Both had a massive effect on the way we live and our economy, we are interested to compare how the two recessions have affected the housing prices and sales volume in the UK.

https://assets.site-static.com/userFiles/2723/image/uploads/agent-1/Blog%20Post%20Pictures/market%20forecast.jpg![image](https://user-images.githubusercontent.com/93007493/152636344-91ee37db-6e0d-44fe-915b-3a45d6a96d76.png)


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




