*** Settings ***
Resource    ../ressources/common.robot

*** Variables ***
${AIRPORT_ID}        GKA
${NAME}              Goroka Airport

*** Test Cases ***
Add airport to the favorite 
    [Documentation]    Allows you to save a favorite airport to your Airport Gap account.
    Get Authentication Token    abdoouaday361@gmail.com    abderrahmane
    ${headers}=    Create Dictionary    Authorization=Bearer ${token}
    ${params}=     Create Dictionary    airport_id=${AIRPORT_ID}    name=${NAME}
    ${response}=    POST    ${BASE_URL}/favorites    headers=${headers}    params=${params}
    Should Be Equal As Numbers    ${response.status_code}    201
    Log    ${response.json()}
