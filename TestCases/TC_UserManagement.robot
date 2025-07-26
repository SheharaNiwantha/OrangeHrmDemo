*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/loginKeywords.robot
Resource    ../Resources/userManagement.robot

*** Variables ***
${Url}                   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${Browser}               Chrome
${UsernameValue}         admin
${PasswordValue}         admin123

*** Test Cases ***
User Management - Admin Login
    [Documentation]    This test case logs into the admin user management page.
    Open Admin User Management Page    ${Url}    ${Browser}
    Enter Admin Username        ${UsernameValue}
    Enter Admin Password    ${PasswordValue}
    Click Login Button Admin Page
    Click Admin Menu
    