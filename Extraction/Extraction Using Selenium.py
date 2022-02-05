


from selenium import webdriver



options = webdriver.ChromeOptions()
preferences = {r"download.default_directory": "C:\\Users\\mrahi\\Desktop"} #setting up download directory
options.add_experimental_option("prefs",preferences)




driver = webdriver.Chrome(r"C:\\Users\\mrahi\\Desktop\\chromedriver.exe")
driver.get("https://www.gov.uk/government/statistical-data-sets/uk-house-price-index-data-downloads-september-2021#download-the-data")
driver.path_element(By.XPATH,"/html[@class='govuk-template show-global-bar']/body[@class='gem-c-layout-for-public govuk-template__body js-enabled']/div[@id='wrapper']/main[@id='content']/div[@class='govuk-grid-row'][3]/div[@class='govuk-grid-column-two-thirds']/div[@id='contents']/div[@class='responsive-bottom-margin'][2]/div[@class='gem-c-govspeak govuk-govspeak direction-ltr']/div[@class='govspeak']/ul[1]/li/a[@class='govuk-link']").click()




