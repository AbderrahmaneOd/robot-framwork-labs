*** Settings ***
Resource    ../resources/common.robot

*** Keywords ***
Go To TestCases Page
    Click Link                xpath=//a[@href='/test_cases']

Verify TestCases Page  
    Title Should Be           Automation Practice Website for UI Testing - Test Cases