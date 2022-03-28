*** Settings ***
Resource  ../pageObjects/basePage.robot
Resource  ../pageObjects/homePage.robot

Suite Setup  Open My Website
Suite Teardown  Close browser

*** Variables ***

*** Test Cases ***

Test About Us Page Contains Expected Text
    Go To Home
    ${text}=  Get Smartphones text
    Should Contain  ${text}  Beste smartphones

Login correct username and password
    Login  tomsmith  SuperSecretPassword!
    ${message}=  Get message
    Should Countain  ${message} You logged into a secure area!
    Logout