*** Settings ***
Resource        ../resources/common.robot
Resource        ../pages/testCases_page.robot

*** Test Cases ***
Verify Test Cases Page
    [Documentation]    Test Case 7: Verify Test Cases Page
    Set Tags    frontend
    Open Browser To Base URL
    Go To TestCases Page
    Verify TestCases Page
    Close Browser