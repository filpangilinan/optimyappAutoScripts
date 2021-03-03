*** Settings ***
Resource  ../../optimyappAutoScripts/config/variables.robot
Resource  ../../optimyappAutoScripts/common-actions/selenium-actions.robot
Resource  ../../optimyappAutoScripts/common-actions/datetime-actions.robot

#---------- LOGICAL KEYWORDS ----------#
*** Keywords ***
Clicking Login button with empty Username and Password field
    Wait Until Page Contains Element  ${btnLogin}  20
    Click Element  ${btnLogin}
    Wait Until Page Contains Element  ${lblEmailValidation}  20
    ${text}=  Get Text  ${lblEmail1}
    Log to console  ----------------------------------
    Log to console  System should display an error message below Username and Password text field:
    Log to console  Username: ${text}
    Log to console  ----------------------------------
    ${text}=  Get Text  ${lblPassword}
    Log to console  Password: ${text}
    Sleep  5

Clicking Login button with valid Password and without Username
    Wait Until Page Contains Element  ${btnLogin}  20
    Input Text  ${txtPassword}  ${textPassword}
    Click Element  ${btnLogin}
    ${text}=  Get Text  ${lblEmail1}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  if the Username field is empty: ${text}
    Log to console  ----------------------------------
    Sleep  5

Clicking Login button with valid Username and blank Password
    Wait Until Page Contains Element  ${btnLogin}  20
    Input Text  ${txtEmail}  ${textEmail}
    Click Element  ${btnLogin}
    ${text}=  Get Text  ${lblPassword}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  if the Password field is empty: ${text}
    Log to console  ----------------------------------
    Sleep  5

Clicking Login button with invalid Username format
    Wait Until Page Contains Element  ${btnLogin}  20
    Input Text  ${txtEmail}  ${invalidTextEmail}
    Input Text  ${txtPassword}  ${textPassword}
    Click Element  ${btnLogin}
    ${text}=  Get Text  ${lblEmail2}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  If the username is in invalid format: ${text}
    Log to console  ----------------------------------
    Sleep  5

Clicking Login button with incorrect Email or Password
    Wait Until Page Contains Element  ${btnLogin}  20
    Input Text  ${txtEmail}  ${notExistingEmail}
    Input Text  ${txtPassword}  ${textPassword}
    Click Element  ${btnLogin}
    ${text}=  Get Text  ${lblErrorMsg3}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  If either Email and Password is incorrect: "The email address or password is incorrect."
    Log to console  ----------------------------------
    Sleep  5

Continuous clicking of Login button with correct Username and Password format
    Wait Until Page Contains Element  ${btnLogin}  20
    Input Text  ${txtEmail}  ${textEmail2}
    Input Text  ${txtPassword}  ${textPassword}
    FOR  ${ctr}  IN RANGE  10
        Click Element  ${btnLogin}
        ${status}=  Run Keyword and Return Status  Wait Until Element is Visible  ${lblErrorMsg2}  5
        Exit For Loop If  '${status}'=='True'
    END
    ${text}=  Get Text  ${lblErrorMsg2}
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  If either Email and Password is incorrect: "This account has been locked due to too many failed login attempts."
    Log to console  ----------------------------------
    Sleep  5

Clicking "Recover my access" button with Empty Email
    Wait Until Page Contains Element  ${lnkLostPw}  20
    Click Element  ${lnkLostPw}
    Input Text  ${txtEmail}  D
    Press Keys  None  \ue003
    ${text}=  Get Text  //span[@for="email"]
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  ${text}
    Log to console  ----------------------------------
    Sleep  5

Clicking "Recover my access" button with an invalid Email
    Wait Until Page Contains Element  ${lnkLostPw}  20
    Click Element  ${lnkLostPw}
    Input Text  ${txtEmail}  ${invalidTextEmail}
    Press Keys  None  ENTER
    ${text}=  Get Text  //span[@for="email"]
    Log to console  ----------------------------------
    Log to console  System should display an error message:
    Log to console  ${text}
    Log to console  ----------------------------------
    Sleep  5


Remove Screenshots
    Remove Files  ${CURDIR}\\..\\selenium-screenshot*

Javascript Click Hidden Elements
    [Arguments]  ${locator}
    ${locator}=  Replace String  ${locator}  \"  \\\"
    Execute JavaScript  document.evaluate("${locator}", document, null, XPathResult.ORDERED_NODE_SNAPSHOT_TYPE, null).snapshotItem(0).click();