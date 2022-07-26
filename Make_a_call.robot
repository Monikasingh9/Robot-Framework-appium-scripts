*** Settings ***
Resource    ../PageObjects/OpenNativeApp.robot
Resource    ../PageObjects/OpenDialerOptions.robot
Variables    ../Resources/Variables.py
Test Teardown    Close Application

*** Test Cases ***
Dial to ${PHONE_NUM}
    open dialer app in device
    open dial keypad
    Dial a Number
    Disconnect Call


