*** Settings ***
Documentation  Amazon top navigation
Library  SeleniumLibrary


*** Keywords ***
Search for Products
    [Arguments]    ${SEARCH_TERM}
    Enter Search Term   ${SEARCH_TERM}

Verify added Cart
    TopNav Cart Icon
    Verify Cart Item

Verify added Cart Type2
    TopNav Cart Icon
    Verify Cart Item

Enter Search Term
    [Arguments]    ${SEARCH_TERM}
    Input Text  id=twotabsearchtextbox  ${SEARCH_TERM}
    press keys  id=twotabsearchtextbox  ENTER

Verify Cart Item
    [Documentation]    verify added item at the cart detail page
    [Arguments]    ${SEARCH_TERM}
    wait until page contains    Shopping Cart
    wait until page contains    ${SEARCH_TERM}

Submit Search
    Click Button  xpath=//*[@id="nav-search-submit-text"]/input

TopNav Cart Icon
     [Documentation]    click on topNav search cart icon
    click element  xpath=//*[@id='nav-cart-count-container']

TopNav Cart Icon2
    [Documentation]    click on topNav search cart icon - type 2
    click element  xpath=//*[@id="nav-cart-text-container"]

Sign In
    [Documentation]    mouse Hover to the Sign in link and click on the Sign in button
    Mouse Over  xpath=//*[@id="nav-link-accountList"]/div

    #   click on the login button
    click element  id=nav-flyout-ya-signin

