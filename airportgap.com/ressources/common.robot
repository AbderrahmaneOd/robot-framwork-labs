*** Settings ***
Library           RequestsLibrary
Library    Collections
Resource          ./variables.robot

*** Keywords ***
Get Authentication Token
    [Arguments]    ${email}    ${password}
    [Documentation]    Retrieves an authentication token
    ${response}=    POST    ${BASE_URL}/tokens    data=email=${email}&password=${password}
    Should Be Equal As Numbers    ${response.status_code}    200
    ${token}=    Get From Dictionary    ${response.json()}    token
    Set Global Variable    ${token}
    # Log    ${token}
