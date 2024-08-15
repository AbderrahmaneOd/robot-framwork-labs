*** Settings ***
Resource    ../resources/common.robot

*** Keywords ***
Go To Login Page
    Click Link  xpath=//a[@href='/login']

Verify Login Page
    Element Should Be Visible  xpath=//h2[contains(text(),'Login to your account')]