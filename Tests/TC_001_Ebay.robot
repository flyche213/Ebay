*** Settings ***
Documentation  Ebay Test
Library  SeleniumLibrary
Resource  ../Resources/EbayApp.robot
Test Setup  Start  ${ebay}
Test Teardown  Close Browser


*** Variables ***
${Browser}  Chrome
${URL}  https://www.ebay.com/
&{Ebay}  Browser=Chrome  URL=https://www.ebay.com/

*** Test Cases ***
Ebay Test 1
    Vehicle Search

Ebay Test 2
    Sneaker Search

