*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome
${EMAIL}                abdoouaday361@gmail.com

*** Test Cases ***

Verify Subscription in Cart page
    [Documentation]    This test case verify the Subscription functionality.
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise

    # Click on 'Cart' button
    Click Link    xpath=//a[@href='/view_cart']

    # Scroll down to footer
    Scroll Element Into View    xpath=//footer

    # Insert email to subscription input
    Input Text    id=susbscribe_email    ${EMAIL}

    # Click Arrow Button
    Click Button    id=subscribe

    # Verify that a succesful message is showed
    # Element Should Be Visible    xpath=//div[@class='col-md-9 form-group']
    Page Should Contain Element    xpath=//div[@class='col-md-9 form-group']

    # Close the browser at the end
    Close Browser