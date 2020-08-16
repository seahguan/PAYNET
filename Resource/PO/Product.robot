*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Details Page Loaded
    Wait Until Page Contains  Back to results

Add to Cart
    [Documentation]    add item into cart
    Click Button  id=add-to-cart-button-ubb
