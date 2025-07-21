*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/loginLocators.py

*** Keywords ***
Open Login Page
    [Arguments]    ${Url}    ${Browser}
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Enter Username
    [Arguments]    ${UsernameValue}
    Input Text    ${userName}    ${UsernameValue}

Enter Password
    [Arguments]    ${PasswordValue}
    Input Password    ${passWord}    ${PasswordValue}

Click Login Button
    Click Button    ${loginButton}
