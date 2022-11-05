package com.smaato.soma.bannerutilities.constant;

import com.smaato.soma.exception.UnknownBannerStatusException;
import com.smaato.soma.exception.UnrecognizedBannerStatusValue;
/* loaded from: classes3.dex */
public enum BannerStatus {
    MEDIATION,
    SUCCESS,
    ERROR;
    

    /* renamed from: a  reason: collision with root package name */
    private static String f4908a = "SUCCESS";
    private static String b = "ERROR";

    public static String getStringForValue(BannerStatus bannerStatus) throws UnknownBannerStatusException {
        try {
            if (bannerStatus == SUCCESS) {
                return f4908a;
            }
            if (bannerStatus == ERROR) {
                return b;
            }
            return "";
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnknownBannerStatusException(e2);
        }
    }

    public static BannerStatus getValueForString(String str) throws UnrecognizedBannerStatusValue {
        try {
            if (str.equalsIgnoreCase(f4908a)) {
                return SUCCESS;
            }
            if (str.equalsIgnoreCase(b)) {
                return ERROR;
            }
            return null;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new UnrecognizedBannerStatusValue(e2);
        }
    }
}
