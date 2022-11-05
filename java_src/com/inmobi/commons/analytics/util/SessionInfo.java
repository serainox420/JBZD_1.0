package com.inmobi.commons.analytics.util;

import android.content.Context;
import android.content.SharedPreferences;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import java.util.GregorianCalendar;
import java.util.UUID;
/* loaded from: classes2.dex */
public class SessionInfo {

    /* renamed from: a  reason: collision with root package name */
    private static String f3767a;
    private static long b;
    private static String c;
    private static int d;

    public static synchronized boolean isUpdatedFromOldSDK(Context context) {
        boolean z;
        synchronized (SessionInfo.class) {
            z = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getBoolean("UPDATED_FROM_OLD_SDK", false);
        }
        return z;
    }

    public static synchronized void updatedFromOldSDK(Context context) {
        synchronized (SessionInfo.class) {
            SharedPreferences.Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
            edit.putBoolean("UPDATED_FROM_OLD_SDK", true);
            edit.commit();
        }
    }

    public static synchronized void resetFirstTime() {
        synchronized (SessionInfo.class) {
            d = 0;
        }
    }

    public static synchronized int getFirstTime() {
        int i;
        synchronized (SessionInfo.class) {
            i = d;
        }
        return i;
    }

    public static synchronized void storeFirstTime(Context context) {
        long timeInMillis;
        int i;
        int i2 = 0;
        synchronized (SessionInfo.class) {
            try {
                SharedPreferences sharedPreferences = context.getSharedPreferences("inmobiAppAnalyticsSession", 0);
                SharedPreferences.Editor edit = sharedPreferences.edit();
                long j = sharedPreferences.getLong("SESSION_TIMEM", -1L);
                if (j != -1) {
                    GregorianCalendar gregorianCalendar = new GregorianCalendar();
                    gregorianCalendar.setTimeInMillis(j);
                    gregorianCalendar.setFirstDayOfWeek(2);
                    GregorianCalendar gregorianCalendar2 = new GregorianCalendar();
                    long timeInMillis2 = gregorianCalendar2.getTimeInMillis();
                    gregorianCalendar2.setFirstDayOfWeek(2);
                    if (gregorianCalendar.get(6) != gregorianCalendar2.get(6)) {
                        i2 = 1;
                    }
                    if (gregorianCalendar.get(3) != gregorianCalendar2.get(3)) {
                        i2 |= 2;
                    }
                    if (gregorianCalendar.get(2) != gregorianCalendar2.get(2)) {
                        i2 |= 4;
                    }
                    i = i2;
                    timeInMillis = timeInMillis2;
                } else {
                    timeInMillis = new GregorianCalendar().getTimeInMillis();
                    i = 15;
                }
                edit.putLong("SESSION_TIMEM", timeInMillis);
                edit.commit();
                d = i;
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception storing session data first time", e);
            }
        }
    }

    public static synchronized void storeSessionId(Context context) {
        synchronized (SessionInfo.class) {
            try {
                f3767a = UUID.randomUUID().toString();
                b = System.currentTimeMillis() / 1000;
                SharedPreferences.Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
                edit.putString("SESSION_ID", f3767a);
                edit.putString("APP_SESSION_ID", f3767a);
                edit.putLong("SESSION_TIME", b);
                edit.commit();
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception putting session id", e);
            }
        }
    }

    public static synchronized String getSessionId(Context context) {
        String str;
        synchronized (SessionInfo.class) {
            try {
                if (f3767a != null) {
                    str = f3767a;
                } else {
                    str = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getString("SESSION_ID", null);
                    f3767a = str;
                }
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting session id", e);
                str = null;
            }
        }
        return str;
    }

    public static synchronized long getSessionTime(Context context) {
        long j;
        synchronized (SessionInfo.class) {
            try {
                if (b != 0) {
                    j = b;
                } else {
                    j = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).getLong("SESSION_TIME", 0L);
                    b = j;
                }
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting session time", e);
                j = 0;
            }
        }
        return j;
    }

    public static synchronized void removeSessionId(Context context) {
        synchronized (SessionInfo.class) {
            try {
                f3767a = null;
                b = 0L;
                SharedPreferences.Editor edit = context.getSharedPreferences("inmobiAppAnalyticsSession", 0).edit();
                edit.putString("SESSION_ID", null);
                edit.putString("SESSION_TIME", null);
                edit.commit();
            } catch (Exception e) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception removing session id", e);
            }
        }
    }

    public static void storeAppId(Context context, String str) {
        try {
            c = str;
            SharedPreferences.Editor edit = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).edit();
            edit.putString("APP_ID", str);
            edit.commit();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception storing app id", e);
        }
    }

    public static String getAppId(Context context) {
        String string;
        try {
            if (c != null) {
                string = c;
            } else {
                string = context.getSharedPreferences("inmobiAppAnalyticsAppId", 0).getString("APP_ID", null);
                c = string;
            }
            return string;
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception getting app id", e);
            return null;
        }
    }
}
