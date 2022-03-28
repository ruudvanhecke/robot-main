*** Settings ***
Library  SeleniumLibrary
Resource  ../helpers/browser.robot


*** Test Cases ***

Check domain
    Open Browser  https://www.domeon.be  Google Chrome
    Sleep  3s
    Close browser

Test Error page
    Open Browser  https://www.domeon.be/blabla  Google Chrome
    Sleep  3s
    Close browser

Zonder email inloggen
        Open Browser  https://www.domeon.be/login  Google Chrome
        Input Text  id:username  admin
        Input Text  id:password  admin
        Click Element  css:Button
        Sleep  5s
        Close Browser

Foutief wachtwoord
                Open Browser  https://www.domeon.be/login  Google Chrome
                Input Text  id:username  admin@gmail.com
                Input Text  id:password  admin
                Click Element  css:Button
                Sleep  5s
                Close Browser




