*** Settings ***
Documentation  This is Automation testing suite
Resource  ..//Resources/CommonApp.robot
Resource  ..//Resources/LoginActionApp.robot
Resource  ..//Resources/AccountInformationApp.robot
Resource  ..//Resources/DataManager.robot
Resource  ..//Resources/Database/InputData.robot

Test Setup  CommonApp.Begin Test  ${BROWSER_TYPE}  ${TEST_URL}
Test Teardown  CommonApp.End Test

*** Variables ***



*** Test Cases ***

User should be able to create first customer account
#    [Documentation]  This the first customer account
    @{account_details} =  create list  MRS  SarahFaye  fernandezrobot  sarahfayefernandezrobot1@gmail.com  Password01  3  5  1990  Company testing only
    @{account_address_details} =  create list  Clark  Pampanga  Angeles City  Hawaii  96701  United States  Testing additional information field 1  09151236547  09151236547  MY FIRST ADDRESS
    @{account_address2_details} =  create list  Clark  Pampanga  Angeles City  Hawaii  96701  United States  Testing additional information field 2  09151236547  09151236547  MY SECOND ADDRESS


    [Tags]  CurrentOne
    AccountInformationApp.Verify and click "Sign In" button
    LoginActionApp.Enter "Email address" to register new account  @{account_details}[3]
    Enter basic account details  @{account_details}
    Verify account details  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Enter account address and click register  @{account_address_details}
    Verify "Account name" and "Sign out" in menu header  @{account_details}[1]  @{account_details}[2]
    LoginActionApp.Sign out then login  @{account_details}[3]  @{account_details}[4]
    Navigate to add new address form  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Add new address details  @{account_address2_details}
    Verify addresses then sign out  @{account_address_details}[9]  @{account_address2_details}[9]

User should be able to create second customer account
    @{account_details} =  create list  MR  ZorroBoy  DelaTestCruz  zorroboydelatestcruz@gmail.com  Password01  3  5  1990  Company Sarahtesting only
    @{account_address_details} =  create list  Clark1  Pampanga1  Angeles City1  Hawaii  96701  United States  Testing additional information field 1  09151236547  09151236547  MY FIRST ADDRESS
    @{account_address2_details} =  create list  Clark2  Pampanga2  Angeles City2  Hawaii  96701  United States  Testing additional information field 2  09151236547  09151236547  MY SECOND ADDRESS
#    [Documentation]  This the second customer account
    [Tags]  CurrentTwo
    AccountInformationApp.Verify and click "Sign In" button
    LoginActionApp.Enter "Email address" to register new account  @{account_details}[3]
    Enter basic account details  @{account_details}
    Verify account details  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Enter account address and click register  @{account_address_details}
    Verify "Account name" and "Sign out" in menu header  @{account_details}[1]  @{account_details}[2]
    LoginActionApp.Sign out then login  @{account_details}[3]  @{account_details}[4]
    Navigate to add new address form  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Add new address details  @{account_address2_details}
    Verify addresses then sign out  @{account_address_details}[9]  @{account_address2_details}[9]

User should be able to create third customer account

    @{account_details} =  create list  MRS  SarahDiane  TestingSantos  sarahdianetestingsantos01@gmail.com  Password01  3  5  1990  Company Sarahtesting only
    @{account_address_details} =  create list  Clark1  Pampanga1  Angeles City1  Hawaii  96701  United States  Testing additional information field 1  09151236547  09151236547  MY FIRST ADDRESS
    @{account_address2_details} =  create list  Clark2  Pampanga2  Angeles City2  Hawaii  96701  United States  Testing additional information field 2  09151236547  09151236547  MY SECOND ADDRESS
#    [Documentation]  This the third customer account
    [Tags]  CurrentThree
    AccountInformationApp.Verify and click "Sign In" button
    LoginActionApp.Enter "Email address" to register new account  @{account_details}[3]
    Enter basic account details  @{account_details}
    Verify account details  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Enter account address and click register  @{account_address_details}
    Verify "Account name" and "Sign out" in menu header  @{account_details}[1]  @{account_details}[2]
    LoginActionApp.Sign out then login  @{account_details}[3]  @{account_details}[4]
    Navigate to add new address form  @{account_details}[1]  @{account_details}[2]  @{account_details}[8]
    Add new address details  @{account_address2_details}
    Verify addresses then sign out  @{account_address_details}[9]  @{account_address2_details}[9]

