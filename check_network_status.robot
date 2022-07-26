*** Settings ***
Documentation    This script tests the network connection status and updates it to flight mode
Library    AppiumLibrary
Library    Collections
Test Teardown     close application


*** Variables ***
${APPIUM_SERVER}    http://127.0.0.1:4723/wd/hub
${ANDROID_AUTOMATION_NAME}      UIAutomator2
${ANDROID_PLATFORM_NAME}        Android
${ANDROID_PLATFORM_VERSION}     12
${ANDROID_APP_ACTIVITY}         com.android.settings.Settings
${ANDROID_APP_PACKAGE}          com.android.settings
${ANDROID_APP_WAIT_ACTIVITY}    com.android.settings.Settings


*** Keywords ***
Open Settings
       Open Application    ${APPIUM_SERVER}    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}     automationName=${ANDROID_AUTOMATION_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}    appActivity=${ANDROID_APP_ACTIVITY}


*** Test Cases ***
NetworkStatus Test
    Open settings
    click element     ${network_locator}
    log to console    ${networkStatus}
    sleep    2s
    IF    ${networkStatus}==6
        set network connection status   1
    END
    sleep    2s
    ${newNetworkStatus}   get network connection status
    should be equal as integers    ${newNetworkStatus}      1
