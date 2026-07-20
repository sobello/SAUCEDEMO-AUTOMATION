*** Settings ***
Library    Browser
 
*** Variables ***
${USERNAME_INPUT}    id=user-name
${PASSWORD_INPUT}    id=password
${LOGIN_BUTTON}      id=login-button
${ERROR_MESSAGE}     css=[data-test="error"]
 
*** Keywords ***
Enter Username
    [Arguments]    ${username}
    Fill Text    ${USERNAME_INPUT}    ${username}
 
Enter Password
    [Arguments]    ${password}
    Fill Text    ${PASSWORD_INPUT}    ${password}
 
Click Login Button
    Click    ${LOGIN_BUTTON}
 
Login To SauceDemo
    [Arguments]    ${username}    ${password}
    Enter Username    ${username}
    Enter Password    ${password}
    Click Login Button
 
Verify Login Error
    [Arguments]    ${expected_message}
    Get Text    ${ERROR_MESSAGE}    contains    ${expected_message}
 