*** Settings ***
Library  DatabaseLibrary


*** Variables ***


*** Keywords ***


# BASIC INFO TABLE  | Title, First name, last name,
Get basic account information by account id2
    [Arguments]  ${account_id}
    @{account_details} =  execute sql string  Select  from AccountInformation where AccountId = ${account_id};



Get basic account information by account id
    [Arguments]  ${account_id}
    @{account_details} =  execute sql string  Select * from AccountInformation where AccountId = ${account_id};



