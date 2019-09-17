*** Settings ***
Resource  ..//Resources/PO/AccountDetailsPO.robot
Resource  ..//Resources/PO/AddressDetailsPO.robot
Resource  ..//Resources/PO/MenuPO.robot
Resource  ..//Resources/PO/LoginPagePO.robotD
Documentation  Use this layer to get date from external files
Library  ../CustomLibs/Csv.py


*** Keywords ***
Get CSV Data
    [Arguments]  ${FilePath}
    ${Data} =  read csv file  ${FilePath}
    [Return]  ${Data}