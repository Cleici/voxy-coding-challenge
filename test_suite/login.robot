*** Settings ***
Resource        ../resources/login_resources.robot
Test Setup      Open browser
# Test Teardown   Close browser

*** Test cases  ***

Scenario 01: Invalid email verification
    Fill in the field "email" with a non-existing email account
    Click the button "Continue"
    Click "Try again"

Scenario 02: Invalid number verification
    Click the radio button "Mobile Number"
    Insert the number 800-444-4444
    Click the "Continue" button
    Click the "Try again" button
