*** Settings ***
Library               RequestsLibrary

*** Variables ***
${API_URL}    	https://automationexercise.com/api/productsList

*** Test Cases ***
Get all product list
    [Documentation]    Test API to fetch all products list
    ${response} =    GET  ${API_URL}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}
    