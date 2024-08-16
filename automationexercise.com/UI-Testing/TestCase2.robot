*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome
${EMAIL}                abderrahmane.ouaday@gmail.com
${PASSWORD}             82@zCb4axhxbMfs

*** Test Cases ***
Login with correct credentials
    [Documentation]    This test case verifies that a user can login to his account".
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise
    
    # Click on 'Signup/login' button
    Click Link    xpath=//a[@href='/login']

    # Verify that signup/login page is visible successfully
    Title Should Be    Automation Exercise - Signup / Login

    # Enter Name and Email and click Signup button
    Input Text    xpath=//form[@action='/login']/input[@name='email']    ${EMAIL}
    Input Text    xpath=//form[@action='/login']/input[@name='password']    ${PASSWORD}    
    
    Click Button    xpath=//form[@action='/login']/button
    
    # Verify that signup page  is visible successfully
    Title Should Be    Automation Exercise
      

    # Close the browser at the end
    Close Browser

