*** Settings ***
Documentation    This script opens same application in two emulator devices
Library     AppiumLibrary

*** Variables ***
${APPIUM_SERVER1}               4723
${APPIUM_SERVER2}               4725
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     12
${ANDROID_APP_ACTIVITY}         com.android.settings.Settings
${ANDROID_APP_PACKAGE}          com.android.settings
${ANDROID_APP_WAIT_ACTIVITY}    com.android.settings.Settings
${DEVICE_NAME1}                 emulator-5556
${DEVICE_NAME2}                 emulator-5554

*** Keywords ***
Open Phone Settings
    [Arguments]         ${APPIUM_PORT}      ${DEVICE_NAME}
    open application    http://127.0.0.1:${APPIUM_PORT}/wd/hub    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}     automationName=${ANDROID_AUTOMATION_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}    appActivity=${ANDROID_APP_ACTIVITY}     appWaitActivity=${ANDROID_APP_WAIT_ACTIVITY}    deviceName=${DEVICE_NAME}

Open Device 1
        OPEN PHONE SETTINGS        ${APPIUM_SERVER1}       ${DEVICE_NAME1}

Open Device 2
        OPEN PHONE SETTINGS        ${APPIUM_SERVER2}       ${DEVICE_NAME2}

*** Test Cases ***
Open Settings in device 1
    Open Device 1

Open settings in device 2
    Open Device 2
