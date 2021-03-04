*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/SignupLocators.py

*** Keywords ***
Launch Browser
    [Arguments]  ${Appurl}   ${browser}
    open browser  ${Appurl}   ${browser}
    maximize browser window

Enter FirstName
    [Arguments]  ${fname}
    input text  ${txt_fname}  ${fname}

Enter LastName
    [Arguments]  ${lname}
    input text  ${txt_lname}   ${lname}

