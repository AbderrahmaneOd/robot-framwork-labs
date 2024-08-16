*** Settings ***
Resource    ../resources/common.robot
Resource        ../pages/product_page.robot

*** Test Cases ***
Seach Product
    [Documentation]  Test Case 9: Search Product
    Set Tags    frontend
    Open Browser To Base URL
    Go To Product Page
    Verify Product Page
    Search item    t-shirt
    Close Browser