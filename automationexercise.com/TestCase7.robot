*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome

*** Test Cases ***
Verify "Test Cases" Page
    [Documentation]    This test case verifies that a user can acess to "Test Cases Page".
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise
    
    # Click on 'Test Cases' button
    Click Link    xpath=//a[@href='/test_cases']
    
    # Verify user is navigated to TEST CASES page successfully
    Page Should Contain Element    xpath=//h2/b[contains(text(),'Test Cases')]

    # Close the browser at the end
    Close Browser

