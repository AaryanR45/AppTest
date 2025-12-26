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
    # this is a wait
    Wait Until Element Is Visible
    ...    android=UiSelector().textContains("Login Screen")    # this is a locator from uiselector driver
    ...    15s

    Click Element
    ...    android=UiSelector().textContains("Login Screen")

Login With Credentials
    [Arguments]    ${username}    ${password}

    Wait Until Element Is Visible    accessibility_id=username    5s    # this is a acesibility id locator
    Input Text     accessibility_id=username    ${username}

    Wait Until Element Is Visible    accessibility_id=password     5s
    Input Password    accessibility_id=password     ${password}

    Wait Until Element Is Visible
    ...    android=UiSelector().text("Login").instance(1)
    ...    5s
    Click Element
    ...    android=UiSelector().text("Login").instance(1)

Verify Invalid Login Alert
    Wait Until Element Is Visible
    ...    android=UiSelector().textContains("Invalid login")
    ...    10s

    # this is an assertion
    Element Text Should Be
    ...    android=UiSelector().text("Invalid login credentials, please try again")
    ...    Invalid login credentials, please try again

    Click Element
    ...    android=UiSelector().text("OK")

Close App
    Close Application
