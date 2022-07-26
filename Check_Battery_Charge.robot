*** Settings ***
Resource    ../PageObjects/OpenNativeApp.robot
Resource    ../PageObjects/OpenSettingsOptions.robot
Test Teardown    Close Application

*** Test Cases ***
Find Battery Charging Status
    Open Settings app in Device
    Open 'Battery and device care'
    Check Battery Charge
