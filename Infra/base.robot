*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Library/Uteis.py
Library     Library/Config.py

*** Variables ***

*** Keywords ***
Open Session
    ${base_url}=        Pegar Valor Json       base_url
    ${browser}=         Pegar Valor Json       browser
    Open Browser    ${base_url}     ${browser}
    Get Selenium speed
    Maximize Browser Window

Close Session
    Close Browser


Ir Para
        [Arguments]     ${path}
        Go To       ${base_url}${path}

