#---------- REUSABLE SELENIUM KEYWORDS ----------#
#------- CAN BE COMBINED OR SINGLE ACTIONS ------#
*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Chrome Browser
    [Arguments]  ${url}  ${driver_path}
    SeleniumLibrary.Open Browser  ${url}  Chrome  executable_path=${driver_path}

Close Browser
    SeleniumLibrary.Close Browser

Click Element
    [Arguments]  ${locator}
    SeleniumLibrary.Click Element  ${locator}

Force Click Element
    [Arguments]  ${locator}
    SeleniumLibrary.Click Element  ${locator}  action_chain=True

Wait Until Page Contains Element
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Page Contains Element  ${locator}  ${timeout}

Wait Until Page Does Not Contain Element
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Page Does Not Contain Element  ${locator}  ${timeout}

Wait Until Element is Visible
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Element is Visible  ${locator}  ${timeout}

Wait Until Element is Enabled
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Element is Enabled  ${locator}  ${timeout}

Scroll Element Into View
    [Arguments]  ${locator}
    SeleniumLibrary.Scroll Element Into View  ${locator}

Wait then Click
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Page Contains Element  ${locator}  ${timeout}
    SeleniumLibrary.Click Element  ${locator}

Wait then Force Click
    [Arguments]  ${locator}  ${timeout}
    SeleniumLibrary.Wait Until Page Contains Element  ${locator}  ${timeout}
    SeleniumLibrary.Click Element  ${locator}  action_chain=True

Input Text
    [Arguments]  ${locator}  ${text}
    SeleniumLibrary.Input Text  ${locator}  ${text}

Press Keys
    [Arguments]  ${locator}  ${key}
    SeleniumLibrary.Press Keys  ${locator}  ${key}

Get Element Count
    [Arguments]  ${locator}
    ${count}=  SeleniumLibrary.Get Element Count  ${locator}
    [Return]  ${count}

Get Text
    [Arguments]  ${locator}
    ${text}=  SeleniumLibrary.Get Text  ${locator}
    [Return]  ${text}