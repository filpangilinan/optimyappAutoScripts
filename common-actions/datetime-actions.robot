#---------- REUSABLE DATETIME KEYWORDS ----------#
#------- CAN BE COMBINED OR SINGLE ACTIONS ------#
*** Settings ***
Library  DateTime

*** Keywords ***
Subtract Date From Date
    [Arguments]  ${date1}  ${date2}
    ${date}=  DateTime.Subtract Date From Date  ${date1}  ${date2}
    [Return]  ${date}



