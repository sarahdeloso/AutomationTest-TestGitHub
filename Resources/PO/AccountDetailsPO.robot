*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${ACCOUNT_SECTION_FIRSTNAME_FIELD} =  id=customer_firstname
${ACCOUNT_SECTION__LASTNAME_FIELD} =  id=customer_lastname
${ADDRESS_SECTION_COMPANY_NAME} =  id=company
${ADDRESS_SECTION_COMPANY_NAME_OVERRIDE_MESSAGE} =  Company field value was different from the entered company value above
${ADDRESS_SECTION_FIRST_NAME} =  id=firstname
${ADDRESS_SECTION_FIRST_NAME_OVERRIDE_MESSAGE} =  Name field value was different from the entered name value above
${ADDRESS_SECTION_LAST_NAME} =  id=lastname
${ADDRESS_SECTION_LAST_NAME_OVERRIDE_MESSAGE} =  Lastname field value was different from the entered lastname value above
${COMPANY_NAME_FIELD} =  id=company
${DAY_FIELD} =  id=days
${EMAIL_FIELD} =  id=email
${EMAIL_FIELD_OVERRIDE_MESSAGE} =  Email field value was different from the entered email value
${MONTH_FIELD} =  id=months
${PASSWORD_FIELD} =  id=passwd
${REGISTER_BUTTON} =  id:submitAccount
${TITLE_MR} =  xpath=//*[@id="uniform-id_gender1"]
${TITLE_MRS} =  xpath=//*[@id="uniform-id_gender2"]
${YEARS_FIELD} =  id=years

*** Keywords ***
Select Title MR
    click element  ${TITLE_MR}

Select Title MRS
    click element  ${TITLE_MRS}

Select Title Value
    [Arguments]  ${person_title}
    run keyword if  '${person_title}' == 'MR'  Select Title MR
    run keyword if  '${person_title}' == 'MRS'  Select Title MRS

Verify The Account First Name Field Display
    wait until element is visible  ${ACCOUNT_SECTION_FIRSTNAME_FIELD}

Enter "First Name" Field Value
    [Arguments]  ${first_name}
    input text  ${ACCOUNT_SECTION_FIRSTNAME_FIELD}  ${first_name}

Enter "Last Name" Field Value
    [Arguments]  ${last_name}
    input text  ${ACCOUNT_SECTION__LASTNAME_FIELD}  ${last_name}

Verify "Email" Field Value
    [Arguments]  ${email_address}
    textfield value should be  ${EMAIL_FIELD}  ${email_address}  ${EMAIL_FIELD_OVERRIDE_MESSAGE}

Enter "Password" Field Value
    [Arguments]  ${password}
    input text  ${PASSWORD_FIELD}  ${password}

Select "Day" Value
    [Arguments]  ${days_value}
    select from list by value  ${DAY_FIELD}  ${days_value}

Select "Month" Value
    [Arguments]  ${month_value}
    select from list by value  ${MONTH_FIELD}  ${month_value}

Select "Year" Value
    [Arguments]  ${year_value}
    select from list by value  ${YEARS_FIELD}  ${year_value}

Enter "Company Name" Field Value
    [Arguments]  ${company_name}
    input text  ${COMPANY_NAME_FIELD}  ${company_name}

Verify Firstname Field Value
    [Arguments]  ${first_name}
    textfield value should be  ${ADDRESS_SECTION_FIRST_NAME}  ${first_name}  ${ADDRESS_SECTION_FIRST_NAME_OVERRIDE_MESSAGE}

Verify Lastname Field Value
    [Arguments]  ${last_name}
    textfield value should be   ${ADDRESS_SECTION_LAST_NAME}  ${last_name}  ${ADDRESS_SECTION_LAST_NAME_OVERRIDE_MESSAGE}

Verify Company Field Value
    [Arguments]  ${company_name}
    textfield value should be   ${ADDRESS_SECTION_COMPANY_NAME}  ${company_name}  ${ADDRESS_SECTION_COMPANY_NAME_OVERRIDE_MESSAGE}

Click Register Button
     click button  ${REGISTER_BUTTON}