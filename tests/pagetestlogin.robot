*** Settings ***
Library    Browser
Resource    ../resources/pages/InventoryPage.resource
Resource    ../resources/pages/LoginPage.resource
 
*** Test Cases ***
Load SauceDemo Homepage
    New Browser    chromium    headless=False
    New Page    https://www.saucedemo.com
    Sleep    2s    # Pause for 2 seconds
    Login To SauceDemo    standard_user    secret_sauce
    Verify Inventory Page Is Displayed
    Close Browser
