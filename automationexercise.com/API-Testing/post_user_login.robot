*** Settings ***
Library    RequestsLibrary

*** Variables ***
${BASE_URL}    https://automationexercise.com/api/verifyLogin
${EMAIL}       regular-user@example.com
${PASSWORD}    TestPassword123

*** Test Cases ***
Verify User Login
    ${headers}=                   Create Headers
    ${data}=                      Create Dictionary          email=${EMAIL}    password=${PASSWORD}
    ${response}=                  POST                       ${BASE_URL}       headers=${headers}      json=${data}
    Should Be Equal As Numbers    ${response.status_code}    200
    Should Contain                ${response.text}           User exists!

*** Keywords ***
Create Headers
    ${headers}=    Create Dictionary    Content-Type=application/json
    RETURN         ${headers}