*** Settings ***
Resource  ..//Resources/PO/AccountDetailsPO.robot
Resource  ..//Resources/PO/AddressDetailsPO.robot
Resource  ..//Resources/PO/MenuPO.robot
Resource  ..//Resources/PO/LoginPagePO.robot
Resource  ..//Resources/LoginActionApp.robot

*** Variables ***


*** Keywords ***
Verify and click "Sign In" button
    MenuPO.Verify Page Loaded
#    MenuPO.Click "Sign In" Button
    wait until keyword succeeds  1 minute  5 sec  MenuPO.Click "Sign In" Button

#Account basic information
Enter basic account details

    [Arguments]  @{account_details}
    Verify The Account First Name Field Display
    Select Title Value  @{account_details}[0]
#    Select Title Value
    Enter "First Name" Field Value  @{account_details}[1]
    Enter "Last Name" Field Value  @{account_details}[2]
    Verify "Email" Field Value  @{account_details}[3]
    Enter "Password" Field Value  @{account_details}[4]
    Select "Day" Value  @{account_details}[5]
    Select "Month" Value  @{account_details}[6]
    Select "Year" Value  @{account_details}[7]
    Enter "Company Name" Field Value  @{account_details}[8]


# (First name, last name and company name)
Verify account details
    [Arguments]  ${first_name_data}  ${last_name_data}  ${company_name_data}
    Verify Firstname Field Value  ${first_name_data}
    Verify Lastname Field Value  ${last_name_data}
    Verify Company Field Value  ${company_name_data}


Verify "Account name" and "Sign out" in menu header
    [Arguments]  ${first_name}  ${last_name}
    Verify Account Name Displayed In Menu Header  ${first_name} ${last_name}
    wait until keyword succeeds  1 minute  5 sec  Verify Sign Out Displayed In Menu Header


# Account address
Enter account address and click register
    [Arguments]  @{account_address_details}
    Account address details  @{account_address_details}
    wait until keyword succeeds  1 minute  5 sec  AccountDetailsPO.Click Register Button


Account address details
    [Arguments]  @{account_address_details}
    AddressDetailsPO.Enter "Address" Field Value  @{account_address_details}[0]
    AddressDetailsPO.Enter "Address Line 2" Field Value  @{account_address_details}[1]
    AddressDetailsPO.Enter "City" Field Value  @{account_address_details}[2]
    AddressDetailsPO.Select "state" field value  @{account_address_details}[3]
    AddressDetailsPO.Enter "Post Code" Field Value  @{account_address_details}[4]
    AddressDetailsPO.Select "Country" Field Value  @{account_address_details}[5]
    AddressDetailsPO.Enter "Additional Information" Field Value  @{account_address_details}[6]
    AddressDetailsPO.Enter "Phone Number" Field Value  @{account_address_details}[7]
    AddressDetailsPO.Enter "Mobile Number" Field Value  @{account_address_details}[8]
    AddressDetailsPO.Clear Alias Field
    AddressDetailsPO.Enter "Alias" Field Value  @{account_address_details}[9]

# Account New Address
Verify addresses then sign out
    [Arguments]  ${alias1_address}  ${alias2_address}
    Verify created addresses  ${alias1_address}  ${alias2_address}
    wait until keyword succeeds  1 minute  5 sec  MenuPO.Click "Sign Out" Button


Navigate to add new address form
    [Arguments]  ${first_name_data}  ${last_name_data}  ${company_name_data}
    AddressDetailsPO.Click My Addresses
    wait until keyword succeeds  1 minute  5 sec  AddressDetailsPO.Click Add New Address
    AddressDetailsPO.Verify Address Form Header
    Verify account details  ${first_name_data}  ${last_name_data}  ${company_name_data}


Add new address details
    [Arguments]  @{account_address_details}
    Account address details  @{account_address_details}
    wait until keyword succeeds  1 minute  5 sec  AddressDetailsPO.Click "Save" Address

Verify the displayed addresses


Verify created addresses
    [Arguments]  ${alias1_address}  ${alias2_address}
    Verify First Address Name  ${alias1_address}
    Verify Second Address Name  ${alias2_address}