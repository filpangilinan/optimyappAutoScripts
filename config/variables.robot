*** Variables ***
#---------- CORE VARIABLES ----------#

${chromedriver22_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-22.exe
${chromedriver25_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-25.exe
${chromedriver27_path}      ${CURDIR}\\..\\webdrivers\\chromedriver2-27.exe
${chromedriver70_path}      ${CURDIR}\\..\\webdrivers\\chromedriver70.exe
${chromedriver79_path}      ${CURDIR}\\..\\webdrivers\\chromedriver79.exe
${chromedriver87_path}      ${CURDIR}\\..\\webdrivers\\chromedriver87.exe
${chromedriver89_path}      ${CURDIR}\\..\\webdrivers\\chromedriver89.exe

#---------- OPTIMYAPP LOCATORS ----------#

${btnLogin}             //button[@type="submit"]
${lblEmailValidation}   //span[@for="email"]
${lblEmail1}            //span[@for="email" and contains(text(), "This field is required.")]
${lblEmail2}            //span[@for="email" and contains(text(), "Please enter a valid email address (e.g.: john.smith@gmail.com).")]
${lblErrorMsg}          //div[@id="login-invalid"]
${lblErrorMsg1}         //span[@class="fui-alert"]//parent::div[contains(text(), "The email address or password is incorrect.")]
${lblErrorMsg2}         //span[@class="fui-alert"]//parent::div[@id="login-too-many-attempts"]
${lblErrorMsg3}         //span[@class="fui-alert"]//parent::div[@id="login-invalid"]
${lblPassword}          //span[@for="password" and contains(text(), "This field is required.")]
${txtPassword}          //input[@type='password']
${txtEmail}             //input[@name='email']
${lnkLostPw}            //a[contains(text(), "Lost password?")]
${btnRecAccess}         //button[contains(text(), "Recover my access")]
${btnRecAccess2}        //button[@type="submit"]
${btnRecAccess3}        //*[@id="tab-recovery-ask"]/form/button

#---------- OPTIMYAPP VARIABLES ----------#

${loginURL}            https://login.optimyapp.com/
${textPassword}        samplePassword
${textEmail}           sampleEmail@gmail.com
${textEmail2}           sampleEmail1@gmail.com
${invalidTextEmail}    sampleEmail
${notExistingEmail}    notExistingEmail@gmail.com

