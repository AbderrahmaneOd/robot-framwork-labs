*** Settings ***
Resource    ../resources/common.robot
Resource        ../pages/home_page.robot
Resource        ../pages/login_page.robot

*** Test Cases ***
Logout User
    [Documentation]  Test Case 4: Logout User
    Set Tags    frontend
    Open Browser To Base URL
    Go To Login Page
    Verify Login Page
    Login User  ${USER_EMAIL}  ${USER_PASSWORD}
    Verify User Logged In  ${USER_NAME}
    Logout User
    Verify Login Page
    Close Browser