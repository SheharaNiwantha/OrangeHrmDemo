*** Settings ***
Library            SeleniumLibrary
Variables         ../PageObjects/admin_UserManagement.py
Resource          ../Resources/loginKeywords.robot
Resource          ../Resources/userManagement.robot
Variables         ../PageObjects/loginLocators.py


*** Keywords ***
Open Admin User Management Page    
    [Arguments]    ${Url}    ${Browser}
    Open Browser    ${Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Implicit Wait    5s

Enter Admin Username
    [Arguments]    ${UsernameValue}
    Input Text    ${userName}    ${UsernameValue}

Enter admin Password
    [Arguments]    ${PasswordValue}
    Input Password    ${passWord}    ${PasswordValue}

Click Login Button Admin Page
    Click Button    ${loginButton}

Click Admin Menu
    Click Element     ${admin}

Click Add User Button
    Click Element    ${addUserButton}