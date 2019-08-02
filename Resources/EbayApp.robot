*** Settings ***




*** Keywords ***
Start
    [Arguments]  ${Site}
    Open Browser  ${Site.URL}  ${Site.Browser}
    Maximize Browser Window



Vehicle Search
    Click Link  //a[@href="https://www.ebay.com/b/Auto-Parts-and-Vehicles/6000/bn_1865334"]
    Click Link  xpath=(//a[@href="https://www.ebay.com/b/Car-Truck-Parts/6030/bn_562630"])[2]
    Click Element  //div[@class="b-visualnav__title"]
    Click Element  //div[@class="b-visualnav__title"]
    Click Link  eBay Logo


Sneaker Search
    Input Text  //input[@name="_nkw"]  nike vapor max
    Click Element  //input[@id="gh-btn"]
    Click Element  xpath=(//h3[@class="s-item__title s-item__title--has-tags"])[4]
    Click Link  //a[@id="binBtn_btn"]
    sleep  3s
    #Dynamic Variables
    Select From List By Value    //select[@name="US Shoe Size (Men's)"]  3
    Click Link    //a[@id="binBtn_btn"]
    Click Element    //button[@id="sbin-signin-btn"]
    Click Link  eBay Logo