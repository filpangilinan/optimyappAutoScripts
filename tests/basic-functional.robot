*** Settings ***
Resource  ../../optimyappAutoScripts/config/variables.robot
Resource  ../../optimyappAutoScripts/config/keywords.robot

Library   DateTime

#Suite Setup  Run Keywords  Remove Screenshots
Test Setup  Open Chrome Browser  ${loginURL}  ${chromedriver89_path}
Test Teardown  Run Keywords  Close Browser

*** Test Cases ***

# ---------------------- Negative Scenario Test Cases ---------------------- #

login.optimyapp - Negative Scenarios - Username and Password - Empty field
    [Tags]  login  login1
    Clicking Login button with empty Username and Password field

login.optimyapp - Negative Scenarios - Username - Empty field
    [Tags]  login  login2
    Clicking Login button with valid Password and without Username

login.optimyapp - Negative Scenarios - Password - Empty field
    [Tags]  login  login3
    Clicking Login button with valid Username and blank Password

login.optimyapp - Negative Scenarios - Invalid Username format
    [Tags]  login  login4
    Clicking Login button with invalid Username format

login.optimyapp - Negative Scenarios - Incorrect Email or Password
    [Tags]  login  login5
    Clicking Login button with incorrect Email or Password

login.optimyapp - Negative Scenarios - Spamming of Login button with inputted valid Username and Password format
    [Tags]  login  login6
    Continuous clicking of Login button with correct Username and Password format


#login.optimyapp - Negative Scenarios - Logging in Expired Trial Account
    # IF I HAVE DATA FOR AN EXPIRED TRIAL USER ACCOUNT

#login.optimyapp - Negative Scenarios - Logging in an Account with Expired Password
    # IF I HAVE DATA FOR AN ACCOUNT WITH AN EXPIRED PASSWORD


login.optimyapp - Negative Scenarios - Clicking "Recover my access" button without inputting valid Email
    [Tags]  login  login7
    Clicking "Recover my access" button with Empty Email

login.optimyapp - Negative Scenarios - Clicking "Recover my access" button with inputted invalid Email
    [Tags]  login  login8
    Clicking "Recover my access" button with an invalid Email


