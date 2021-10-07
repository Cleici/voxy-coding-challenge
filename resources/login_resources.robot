*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${email}    gibberish@gmail.com
${url}      https://web-stage.voxy.com/v2/#/login/
${inumber}  800-444-4444


*** Keywords ***
Open test
    Open Browser

Close Test
    Close Browser

Scenario 01: Invalid email verification
Fill in the field "email" with a non-existing email account
    Go To    ${url}
    Input Text    xpath=//*[@id="login_form_email_input_field"]   ${email}

Click the button "Continue"
    Click Button  xpath=//*[@id="login_form_submit_button"]
    Set Selenium Speed    1 seconds
    Wait Until Element Is Visible    xpath=//*[@id="modals-container"]/div/div/div[2]/div

Click "Try again"
    Click Button    xpath=//*[@id="modals-container"]/div//div[2]//div[2]/button

Scenario 02: Invalid number verification
Click the radio button "Mobile Number"
    Go To               ${url}
    Click Element       xpath=//*[@id="login_form_field_phone"]/label/i

Insert the number 800-444-4444
    Input Text    xpath=//*[@id="voxy-login"]//div//div/form//div[2]/div/div/input  ${inumber}

Click the "Continue" button
    Click Button  xpath=//*[@id="login_form_submit_button"]
    Set Selenium Speed    1 seconds
    Wait Until Element Is Visible    xpath=//*[@id="modals-container"]/div/div/div[2]/div

Click the "Try again" button
    Click Button    xpath=//*[@id="modals-container"]/div//div[2]//div[2]/button
