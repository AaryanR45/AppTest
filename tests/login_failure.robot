*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Invalid User Cannot Login
    Open App
    Go To Login Screen
    Login With Credentials    ${INVALID_USER}    ${INVALID_PASS}
    Page Should Contain Text    Invalid username or password
    Close App
