package com.pubmatic.sdk.common.network;

import com.pubmatic.sdk.common.PMLogger;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3.dex */
public class AdTracking {
    public static void invokeTrackingUrl(final int i, final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.pubmatic.sdk.common.network.AdTracking.1
            /* JADX WARN: Not initialized variable reg: 0, insn: 0x0094: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r0 I:??[OBJECT, ARRAY]), block:B:24:0x0093 */
            /* JADX WARN: Removed duplicated region for block: B:21:0x008e  */
            @Override // java.lang.Runnable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void run() {
                HttpURLConnection httpURLConnection;
                HttpURLConnection httpURLConnection2;
                HttpURLConnection httpURLConnection3 = null;
                try {
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                        if (httpURLConnection != null) {
                            try {
                                httpURLConnection.setRequestMethod("GET");
                                httpURLConnection.setRequestProperty("Connection", "close");
                                httpURLConnection.setRequestProperty("User-Agent", str2);
                                httpURLConnection.setConnectTimeout(i * 1000);
                                int responseCode = httpURLConnection.getResponseCode();
                                if (responseCode != 200) {
                                    PMLogger.logEvent("PM-TrackerEvent : Error while invoking tracking URL : " + str + "HttpResponse:" + responseCode, PMLogger.LogLevel.Error);
                                    if (httpURLConnection == null) {
                                        return;
                                    }
                                    httpURLConnection.disconnect();
                                    return;
                                }
                                PMLogger.logEvent("PM-TrackerEvent : Ad Tracker fired successfully", PMLogger.LogLevel.Debug);
                            } catch (Exception e) {
                                PMLogger.logEvent("PM-TrackerEvent : Error while invoking tracking URL : " + str, PMLogger.LogLevel.Error);
                                if (httpURLConnection == null) {
                                    return;
                                }
                                httpURLConnection.disconnect();
                                return;
                            }
                        }
                        if (httpURLConnection == null) {
                            return;
                        }
                        httpURLConnection.disconnect();
                    } catch (Throwable th) {
                        httpURLConnection3 = httpURLConnection2;
                        th = th;
                        if (httpURLConnection3 != null) {
                            httpURLConnection3.disconnect();
                        }
                        throw th;
                    }
                } catch (Exception e2) {
                    httpURLConnection = null;
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection3 != null) {
                    }
                    throw th;
                }
            }
        }).start();
    }

    public static void invokeTrackingUrl(int i, String[] strArr, String str) {
        if (strArr != null) {
            for (String str2 : strArr) {
                invokeTrackingUrl(i, str2, str);
            }
        }
    }
}
