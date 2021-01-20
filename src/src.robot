*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections
Library	    RequestsLibrary
Library     DebugLibrary
Library     OperatingSystem
Library     String
Library     DateTime


*** Variables ***
${start_page}         https://prozorro.gov.ua/
${browse_chromer}     chrome


*** Keywords ***
browser - відкрити браузер
    [Arguments]  ${browser}=${browse_chromer}  ${url}=${start_page}
    open browser  ${start_page}  ${browser}
    Maximize Browser Window
    location should be  ${start_page}

browser - закрити браузер
    close browser