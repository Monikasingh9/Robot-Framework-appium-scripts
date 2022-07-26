*** Settings ***
Library    AppiumLibrary
Library    Collections

Variables  ../Resources/Variables.py



*** Keywords ***

Open Native Apps on Device
    [Arguments]    ${ANDROID_APP_PACKAGE}   ${ANDROID_APP_ACTIVITY}    ${APPIUM_SERVER}     ${ANDROID_PLATFORM_VERSION}    ${DEVICE_NAME}
       Open Application    ${APPIUM_SERVER}    platformName=${ANDROID_PLATFORM_NAME}    platformVersion=${ANDROID_PLATFORM_VERSION}     automationName=${ANDROID_AUTOMATION_NAME}
    ...    appPackage=${ANDROID_APP_PACKAGE}    appActivity=${ANDROID_APP_ACTIVITY}     appWaitActivity=${ANDROID_APP_ACTIVITY}      deviceName=${DEVICE_NAME}





Select About Phone
        FOR     ${i}    IN RANGE   6
            swipe    514  700  514  200  1000
        END
        click text    About phone    True

Select Status Information
        Wait until page contains    Status information
        click text      Status information

Select SIM Card status
        wait until page contains    SIM card status
        click text      SIM card status

Get Signal Strength
        wait until page contains    Signal strength
        ${STATUS_LIST}     get elements by classname     android.widget.TextView
        log to console    ${STATUS_LIST}
