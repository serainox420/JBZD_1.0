package com.smaato.soma;

import com.facebook.appevents.AppEventsConstants;
import com.smaato.soma.exception.UnrecognizedErrorCodeValue;
import com.smaato.soma.exception.UnrecognizedStringErrorCodeValue;
/* loaded from: classes3.dex */
public enum ErrorCode {
    NO_ERROR,
    UNKNOWN_PUBLISHER_OR_ADSPACE_ID,
    NO_CONNECTION_ERROR,
    NO_AD_AVAILABLE,
    GENERAL_ERROR,
    PARSING_ERROR,
    ADAPTER_NOT_FOUND,
    ADAPTER_CONFIGURATION_ERROR,
    UNSPECIFIED,
    NETWORK_TIMEOUT,
    NETWORK_NO_FILL,
    NETWORK_INVALID_STATE;

    public static String getStringForValue(ErrorCode errorCode) throws UnrecognizedErrorCodeValue {
        try {
            if (errorCode == NO_ERROR) {
                return AppEventsConstants.EVENT_PARAM_VALUE_NO;
            }
            if (errorCode == UNKNOWN_PUBLISHER_OR_ADSPACE_ID) {
                return "106";
            }
            if (errorCode == NO_CONNECTION_ERROR) {
                return "NO_CONNECTION_ERROR";
            }
            if (errorCode == NO_AD_AVAILABLE) {
                return "42";
            }
            if (errorCode == GENERAL_ERROR) {
                return "107";
            }
            if (errorCode == PARSING_ERROR) {
                return "PARSING_ERROR";
            }
            return "";
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnrecognizedErrorCodeValue(e2);
        }
    }

    public static ErrorCode getValueForString(String str) throws UnrecognizedStringErrorCodeValue {
        try {
            if (str.equalsIgnoreCase(AppEventsConstants.EVENT_PARAM_VALUE_NO)) {
                return NO_ERROR;
            }
            if (str.equalsIgnoreCase("106")) {
                return UNKNOWN_PUBLISHER_OR_ADSPACE_ID;
            }
            if (str.equalsIgnoreCase("NO_CONNECTION_ERROR")) {
                return NO_CONNECTION_ERROR;
            }
            if (str.equalsIgnoreCase("42")) {
                return NO_AD_AVAILABLE;
            }
            if (str.equalsIgnoreCase("107")) {
                return GENERAL_ERROR;
            }
            if (str.equalsIgnoreCase("PARSING_ERROR")) {
                return PARSING_ERROR;
            }
            return null;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnrecognizedStringErrorCodeValue(e2);
        }
    }
}
