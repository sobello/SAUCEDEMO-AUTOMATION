*** Settings ***
Library    Browser
 
*** Variables ***
${INVENTORY_TITLE}      css=.title
${PRODUCT_ITEMS}        css=.inventory_item
${BACKPACK_BUTTON}      id=add-to-cart-sauce-labs-backpack
${CART_BADGE}           css=.shopping_cart_badge
 
*** Keywords ***
Verify Inventory Page Is Displayed
    Get Url    contains    inventory.html
    Get Text    ${INVENTORY_TITLE}    ==    Products
 
Verify Products Are Displayed
    ${count}=    Get Element Count    ${PRODUCT_ITEMS}
    Should Be True    ${count} > 0
 
Add Backpack To Cart
    Click    ${BACKPACK_BUTTON}
 
Verify One Product Is In Cart
    Get Text    ${CART_BADGE}    ==    1

    