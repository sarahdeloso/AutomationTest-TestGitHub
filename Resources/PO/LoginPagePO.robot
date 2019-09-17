*** Settings ***
Documentation  This is the Login Page objects
Library  SeleniumLibrary

*** Variables ***
${ALREADY_REGISTERED_TEXT} =  ALREADY REGISTERED?
${CREATE_ACCOUNT_BUTTON} =  id=SubmitCreate
${CREATE_ACCOUNT_HEADER} =  xpath=//*[@id="create-account_form"]/h3
${CREATE_ACCOUNT_TEXT} =  CREATE AN ACCOUNT
${EMAIL_ADDRESS_TO_LOGIN} =  id=email
${EMAIL_ADDRESS_TO_REGISTER} =  id=email_create
${PASSWORD_TO_LOGIN} =  id=passwd
${REGISTERED_ACCOUNT_HEADER} =  //*[@id="login_form"]/h3
${SIGN_IN_BUTTON_TO_LOGIN} =  id=SubmitLogin

*** Keywords ***
Close The Browser
    close browser

Open Web Browser
    [Arguments]  ${BROWSER_TYPE}
    open browser  about:blank  ${BROWSER_TYPE}

Page Load
    [Arguments]  ${TEST_URL}
    go to  ${TEST_URL}
    maximize browser window

Verify "Create An Account" Header Text
    element text should be  ${CREATE_ACCOUNT_HEADER}  ${CREATE_ACCOUNT_TEXT}  ${CREATE_ACCOUNT_TEXT}

Verify "Already Registered" Header Text
    element text should be  ${REGISTERED_ACCOUNT_HEADER}  ${ALREADY_REGISTERED_TEXT}

# Create An Account objects
Enter "Email Address" To Register
    [Arguments]  ${email_address}
    input text  ${EMAIL_ADDRESS_TO_REGISTER}  ${email_address}

Click "Create an account" Button
    click button  ${CREATE_ACCOUNT_BUTTON}

# Already Registered objects
Enter "Email Address" To Login
    [Arguments]  ${email_address}
    input text  ${EMAIL_ADDRESS_TO_LOGIN}  ${email_address}

Enter "Password" To Login
    [Arguments]  ${password}
    input text  ${PASSWORD_TO_LOGIN}  ${password}

Click "Sign in" Button To Login
    click button  ${SIGN_IN_BUTTON_TO_LOGIN}