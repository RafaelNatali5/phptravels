*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Library/Uteis.py

*** Variables ***
${base_url}      https://www.phptravels.net/



*** Keywords ***
Open Session
    Open Browser    ${base_url}     chrome
    Get Selenium speed
    Maximize Browser Window

Close Session
    Close Browser


Ir Para
        [Arguments]     ${path}
        Go To       ${base_url}${path}

