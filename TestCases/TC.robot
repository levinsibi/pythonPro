*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/SignupKeywords.robot
#Suite Setup   Launch Browser  ${Appurl}  ${browser}
#Suite Teardown  Close Browser
Library  DataDriver  ../TestData/data.xlsx  sheet_name=Sheet1
Test Template  TestSample
*** Variables ***
${Appurl}  https://www.facebook.com/r.php
${browser}  chrome

*** Test Cases ***
Testing using ${fname}
*** Keywords ***
TestSample
    [Arguments]  ${fname}  ${lname}
   Launch Browser  ${Appurl}  ${browser}
#   below helps in continue on failure steps sample commit.
   Run Keyword And Continue On Failure  title Should Be               Sign up for Faceboo | Facebook
   Enter FirstName  ${fname}
   Enter LastName  ${lname}
   close browser


#*** Test Cases ***
#TC
#    Launch Browser  ${Appurl}  ${browser}
#    Enter FirstName  ${fname}
#    Enter LastName  ${lname}

