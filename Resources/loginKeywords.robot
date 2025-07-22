*** Settings ***
Library    SeleniumLibrary
Variables    ../PageObjects/loginLocators.py
Resource    ../Resources/loginKeywords.robot
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


Verfy Login Success
    Wait Until Page Contains Element    ${dashboardElement}        10s
    Element Should Be Visible   ${dashboardElement}

Tear Down
    Close Browser