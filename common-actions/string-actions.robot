#---------- REUSABLE STRING KEYWORDS ----------#
#------- CAN BE COMBINED OR SINGLE ACTIONS ------#
*** Settings ***
Library  String

*** Keywords ***
Fetch From Right
    [Arguments]  ${string}  ${marker}
    ${text}=  String.Fetch From Right  ${string}  ${marker}
    [Return]  ${text}

Fetch From Left
    [Arguments]  ${string}  ${marker}
    ${text}=  String.Fetch From Left  ${string}  ${marker}
    [Return]  ${text}

