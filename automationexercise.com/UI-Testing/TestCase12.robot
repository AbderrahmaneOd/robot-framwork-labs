*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome

*** Test Cases ***
Add Products in Cart
    [Documentation]    This test case verify that we can add products to cart.
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise
    
    # Click on 'Test Cases' button
    Click Link    xpath=//a[@href='/products']

    # Verify user is navigated to ALL PRODUCTS page successfully
    Page Should Contain Element    xpath=//h2[contains(text(),'All Products')]
    
    # Verify all the products related to search are visible
    Page Should Contain Element    xpath=//div[@class='features_items']//div[contains(@class,'col-sm-4')]

    # Add the first product to cart and click continue shopping
    Click Link      xpath=(//div[@class='col-sm-4']//a[@class='btn btn-default add-to-cart'])[1]
    Click Button    xpath=//div[@id='cartModal']//button[text()='Continue Shopping']

    # Add the second product
    Click Link      xpath=(//div[@class='col-sm-4']//a[@class='btn btn-default add-to-cart'])[3]

    # Click view cart
    Page Should Contain Element    xpath=//div[@class='modal-content']
    Click Link    xpath=//div[@class='modal-content']//a[@href='/view_cart']

    # Verify that Checkout Page is visible successfully
    Title Should Be    Automation Exercise - Checkout

    # Close the browser at the end
    Close Browser