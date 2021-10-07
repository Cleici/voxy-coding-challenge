# Introduction

This document covers functional test cases for the https://web-stage.voxy.com/v2/#/login/ login flow.



## Scenario 01: Invalid email verification
### Preconditions:

* Invalid email account (ex: gibberish372@gmail.com).

**Step** | **Description** | **Expected result**
-------- | --------------- | -------------------
1 | Fill in the field "email" with a non-existing email account | Field is filled in accordingly 
2 | Click the button "Continue" | A modal must open, informing the user that it wasnt possible to find the account with the button "Try again" enabled
3 | Click "Try again" | The modal closes and the field "email" is cleared


## Scenario 02: Invalid number verification
### Preconditions: 

* US number format;
* invalid test phone number (ex: US - 800-444-4444).

**Step** | **Description** | **Expected result**
-------- | --------------- | -------------------
1 | Click the radio button "Mobile Number" | Page should display input field that only accepts numbers and the United States flag is automatically selected
2 | Insert the number 800-444-4444 | Number is filled in the input field
3 | Click the button "Continue" | A modal must open, informing the user that it wasnt possible to find the account with the button "Try again" enabled
4 | Click the "Try again" button | The modal closes and the email option is selected


## Scenario 03: Invalid email format verifications
### Preconditions: 

* None.

**Step** | **Description** | **Expected result**
-------- | --------------- | -------------------
1 | Insert any random text in the input field "email" without using the email format (ex: ilikepotatoes) | "Continue" button must be disabled and the field must be highlighted in red
2 | Clear field | Field "email" is cleared
3 | Insert an invalid email with a space in the middle| "Continue" button must be disabled and the field must be highlighted in red
4 | Clear field | Field "email" is cleared
5 | Input only space in the "email" field" | "Continue" button must be disabled and the field must be highlighted in red

## Scenario 04: Invalid number format verifications
### Preconditions:

* US number format;

**Step** | **Description** | **Expected result**
-------- | --------------- | -------------------
1 | Click the radio button "Mobile Number" | Page should display input field that only accepts numbers and the United States flag is automatically selected
2 | Insert letters in the mobile number input field | "Continue" button must be disabled
2 | Click the outside of the mobile number |  Field must be highlighted in red
3 | Insert more than 10 characters in the mobile number field | "Continue" button must be disabled and the field must be highlighted in red


## Scenario 05: Verify if email account is expired (email)
### Preconditions:

* Inactive account (either email or phone number).

**Step** | **Description** | **Expected result**
-------- | --------------- | -------------------
1 | Fill in the field "email" with an expired email (ex: test@email.com)  | Field is filled in accordingly 
2 | Click the button "Continue" | A modal must open, informing the user that the account is expired with the button "Back to login" enabled
3 | Click "Back to login" | The modal closes and the field "email" is cleared
