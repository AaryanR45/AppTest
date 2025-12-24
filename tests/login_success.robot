*** Settings ***
Resource    ../resources/keywords.robot

*** Test Cases ***
Valid User Can Login
    Open App
    Go To Login Screen
    Login With Credentials    ${VALID_USER}    ${VALID_PASS}
    Page Should Contain Text    You are logged in!
    Close App
