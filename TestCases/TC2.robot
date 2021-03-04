*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}          https://www.codecademy.com/
${browser}      chrome
${errmsgExp}    Invalid Login or passworz.
${errmsgAct}
${orig timeout} =	Set Selenium Timeout	15 seconds

*** Test Cases ***
LoginTest
    Login
    close browser


*** Keywords ***
Login
    open browser                  ${url}                                               ${browser}

    maximize browser window
    Set Selenium Timeout          20 seconds
    title Should Be               Learn to Code - for Free | Codecademy
    input text                    name:email                                           ab@g.com
    click element                 xpath:((//a//span[contains(text(),'Log in')])[1])
    input text                    id:user_login                                        ab@g.com
    input text                    id:login__user_password                              abcom
    click element                 id:user_submit
    ${errmsgAct}                  Get Text                                             xpath=//ul[contains(@class,'fieldErrors')]/li
    Should Be Equal As Strings    ${errmsgExp}                                         ${errmsgAct}











