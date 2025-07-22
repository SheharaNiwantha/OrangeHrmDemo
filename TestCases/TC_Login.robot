*** Settings ***
Library           SeleniumLibrary
Resource          ../Resources/loginKeywords.robot
Variables         ../PageObjects/loginLocators.py

*** Variables ***
${URL}             https://opensource-demo.orangehrmlive.com/web/index.php/auth/login
${BROWSER}         Chrome
${USERNAME_VALUE}  Admin
${PASSWORD_VALUE}  admin123

*** Test Cases ***
Valid Login
    [Documentation]    Test case for valid login
    Open Login Page    ${URL}    ${BROWSER}
    Enter Username     ${USERNAME_VALUE}
    Enter Password     ${PASSWORD_VALUE}
    Click Login Button
    Verfy Login Success  
    Tear Down   
