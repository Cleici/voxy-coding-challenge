# Voxy Coding Challenge

This document will guide the user on how to run the automated tests for the Voxy Coding Challenge for the QA Engineer job offer.


## Summary 

* Tools used
* How to install
  * Python
  * Robot Framework
  * Geckodriver
  * Atom
* Test cases
* How to run automated tests
* Why the test cases were chosen




## Tools used

* Latest version of Python : hhttps://www.python.org/downloads/
* Robot Framework: https://robotframework.org/#introduction
* Latest version of Gecko Driver: https://github.com/mozilla/geckodriver/releases
* Atom https://atom.io/

## How to install

### Python

Go to https://www.python.org/downloads/
Click "download" on the latest version listed
Download said version, according to your OS.

### Robot Framework

In order to install robot, first you need to have the latest version of python installed on your computer.

* Open your cmd or powershell and type ```pip install robotframework```
* The cmd will inform that robot was installed successfully.
* Now, still on the cmd, run the command ```pip install --upgrade robotframework-seleniumlibrary``` to install the Selenium library, in order for robot to use it's keywords.

### Geckodriver

* Go to https://github.com/mozilla/geckodriver/releases
* Click "Latest release";
* Download said release;
* The zip file will be located in your download folder. Unzip it and paste in the folder "script" where python was installed usually, the path to windows is: ```C:\Python38\Scripts``` it depends on where the python folder is installed.

### Atom

The code editor or IDE can be of your choice. What was used to develop these tests was atom.

* In order to install it, go to https://atom.io/;
* Then, to clone the repository go to https://github.com/Cleici/voxy-coding-challenge;
* Click the button "Code"
* Copy the HTTPS code
* Go to your IDE and clone the project. With atom, click on "Welcome guide" tab
* Click "version control with git and github
* Click "Open Github panel"
* Click "Clone an existing Github repository..."
* Paste the repository link from github.


## Test cases

The tests cases developed for this challenge can be found on https://github.com/Cleici/voxy-coding-challenge/blob/main/Test%20cases%20-%20Login.md

## How to run automated tests

Now, with everything installed, simply go to your IDE terminal and run the command ```robot -d ./results .\test_suite\login.robot``` and the test suite will run the test cases enclosed in the file login.robot.

## Why the test cases were chosen

The following test cases were chosen (all five are being detailed here as the instructions weren't very clear if only the automated tests should be explained or all the test cases)

**Scenario 01: Invalid email verification** -
This was chosen first because it is critical for the user to have a feedback on whether or not the input is valid. For example, if the user has more than one email, and accidentally uses one that does not have an account in the Voxy platform, how will they be informed of that? It is necessary first and foremost to validate this.

**Scenario 02: Invalid number verification** -
Same logic as scenario 01. The system has to check if the account exists or not, and it has to inform the user of that.

**Scenario 03: Verify if email account is expired (email)** -
This case was found by chance, testing different data in the system. Once found, I've noticed that there is a different verification, in which validates if the user account expired. Also very valuable, because, assuming this is a business rule, accounts are not deleted, only inactivated, so informing the user to contact support in order to be able to access this account again should also be included.

**Scenario 04: Invalid email format verifications** - It is important to validate if the format is according to the field requested. Many times, during development, developers forget to put such constraints, which can cause problems when sending information, as well as updating them, in the the end resulting in bad data.

**Scenario 05: Invalid number format verifications** - The same applies for this case. Although, here in this case we have one more rule, that includes the country code that is going to be used. So is important to understand the format and validate them, according to the country and following metrics to avoid bad data.

