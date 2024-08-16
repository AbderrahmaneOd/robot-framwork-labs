*** Settings ***
Library    RequestsLibrary

*** Variables ***
${API_URL}        https://automationexercise.com/api/searchProduct

*** Test Cases ***
Post to search product
    [Documentation]    POST to search for a product
    ${response} =    Post    ${API_URL}    params=search_product=t-shirt
    Should Be Equal As Numbers    ${response.json()}[responseCode]    200
    Log    ${response.json()}
