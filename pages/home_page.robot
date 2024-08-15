*** Settings ***
Resource    ../resources/common.robot

*** Keywords ***
Verify Home Page
    Open Browser To Base URL
    Title Should Be          Automation Exercise
    Close Browser