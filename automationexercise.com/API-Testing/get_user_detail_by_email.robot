*** Settings ***
Library    RequestsLibrary


*** Variables ***
${API_URL}    	https://automationexercise.com/api/getUserDetailByEmail
${EMAIL}        abdoouaday361@gmail.com


*** Test Cases ***
Get User account detail by Email
    ${response} =    GET    ${API_URL}    params=email=${EMAIL}
    Log    ${response.json()}
