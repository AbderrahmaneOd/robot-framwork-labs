*** Settings ***
Resource    ../ressources/common.robot


*** Test Cases ***
Successful login
    Get Authentication Token    abdoouaday361@gmail.com    abderrahmane
    Log    ${token}