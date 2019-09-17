*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ADDRESS_FORM_HEADER_NAME} =  xpath=//h1[@class='page-subheading']
${ADDITIONAL_INFORMATION_FIELD} =  id=other
${ADDRESS1_FIELD} =  id=address1
${ADDRESS2_FIELD} =  id=address2
${ADDRESS_HEADER_TEXT} =  YOUR ADDRESSES
${ADD_NEW_ADDRESS_BUTTON} =  xpath=//a[@title='Add an address']
${ALIAS_FIELD} =  id=alias
${CITY_FIELD} =  id=city
${COUNTRY_FIELD} =  id=id_country
${FIRST_ADDRESS_HEADERNAME} =  //div[@class='bloc_adresses row']/div[1]/ul/li[1]/h3
${SECOND_ADDRESS_HEADERNAME} =  //div[@class='bloc_adresses row']/div[2]/ul/li[1]/h3
${MOBILE_NUMBER_FIELD} =  id=phone_mobile
${MY_ADDRESSES_BUTTON} =  xpath=//a[@title='Addresses']
${PHONE_NUMBER_FIELD} =  id=phone
${POSTCODE_FIELD} =  id=postcode
${SAVE_ADDRESS_BUTTON} =  id=submitAddress
${STATE_FIELD} =  id=id_state


*** Keywords ***
Enter "Address" Field Value
    [Arguments]  ${address1}
    input text  ${ADDRESS1_FIELD}  ${address1}

Enter "Address Line 2" Field Value
    [Arguments]  ${address2}
    input text  ${ADDRESS2_FIELD}  ${address2}

Enter "City" Field Value
    [Arguments]  ${city}
    input text  ${CITY_FIELD}  ${city}

Select "State" Field Value
    [Arguments]  ${state}
    select from list by label  ${STATE_FIELD}  ${state}

Enter "Post Code" Field Value
    [Arguments]  ${post_code}
    input text  ${POSTCODE_FIELD}  ${post_code}

Select "Country" Field Value
    [Arguments]  ${country}
    select from list by label  ${COUNTRY_FIELD}  ${country}

Enter "Additional Information" Field Value
    [Arguments]  ${additional_information}
    input text  ${ADDITIONAL_INFORMATION_FIELD}  ${additional_information}

Enter "Phone Number" Field Value
    [Arguments]  ${phone_number}
    input text  ${PHONE_NUMBER_FIELD}  ${phone_number}

Enter "Mobile Number" Field Value
    [Arguments]  ${mobile_number}
    input text  ${MOBILE_NUMBER_FIELD}  ${mobile_number}

Clear Alias Field
    clear element text  ${ALIAS_FIELD}

Enter "Alias" Field Value
    [Arguments]  ${alias}
    input text  ${ALIAS_FIELD}  ${alias}

Click My Addresses
    click element  ${MY_ADDRESSES_BUTTON}

Click Add New Address
    click element  ${ADD_NEW_ADDRESS_BUTTON}

Verify Address Form Header
    element text should be  ${ADDRESS_FORM_HEADER_NAME}  ${ADDRESS_HEADER_TEXT}

Click "Save" Address
    click button  ${SAVE_ADDRESS_BUTTON}

#Get Total Addresses
#    get element count  xpath=//div[@class='bloc_adresses row']/div

Verify First Address Name
    [Arguments]  ${address1_alias}
    element text should be  ${FIRST_ADDRESS_HEADERNAME}  ${address1_alias}

Verify Second Address Name
    [Arguments]  ${address2_alias}
    element text should be  ${SECOND_ADDRESS_HEADERNAME}  ${address2_alias}