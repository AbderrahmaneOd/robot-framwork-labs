*** Settings ***
Resource    ../resources/common.robot

*** Keywords ***
Go To Product Page
    Click Link                    xpath=//a[@href='/products']

Verify Product Page  
    Page Should Contain Element    xpath=//h2[contains(text(),'All Products')]

Search item
    [Arguments]  ${product_name}
    Input Text        xpath=//input[@id='search_product']    ${product_name}
    Click Button      xpath=//button[@id='submit_search']
    Page Should Contain Element    xpath=//h2[contains(text(),'Searched Products')]