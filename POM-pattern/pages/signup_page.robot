*** Settings ***
Resource    ../resources/common.robot

*** Keywords ***
Go To Signup Page
    Click Link  xpath=//a[@href='/login']

Verify Signup Page
    Element Should Be Visible  xpath=//h2[contains(text(),'New User Signup!')]