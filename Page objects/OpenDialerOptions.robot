*** Settings ***
Library    AppiumLibrary
Library    String
Variables    ../Resources/Variables.py

*** Keywords ***
Open Dial Keypad
    [Arguments]    ${DEVICE}
    IF    ${DEVICE} == 'SAMSUNG'
        click element    ${DIALPAD_ID_SAMSUNG}
    ELSE IF    ${DEVICE} == 'ANY'
         click element    ${DIALPAD_ID}

Open Call Log

    click element    com.samsung.android.dialer:id/calllog_tab_button
Dial a Number
            @{NUMBER_LIST}    split string to characters    ${PHONE_NUM}
    FOR     ${NUM}  IN  @{NUMBER_LIST}
        IF  '${NUM}'=='1'
           click element    com.samsung.android.dialer:id/one
        ELSE IF    '${NUM}'=='2'
            click element    com.samsung.android.dialer:id/two
        ELSE IF    '${NUM}'=='3'
            click element    com.samsung.android.dialer:id/three
        ELSE IF    '${NUM}'=='4'
            click element    com.samsung.android.dialer:id/four
        ELSE IF    '${NUM}'=='5'
            click element    com.samsung.android.dialer:id/five
        ELSE IF    '${NUM}'=='6'
            click element    com.samsung.android.dialer:id/six
        ELSE IF    '${NUM}'=='7'
            click element    com.samsung.android.dialer:id/seven
        ELSE IF    '${NUM}'=='8'
            click element    com.samsung.android.dialer:id/eight
        ELSE IF    '${NUM}'=='9'
            click element    com.samsung.android.dialer:id/nine
        ELSE IF    '${NUM}'=='0'
            click element    com.samsung.android.dialer:id/zero
        ELSE IF    '${NUM}'=='*'
            click element    com.samsung.android.dialer:id/star
        ELSE IF    '${NUM}'=='#'
            click element    com.samsung.android.dialer:id/pound
        END
    END
    click element    ${CALL_BUTTON_ID}

Check if the call is Connected
#    wait activity       com.android.incallui.call.InCallActivity        5
    sleep     5s
    page should contain element     ${CALL_CONNECTED_ID}


Check the call time


Disconnect Call
    wait until page contains    ${DISCONNECT_BUTTON_ID}
    click element    ${DISCONNECT_BUTTON_ID}

Put Call on hold

    element attribute should match   ${HOLD_CALL_ID}        enabled    true

    click element    ${HOLD_CALL_ID}

Check if the Call on Hold
   element attribute should match    ${HOLD_CALL_ID}     text    on hold
