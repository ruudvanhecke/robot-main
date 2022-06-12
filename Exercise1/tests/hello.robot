*** Settings ***
Library  SeleniumLibrary
Resource  ../helpers/browser.robot


*** Test Cases ***

Check domain
    Open Browser  https://hummingbee.herokuapp.com  Google Chrome
    Page Should Contain  Wie ben jij?
    Sleep  3s
    Close browser

Test Error page
    Open Browser  https://hummingbee.herokuapp.com/bla  Google Chrome
    Page Should Contain  Error
    Sleep  3s
    Close browser



Foutief wachtwoord
                Open Browser  https://hummingbee.herokuapp.com/gebruiker/login  Google Chrome
                Input Text  id:username  admin
                Input Text  id:password  user
                Click Button  css:input[value='log in']
                Sleep  5s
                Wait Until Page Contains  Inloggen mislukt: controleer of je gebruikersnaam en wachtwoord juist zijn.
                Close Browser

Registratie Niet Compleet
                 Open Browser  https://hummingbee.herokuapp.com/gebruiker/signup  Google Chrome
                 Input Text  id:username  admin
                 Input Text  id:voornaam  admin
                 Input Text  id:achternaam  van admin
                 Input Password  password  test111
                 Input Password  passwordR  test111
                 Click Button  css:input[value='registreer']
                 Wait Until Page Contains  Oops! - Registratie is mislukt!
                 Sleep  5s
                 Close Browser


Registratie username bestaat al
                 Open Browser  https://hummingbee.herokuapp.com/gebruiker/signup  Google Chrome
                 Input Text  id:username  admin
                 Input Text  id:voornaam  admin
                 Input Text  id:achternaam  van admin
                 Input Text  id:email  admin@gmail.com
                 Input Password  password  test111
                 Input Password  passwordR  test111
                 Click Button  css:input[value='registreer']
                 Wait Until Page Contains  Oops! - Registratie is mislukt!
                 Sleep  5s
                 Close Browser






