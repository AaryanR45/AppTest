*** Settings ***
Library    AppiumLibrary
Resource   variables.robot

*** Keywords ***
Open App
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    automationName=${AUTOMATION}
    ...    app=${APP_PATH}

Go To Login Screen
    Click Element    uiautomator=new UiSelector().text("Login Screen")

Login With Credentials
    [Arguments]    ${username}    ${password}
    Input Text     id=username    ${username}
    Input Text     id=password    ${password}
    Click Element  uiautomator=new UiSelector().text("Login").instance(1)

Close App
    Close Application
