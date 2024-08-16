*** Settings ***
Resource     ../resources/common.robot
Resource     ../pages/signup_page.robot

*** Test Cases ***
Register New User
    [Documentation]  Test Case 1: Register User
    Set Tags    backend
    Open Browser To Base URL
    Go To Signup Page
    Verify Signup Page
    Register New User  ${USER_NAME}  ${NEW_USER_EMAIL}  ${USER_PASSWORD}
    Verify User Logged In  ${USER_NAME}
    Delete User Account
    Close Browser