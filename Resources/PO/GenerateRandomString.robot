*** Settings ***
Library  String
Library  DateTime

*** Variables ***
${LOWER} =  zxcvbnmasdfghjklqwertyuiop
${UPPER} =  QWERTYUIOPASDFGHJKLZXCVBNM
${LETTERS} =  ${LOWER}${UPPER}
${NUMBERS} =  0123456789
${DAYS} =  1  2  3  4  5  6  7  8  9  10  11  12  13  14  15  16  17  18  19  20  21  22  23  24  25  26  27  28  29  30
@{MONTHS} =  1  2  3  4  5  6  7  8  9  10  11  12
#@{MONTHS} =  '1'  '2'  '3'  '4'  '5'  '6'  '7'  '8'  '9'  '10'  '11'  '12'
${SUBTRACT_YEARS} =  18  19  20  21  22  23  24  25  26  27  28  29  30  31  32  33  34  35  36  37  38  39  40  41  42  43  44  45  46  47  48  49  50


*** Keywords ***
Generate first name
    ${result} =  generate random string  8  ${LETTERS}${NUMBERS}
    [Return]  Person${result}

Generate last name
    ${result} =  generate random string  10  ${LETTERS}${NUMBERS}
    [Return]  Dela ${result}

Generate email address
    ${result} =  generate random string  12  ${LETTERS}${NUMBERS}
    ${email} =  catenate  SEPARATOR=   ${result}  @gmail.com
    [Return]  ${email}

Generate password
    ${result} =  generate random string  15  ${LETTERS}${NUMBERS}
    [Return]  ${result}

Generate company name
    ${result} =  generate random string  10  ${LETTERS}${NUMBERS}
    [Return]  Company ${result}

Select day in a list
    ${value}=  Evaluate  random.choice($DAYS)  random
#    ${result} =  Evaluate  generate random string  1  ${DAYS}
    [Return]  ${value}

Select month in a list
    ${value}=  Evaluate  random.choice($MONTHS)  random
#    ${value} =  generate random string  1  ${MONTHS}
    [Return]  ${value}

Select year in a list
    ${value} =  Evaluate  random.choice($SUBTRACT_YEARS)  random
    ${current_year} =  Get Time  year  now
    ${converted_year} =  convert to integer  ${current_year}
    ${converted_subtract_year} =  convert to integer  ${value}
    ${subtract} =  evaluate  ${converted_year}-${converted_subtract_year}
    [Return]  ${subtract}
