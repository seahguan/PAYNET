*** Settings ***
Documentation    initial script basic requirement
Resource  ../Resource/Common.robot  # for Setup & Teardown
Resource  ../Resource/Amazon.robot  # for lower level keywords in test cases
Test Setup  Common.Begin Web Test   ${BROWSER}
Test Teardown  Common.End Web Test
Library    string


*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.amazon.com
@{item} =  Create List  Nintendo Switch  IPad  PS4
${SEARCH_TERM} =  Nintendo Switch 32GB Console
${Special_Item} =  !@#$%^&**
${MOBILE_NO} =  011122962877
${PASSWORD} =  G@briel0301
${EMAIL_ADDR} =  se11ahguanlow@gmail.com

*** Test Cases ***
#Guest User search an Product
#    [Tags]  Positive Test Scenario 1
#    Amazon.Load Page    ${URL}
#    Amazon.Search for Products  ${SEARCH_TERM}
#    Amazon.Select Product from Search Results
#    Amazon.Add Product to Cart
#    TopNavSection.Verify added Cart
#
#
#Existing USer add and remove item
#    [Tags]    Positive Test Scenario 2
#    Amazon.Load Page  ${URL}
#    Amazon.Sign In Using Mobile
#    FOR  ${ELEMENT}  IN  @{ITEM}
##        ${SEARCH_TERM}} = ${ELEMENT}
#        Amazon.Search for Products  ${ELEMENT}
#        Amazon.Select Product from Search Results
#        Amazon.Add Product to Cart
#        Amazon.Verify Cart Type 2
#    END
#    Amazon.Remove and Item from Cart

#proceed to payment require login
#    [Documentation]  to test user need to login before proceed to make payment
#    [Tags]  Positive Test Scenario 3
#    Amazon.Load Page    ${URL}
#    Amazon.Search for Products  ${SEARCH_TERM}
#    Amazon.Select Product from Search Results
#    Amazon.Add Product to Cart
#    Amazon.Proceed Checkout
#    Amazon.Verify Sign-In Page

#Search with invalid item
#    [Documentation]    TO search an item with input of special character
#    [Tags]  Negative Test Scenario 1
#    Amazon.Load Page    ${URL}
#    Amazon.Search for Products  ${Special_Item}

Login with Invalid Credential Info 1
    [Documentation]    To test the invalid login id using Mobile No
    [Tags]  Negative Test Scenario 2
    Amazon.Load Page    ${URL}
    Amazon.Sign In Using Incorrect Mobile NO  ${MOBILE_NO}

Login with Invalid Credential Info 2
    [Documentation]    To test the invalid login id using username
    [Tags]  Negative Test Scenario 3
    Amazon.Load Page    ${URL}
    Amazon.Sign In Using Incorrect Email Acc    ${EMAIL_ADDR}
