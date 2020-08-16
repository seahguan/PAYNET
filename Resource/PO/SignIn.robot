*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Login with Invalid Mobile NO
    [Arguments]    ${MOBILE_NO}
    Fill in mobile no  ${MOBILE_NO}
    Click Continue Button
    Verify Error Message Incorrect phone number

Login with Invalid acc
    [Arguments]    ${EMAIL_ADDR}
    Fill In Acc  ${EMAIL_ADDR}
    Click Continue Button
    Verify Error Message Incorrect acc


Login with Mobile NO
    [Arguments]    ${MOBILE_NO}  ${PASSWORD}
    Fill IN MObile NO   ${MOBILE_NO}
    Click Continue Button
    Fill In Pasword  ${PASSWORD}
    Click Sign In Button

Login with Email
    [Arguments]    ${EMAIL_ADDR}  ${PASSWORD}
    Fill IN MObile NO   ${EMAIL_ADDR}
    Click Continue Button
    Fill In Pasword  ${PASSWORD}
    Click Sign In Button

Verify Page Loaded
    Page Should Contain Element  createAccountSubmit
    Element Text Should Be  createAccountSubmit  Create your Amazon account

Fill IN MObile NO
    [Documentation]   login using the mobile no #
    [Arguments]    ${MOBILE_NO}
    Input Text  id=ap_email     ${MOBILE_NO}

Fill IN Acc
    [Documentation]   login using  Email address#
    [Arguments]    ${EMAIL_ADDR}
    Input Text  id=ap_email     ${EMAIL_ADDR}

Click Continue Button
    [Documentation]    click on the continue button
    Click Button    id=continue

Fill In Pasword
    [Documentation]    input password
    [Arguments]    ${PASSWORD}
    Input Text      id=ap_password      ${PASSWORD}

Click Sign In Button
    [Documentation]    click on the SIgn-in button
    Click Button    id=signInSubmit

Verify Error Message Incorrect phone number
    wait until page contains  Sign-In
    wait until page contains  Incorrect phone number

Verify Error Message Incorrect acc
    wait until page contains  Sign-In
    page should contain     There was a problem
    page should contain     We cannot find an account with that email address