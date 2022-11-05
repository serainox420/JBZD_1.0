package com.smaato.soma;

import com.facebook.internal.AnalyticsEvents;
import com.smaato.soma.exception.UnknownAdTypeException;
import com.smaato.soma.exception.UnknownStringAdTypeValue;
/* loaded from: classes3.dex */
public enum AdType {
    ALL,
    IMAGE,
    TEXT,
    VIDEO,
    REWARDED,
    VAST,
    NATIVE,
    MEDIATION,
    RICHMEDIA;

    public static String getStringForValue(AdType adType) throws UnknownAdTypeException {
        try {
            switch (adType) {
                case ALL:
                    return "ALL";
                case IMAGE:
                    return "IMG";
                case TEXT:
                    return "TXT";
                case RICHMEDIA:
                    return "RICHMEDIA";
                case VIDEO:
                    return AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO;
                case REWARDED:
                    return "rewarded";
                case VAST:
                    return "VAST";
                case NATIVE:
                    return "NATIVE";
                default:
                    return "";
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnknownAdTypeException(e2);
        }
    }

    public static AdType getValueForString(String str) throws UnknownStringAdTypeValue {
        try {
            if (str.equalsIgnoreCase("ALL")) {
                return ALL;
            }
            if (str.equalsIgnoreCase("IMG")) {
                return IMAGE;
            }
            if (str.equalsIgnoreCase("TXT")) {
                return TEXT;
            }
            if (str.equalsIgnoreCase(AnalyticsEvents.PARAMETER_SHARE_DIALOG_CONTENT_VIDEO)) {
                return VIDEO;
            }
            if (str.equalsIgnoreCase("rewarded")) {
                return REWARDED;
            }
            if (str.equalsIgnoreCase("VAST")) {
                return VAST;
            }
            if (str.equalsIgnoreCase("RICHMEDIA")) {
                return RICHMEDIA;
            }
            if (str.equalsIgnoreCase("NATIVE")) {
                return NATIVE;
            }
            return null;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnknownStringAdTypeValue(e2);
        }
    }
}
