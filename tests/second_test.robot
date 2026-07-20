*** Settings ***
Library    Browser

*** Variables ***
${URL}  https://www.saucedemo.com

*** Test Cases ***
Load SauceDemo Homepage
    New Browser    chromium    headless=False
    New Page    ${URL}
    Sleep    10s    # Pause for 10 seconds
    ${title}=    Get Title
    Should Be Equal    ${title}    Swag Labs
    Close Browser
