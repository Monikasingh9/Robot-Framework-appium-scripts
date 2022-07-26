*** Settings ***
Resource    ../Resources/Commons.robot
Variables    ../Resources/Variables.py


*** Keywords ***
Open 'About phone'

        FOR     ${i}    IN RANGE   6
            swipe    514  700  514  200  1000
        END
        click text    About phone    True

Open 'Battery and device care'
        FOR    ${i}    IN RANGE    4
            swipe    514  700  514  200  1000
        END
        click text     Battery and device care   True

Open 'Connections'
        wait until page contains    Connections
        click text     Connections     True

Open 'Mobile networks'
        wait until page contains    Mobile networks
        click text     Mobile networks   True

Open 'Status information'
        Wait until page contains    Status information
        click text    Status information    True

Open 'SIM card status'
        wait until page contains    SIM card status
        click text    SIM card status    True

Check Network mode

        wait until page contains    Network mode

        ${SELECTED_NETWORK_TYPE}    get element attribute    ${NETWORK_MODE_XPATH}     text
        log to console    ${SELECTED_NETWORK_TYPE}
        click text      Network mode   True
        @{NETWORK_TYPE}    get elements by xpath      ${NETWORK_MODE_LIST_XPATH}
        log to console    ${NETWORK_TYPE}
            FOR    ${NETWORK}    IN    @{NETWORK_TYPE}
                    log    ${NETWORK}
            END


Check Network Status

        ${NETWORK_STATUS}    get network connection status
        IF    '${NETWORK_STATUS}'=='0'
            log     None
        ELSE IF  '${NETWORK_STATUS}'=='1'
            log     Airplane Mode
        ELSE IF   '${NETWORK_STATUS}'=='2'
            log     WiFi Only
        ELSE IF    '${NETWORK_STATUS}'=='4'
            log     Data Only
        ELSE IF    '${NETWORK_STATUS}'=='6'
            log     All Network On
        END

Check Signal Strength

        wait until page contains    Signal strength
        ${SIGNAL_STRENGTH}      get element attribute       ${SIGNAL_STRENGTH_XPATH}        text
        log to console    ${SIGNAL_STRENGTH}

Check Battery Charge
        wait until page contains    Device care
        ${BATTERY_CHARGE}       get element attribute       ${BATTERY_CHARGE_XPATH}    text
        log to console    ${BATTERY_CHARGE}

Check Mobile Voice Network
        wait until page contains    Mobile voice network type
        ${VOICE_NETWORK}       get element attribute     ${VOICE_NETWORK_XPATH}     text
        log to console    ${VOICE_NETWORK}

Check Mobile Data Network
        wait until page contains    Mobile data network type
        ${DATA_NETWORK}       get element attribute     ${DATA_NETWORK_XPATH}     text
        log to console    ${DATA_NETWORK}

Get IP Address
    wait until page contains    IP address
    ${IP_ADDRESS}       get element attribute       ${IP_ADDRESS_XPATH}    text
    log to console    ${IP_ADDRESS}

Check IMEI information
    wait until page contains    IMEI information
    click text    IMEI information
    ${IMEI}     get element attribute    ${IMEI_XPATH}      text
    log to console    ${IMEI}

