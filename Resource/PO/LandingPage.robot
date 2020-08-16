*** Settings ***
Library     SeleniumLibrary

*** Variables ***


*** Keywords ***
Load
    [Arguments]    ${URL}
    Go To  ${URL}

Verify Page Loaded
    Wait Until Page Contains  Hello
