*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome
${EMAIL}                abdoouaday361@gmail.com
${QUANTITY}    	        12

*** Test Cases ***

Verify Product quantity in Cart
    [Documentation]    This test case that Add product in Cart and verify quantity.
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be                   Automation Exercise

    # Click on 'Test Cases' button
    Click Link                        xpath=//a[@href='/products']

    # Verify user is navigated to ALL PRODUCTS page successfully
    Page Should Contain Element       xpath=//h2[contains(text(),'All Products')]
    
    # Verify that at leated a product is loaded
    Page Should Contain Element       xpath=//div[@class='features_items']//div[contains(@class,'col-sm-4')]

    # Click to view product details
    Click Link                        xpath=//a[@href='/product_details/1']

    # Verify that Product Detail Page is visible successfully
    Title Should Be                   Automation Exercise - Product Details

    # Enter quantity and Click add to cart
    Input Text                        id=quantity    ${QUANTITY}
    Click Button                      xpath=//button[@class='btn btn-default cart']
    Sleep    2

    # Click view cart
    Page Should Contain Element       xpath=//div[@class='modal show']
    Click Link                        xpath=//div[@class='modal show']//a[@href='/view_cart']

    # Verify that Checkout Page is visible successfully
    Title Should Be    Automation Exercise - Checkout

    # Verify that the quantity is been saved
    Page Should Contain Element    id=cart_info_table
    Page Should Contain Element    id=product-1
    ${GETEDQUANTITY} =    Get Text    xpath=//tr[1]//button
    Should Be Equal As Numbers    ${GETEDQUANTITY}    ${QUANTITY}

    # Close the browser at the end
    Close Browser