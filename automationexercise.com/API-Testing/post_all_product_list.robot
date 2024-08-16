*** Settings ***
Library               RequestsLibrary

*** Variables ***
${API_URL}    	https://automationexercise.com/api/productsList
${RESPONSE_MESSAGE}    This request method is not supported.

*** Test Cases ***
Post to all product list
    [Documentation]    Test POST API to all product list
    ${response} =    POST  ${API_URL}
    Should Be Equal As Numbers    ${response.json()}[responseCode]    405
    Should Be Equal As Strings    ${response.json()}[message]    ${RESPONSE_MESSAGE}
    