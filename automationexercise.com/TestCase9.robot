*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome
${SEARCH_TERM}          t-shirt

*** Test Cases ***
Search Product
    [Documentation]    This test case verifies that a user can search for a product successfully.
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise
    
    # Click on 'Products' button
    Click Link    xpath=//a[@href='/products']
    
    # Verify user is navigated to ALL PRODUCTS page successfully
    Page Should Contain Element    xpath=//h2[contains(text(),'All Products')]
    
    # Enter product name in search input and click search button
    Input Text    xpath=//input[@id='search_product']    ${SEARCH_TERM}
    Click Button    xpath=//button[@id='submit_search']
    
    # Verify 'SEARCHED PRODUCTS' is visible
    Page Should Contain Element    xpath=//h2[contains(text(),'Searched Products')]
    
    # Verify all the products related to search are visible
    Page Should Contain Element    xpath=//div[@class='features_items']//div[contains(@class,'col-sm-4')]
    
    # Close the browser at the end
    Close Browser

