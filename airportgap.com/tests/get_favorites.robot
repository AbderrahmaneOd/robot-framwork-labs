*** Settings ***
Resource    ../ressources/common.robot


*** Test Cases ***
Get all the favorite airports
    [Documentation]    Returns all the favorite airports saved to your Airport Gap account.
    Get Authentication Token    abdoouaday361@gmail.com    abderrahmane
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}
    ${response}=    GET    ${BASE_URL}/favorites    headers=${headers}
    Should Be Equal As Numbers    ${response.status_code}    200
    Log    ${response.json()}
