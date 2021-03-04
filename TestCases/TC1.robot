*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/public/Fb-Login
${browser}  chrome
*** Test Cases ***
LoginTest
    Login
    close browser


*** Keywords ***
Login
    open browser    ${url}   ${browser}
    input text  id:email    ab@g.com
    input text  id:pass    abcgd
    click element  id:loginbutton
    








