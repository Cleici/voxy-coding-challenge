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
Download said version, according to your SO.

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

Now, with everything installed, simply go to your IDE terminal and run the command ```robot -d ./results .\test_suite\login.robot``` and the test suite will run the test cases inclosed in the file login.robot.

## Why the test cases were chosen


