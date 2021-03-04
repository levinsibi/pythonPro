*** Settings ***
Library  RequestsLibrary
*** Variables ***
${base_url}  https://reqres.in/api
${City}  users?page=2
*** Test Cases ***
TC
    create session  mysession  ${base_url}
    ${res}=   get request  mysession  /${City}
    log to console    ${res}


