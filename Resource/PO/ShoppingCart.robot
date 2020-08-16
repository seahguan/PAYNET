*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-nati

Remove and Item from Cart
    [Documentation]    to remove the 1st item from the cart
    click element    xpath=//*[@id='activeCartViewForm']//*[@data-item-count='1']

