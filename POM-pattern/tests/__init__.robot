*** Settings ***
Suite Setup        Setup Keyword
Suite Teardown     Teardown Keyword

*** Keywords ***
Setup Keyword
    Log    Suite-wide setup executed

Teardown Keyword
    Log    Suite-wide teardown executed
