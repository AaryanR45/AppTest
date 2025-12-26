*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Invalid User Cannot Login
    Open App
    Go To Login Screen
    Login With Credentials    ${INVALID_USER}    ${INVALID_PASS}
    Verify Invalid Login Alert  # assertion called
    Close App
