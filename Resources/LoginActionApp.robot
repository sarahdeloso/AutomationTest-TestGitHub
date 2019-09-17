*** Settings ***
Resource  ..//Resources/PO/LoginPagePO.robot
Resource  ..//Resources/PO/MenuPO.robot

*** Keywords ***
Enter "Email address" to register new account
    [Arguments]  ${email_address}
    LoginPagePO.Enter "Email Address" To Register  ${email_address}
    LoginPagePO.Click "Create an account" Button
    sleep  5

Sign out then login
    [Arguments]  ${email_address}  ${password}
    MenuPO.Click "Sign Out" Button
    Login with valid credentials  ${email_address}  ${password}
    sleep  3

Login with valid credentials
    [Arguments]  ${email_address}  ${password}
    LoginPagePO.Enter "Email Address" To Login  ${email_address}
    LoginPagePO.Enter "Password" To Login  ${password}
    LoginPagePO.Click "Sign in" Button To Login

