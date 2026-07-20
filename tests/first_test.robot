*** Settings ***
Library    Browser
 
*** Test Cases ***
Load SauceDemo Homepage
    New Browser    chromium    headless=False
    New Page    https://www.saucedemo.com
    Sleep    10s    # Pause for 10 seconds
    ${title}=    Get Title
    Should Be Equal    ${title}    Swag Labs
    Close Browser

