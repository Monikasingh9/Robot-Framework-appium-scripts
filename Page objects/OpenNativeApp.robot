*** Settings ***
Resource    ../Resources/Commons.robot
Variables   ../Resources/Variables.py
Library    AppiumLibrary


*** Keywords ***
# Opens Settings App in Device
Open Settings app in Device
      Open Native Apps on Device    ${SETTINGS_APP_PACKAGE}           ${SETTINGS_APP_ACTIVITY}     ${APPIUM_SERVER}     ${ANDROID_PLATFORM_VERSION}    ${DEVICE_NAME}

# Opens Settings App in Device 1
Open Settings app in Device 1
      Open Native Apps on Device    ${SETTINGS_APP_PACKAGE}           ${SETTINGS_APP_ACTIVITY}     ${APPIUM_SERVER1}     ${ANDROID_PLATFORM_VERSION1}    ${DEVICE_NAME1}

# Opens Settings App in Device 2
Open Settings app in Device 2
      Open Native Apps on Device    ${SETTINGS_APP_PACKAGE}           ${SETTINGS_APP_ACTIVITY}     ${APPIUM_SERVER2}     ${ANDROID_PLATFORM_VERSION2}    ${DEVICE_NAME2}


# Opens Dialer App
Open Dialer app in Device
    Open Native Apps on Device       ${DIALER_APP_PACKAGE}         ${DIALER_APP_ACTIVITY}       ${APPIUM_SERVER}     ${ANDROID_PLATFORM_VERSION}    ${DEVICE_NAME}

# Opens Dialer App in Device 1
Open Dialer app in Device1
    Open Native Apps on Device       ${DIALER_APP_PACKAGE}         ${DIALER_APP_ACTIVITY}       ${APPIUM_SERVER1}     ${ANDROID_PLATFORM_VERSION1}    ${DEVICE_NAME1}

# Opens Dialer App in device 2
Open Dialer app in Device 2
    Open Native Apps on Device       ${DIALER_APP_PACKAGE}         ${DIALER_APP_ACTIVITY}       ${APPIUM_SERVER2}     ${ANDROID_PLATFORM_VERSION2}    ${DEVICE_NAME2}



#Opens Contacts List App
Open Contacts list in Device
    Open Native Apps on Device      ${CONTACTS_APP_PACKAGE}     ${CONTACTS_APP_ACTIVITY}        ${APPIUM_SERVER}     ${ANDROID_PLATFORM_VERSION}    ${DEVICE_NAME}

