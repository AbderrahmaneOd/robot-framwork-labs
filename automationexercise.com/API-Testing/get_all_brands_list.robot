*** Settings ***
Library               RequestsLibrary

*** Variables ***
${API_URL}    	https://automationexercise.com/api/brandsList

*** Test Cases ***
Get all brands list
    [Documentation]    Test API to fetch all brand list
    ${response} =    GET  ${API_URL}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}
    