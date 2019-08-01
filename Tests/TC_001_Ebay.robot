*** Settings ***
Documentation  Ebay Test
Library  SeleniumLibrary


*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com/

*** Test Cases ***
Ebay Test0
    Open Browser  https://www.ebay.com/    ${Browser}
    Click Link  //a[@href="https://www.ebay.com/b/Auto-Parts-and-Vehicles/6000/bn_1865334"]
    Click Link  xpath=(//a[@href="https://www.ebay.com/b/Car-Truck-Parts/6030/bn_562630"])[2]
    Click Element  //div[@class="b-visualnav__title"]
    Click Element  //div[@class="b-visualnav__title"]
    #ebay link doesn't work
    Click Element  //img[@id="gh-logo"]

#Ebay Test
    Open Browser  https://www.ebay.com/  ${Browser}
    Input Text  //input[@name="_nkw"]  nike vapor max
    Click Element  //input[@id="gh-btn"]
    Click Element  xpath=(//h3[@class="s-item__title s-item__title--has-tags"])[4]
    Click Link  //a[@id="binBtn_btn"]
    Select From List By Value  //select[@name="US Shoe Size (Men's)"]  4
    #Click Element  xpath=(//li)[77]
    Click Link  //a[@id="binBtn_btn"]
    Click Element  //button[@id="sbin-signin-btn"]
    #ebay link doesn't work
    Click Link  xpath://img[@role='presentation']


*** Keywords ***
