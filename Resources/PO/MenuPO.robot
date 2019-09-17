*** Settings ***
Documentation  This is Menu Page Object class
Library  SeleniumLibrary

*** Variables ***
${ACCOUNT_NAME_HEADERTEXT_ELEMENT} =  xpath=//a[@class='account']/span
${ACCOUNTNAME_HEADER_OVERRIDE_MESSAGE} =  Created account was not displayed on the header menu
${SIGNOUT_HEADERTEXT_ELEMENT} =  xpath=//a[@class='logout']
${SIGNOUT_HEADER_OVERRIDE_MESSAGE} =  Sign out text was not displayed on the header menu
${SIGN_IN_LINK} =  Sign in
${SIGN_OUT_LINK} =  Sign out

*** Keywords ***
Click "Sign In" Button
    click link  ${SIGN_IN_LINK}

Verify Page Loaded
    wait until page contains  ${SIGN_IN_LINK}

Click "Sign Out" Button
    click link  ${SIGN_OUT_LINK}

Verify Account Name Displayed In Menu Header
    [Arguments]  ${account_name}
    element text should be  ${ACCOUNT_NAME_HEADER_ELEMENT}  ${account_name}  ${ACCOUNTNAME_HEADER_OVERRIDE_MESSAGE}

Verify Sign Out Displayed In Menu Header
    element should contain  ${SIGNOUT_MENUTEXT_ELEMENT}  ${SIGN_OUT_LINK}  ${SIGNOUT_HEADER_OVERRIDE_MESSAGE}