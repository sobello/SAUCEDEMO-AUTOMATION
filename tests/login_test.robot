*** Settings ***
Library    Browser

*** Variables ***
${URL}         https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Load SauceDemo Homepage and Login
    New Browser    chromium    headless=False
    New Page    ${URL}
    Sleep    10s    # Pause for 10 seconds
    ${title}=    Get Title
    Should Be Equal    ${title}    Swag Labs

    # Click    [data-test="login-credentials"]

    Click    [data-test="username"]
    Fill Text    [data-test="username"]    ${USERNAME}
    Click    [data-test="password"]
    Fill Text    [data-test="password"]    ${PASSWORD}

    Click    [data-test="login-button"]
    Click    [data-test="add-to-cart-sauce-labs-bike-light"]
    Sleep    10s    # Pause for 10 seconds

    Close Browser