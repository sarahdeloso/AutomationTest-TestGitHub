*** Settings ***
Resource  ../Resources/PO/LoginPagePO.robot
Resource  ../Resources/PO/MenuPO.robot


*** Keywords ***

Begin Test
    [Arguments]  ${BROWSER_TYPE}  ${TEST_URL}
    LoginPagePO.Open Web Browser  ${BROWSER_TYPE}
    LoginPagePO.Page Load  ${TEST_URL}
    MenuPO.Verify Page Loaded

End Test
    LoginPagePO.Close The Browser