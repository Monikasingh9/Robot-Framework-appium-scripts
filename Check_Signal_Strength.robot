*** Settings ***
Resource    ../PageObjects/OpenNativeApp.robot
Resource    ../PageObjects/OpenSettingsOptions.robot
Test Teardown    close application


*** Test Cases ***
Find Signal Strength
    Open Settings app in Device
    Open 'About phone'
    Open 'Status information'
    Open 'SIM card status'
    Check Signal Strength
