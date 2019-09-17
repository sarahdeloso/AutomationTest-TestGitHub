*** Settings ***
Library  DatabaseLibrary


*** Variables ***
${DB_NAME}
${DB_USER_NAME}
${DB_USER_PASSWORD}
${DB_HOST}
${DB_PORT}

*** Keywords ***

Connect to the database
    Connect To Database  pymssql  ${DB_NAME}  ${DB_USER_NAME}  ${DB_USER_PASSWORD}  ${DB_HOST}  ${DB_PORT}

Get basic account information by account id
    [Arguments]  ${account_id}
    @{account_details} =  execute sql string  Select * from AccountInformation where AccountId = ${account_id};