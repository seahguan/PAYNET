*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Page Loaded
    [Documentation]    Verify the search result
    Wait Until Page Contains  Back to results

Add to Cart
    [Documentation]    click on the add cart action
    Click Button  id=add-to-cart-button

Verify Search Completed
    [Documentation]    verify the search result
    [Arguments]    ${SEARCH_TERM}
    wait until page contains    results for "${SEARCH_TERM}"

Click Product link
    [Documentation]    click on the search product link to go to Product Details page
     click image  xpath=//*[@data-image-index='0']

Click Proceed to checkout Button
    [Documentation]     click on the proced to checkout button after add product to cart page
    click link  id=hlb-ptc-btn-native

