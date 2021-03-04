*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/r.php
${browser}  chrome
${errmsgAct}
${errmsgExp}  Please enter a valid mobile number or email address.
*** Test Cases ***
LoginTest
    Login
    close browser


*** Keywords ***
Login
    open browser    ${url}   ${browser}
    Run Keyword And Continue On Failure  title Should Be               Sign up for Faceboo | Facebook
    set selenium implicit wait    30
    input text  name:firstname    fname
    input text  name:lastname    lname
    input text  name:reg_email__    2434232
    input password  id:password_step_input  password
    select from list by label   day  12
    select from list by label   month  Jan
    select from list by label   year  1990
    select radio button  sex  2
    click element  name:websubmit
    ${errmsgAct}                  Get Text                                             xpath=//div[contains(text(),'valid mobile number ')]
    Should Be Equal As Strings    ${errmsgExp}                                         ${errmsgAct}










