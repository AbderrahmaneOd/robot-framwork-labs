*** Settings ***
Resource    ../resources/common.robot
Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot


*** Test Cases ***
Login With Correct Credentials
    [Documentation]  Test Case 2: Login User with correct email and password
    Set Tags    backend
    Open Browser To Base URL
    Go To Login Page
    Verify Login Page
    Login User  ${USER_EMAIL}  ${USER_PASSWORD}
    Verify User Logged In  ${USER_NAME}
    # Delete User Account
    Logout User
    Close Browser

Login With Incorrect Credentials
    [Documentation]  Test Case 3: Login User with incorrect email and password
    Set Tags    backend
    Open Browser To Base URL
    Go To Login Page
    Verify Login Page
    Login User  incorrect@example.com  wrongpassword
    Verify Error Message  ${ERROR_MESSAGE_INVALID_LOGIN}
    Close Browser