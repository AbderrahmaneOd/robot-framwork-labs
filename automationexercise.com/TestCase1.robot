*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${URL}                  https://automationexercise.com/
${BROWSER}              Chrome
${NAME}                 Abderrahmane Ouaday
${EMAIL}                abderrahmane.ouaday@gmail.com
${PASSWORD}             82@zCb4axhxbMfs
${FIRSTNAME}            Abderrahmane
${LASTNAME}             Ouaday
${ADDRESS}              Address 1
${STATE}                State
${CITY}                 Casablanca
${ZIPCODE}              20250
${PHONE}                0612345678
${DAY}                  3
${MOUNTH}               12
${YEAR}                 2002
${COUNTRY}              Canada


*** Test Cases ***
User Registration
    [Documentation]    This test case verifies that a user can create account".
    
    # Launch browser
    Open Browser    ${URL}    ${BROWSER}
        
    # Verify that home page is visible successfully
    Title Should Be    Automation Exercise
    
    # Click on 'Signup/login' button
    Click Link    xpath=//a[@href='/login']

    # Verify that signup/login page is visible successfully
    Title Should Be    Automation Exercise - Signup / Login

    # Enter Name and Email and click Signup button
    Input Text    xpath=//form[@action='/signup']/input[@name='name']    ${NAME}
    Input Text    xpath=//form[@action='/signup']/input[@name='email']    ${EMAIL}    
    Click Button    xpath=//form[@action='/signup']/button
    
    # Verify that signup page  is visible successfully
    Title Should Be    Automation Exercise - Signup

    # Enter Title, Password, ...
    Click Element    id=id_gender1    
    Input Text    xpath=//input[@name='password']    ${PASSWORD}
    Select From List By Value    xpath=//select[@id='days']    ${DAY}
    Select From List By Value    xpath=//select[@id='months']  ${MOUNTH}
    Select From List By Value    xpath=//select[@id='years']   ${YEAR} 
    Input Text    xpath=//input[@name='first_name']    ${FIRSTNAME}
    Input Text    xpath=//input[@name='last_name']    ${LASTNAME}
    Input Text    xpath=//input[@id='address1']    ${ADDRESS}
    Select From List By Value    xpath=//select[@id='country']   ${COUNTRY}
    Input Text    xpath=//input[@id='state']    ${STATE}
    Input Text    xpath=//input[@id='city']    ${CITY}
    Input Text    xpath=//input[@id='zipcode']    ${ZIPCODE}
    Input Text    xpath=//input[@id='mobile_number']    ${PHONE}
      
    # Click Create Account Button
    Click Button    xpath=//button
    # Sleep    12

    # Verify that the Account creation message is loaded
    Title Should Be    Automation Exercise - Account Created
    Page Should Contain Element    xpath=//h2/b[contains(text(),'Account Created!')]

    # Close the browser at the end
    Close Browser

