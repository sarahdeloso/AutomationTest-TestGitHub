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

Testing sample
    Log  testing log