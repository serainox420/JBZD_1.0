package com.inmobi.commons.analytics.net;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.analytics.db.AnalyticsDatabaseManager;
import com.inmobi.commons.analytics.events.AnalyticsEventsWrapper;
import com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.uid.UID;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
/* loaded from: classes2.dex */
public final class AnalyticsNetworkManager {
    public static final int MESSAGE_PING = 1001;

    /* renamed from: a  reason: collision with root package name */
    private static Handler f3762a;
    private static AnalyticsNetworkManager b;
    private static AnalyticsConnectivityReceiver.a f = new AnalyticsConnectivityReceiver.a() { // from class: com.inmobi.commons.analytics.net.AnalyticsNetworkManager.1
        @Override // com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver.a
        public void b() {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity gone");
        }

        @Override // com.inmobi.commons.analytics.net.AnalyticsConnectivityReceiver.a
        public void a() {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Connectivity came");
            if (AnalyticsNetworkManager.f3762a != null && !AnalyticsUtils.getStartHandle()) {
                AnalyticsUtils.setStartHandle(true);
                AnalyticsNetworkManager.f3762a.sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
            }
        }
    };
    private AnalyticsPayloadBuilder c;
    private AnalyticsConnectivityReceiver d;
    private int e = 0;

    private AnalyticsNetworkManager() {
        new a().start();
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager-> Constructor ");
    }

    public static Handler getHandler() {
        return f3762a;
    }

    public static synchronized AnalyticsNetworkManager startInstance() {
        AnalyticsNetworkManager analyticsNetworkManager;
        synchronized (AnalyticsNetworkManager.class) {
            if (b == null) {
                b = new AnalyticsNetworkManager();
            }
            if (b.c == null) {
                b.c = new AnalyticsPayloadBuilder();
            }
            if (b.d == null) {
                b.d = new AnalyticsConnectivityReceiver(InternalSDKUtil.getContext(), f);
            }
            analyticsNetworkManager = b;
        }
        return analyticsNetworkManager;
    }

    private void a(AnalyticsPayload analyticsPayload, String str) {
        boolean z;
        int i;
        BufferedReader bufferedReader;
        try {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping URL: " + AnalyticsUtils.getEventUrl());
            String completePayload = analyticsPayload.getCompletePayload();
            int minEventsToCompress = AnalyticsInitializer.getConfigParams().getMinEventsToCompress();
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + completePayload);
            if (analyticsPayload.getPayloadSize() < minEventsToCompress || Build.VERSION.SDK_INT < 8) {
                z = false;
            } else {
                Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Compressing the payload");
                z = true;
                completePayload = AnalyticsUtils.compressPayload(completePayload);
            }
            int maxAppIdLength = AnalyticsInitializer.getConfigParams().getMaxAppIdLength();
            if (str.length() > maxAppIdLength) {
                str = str.substring(0, maxAppIdLength);
            }
            String a2 = a(completePayload, str, z);
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Post body: " + a2);
            AnalyticsCommon analyticsCommon = new AnalyticsCommon();
            HttpURLConnection httpURLConnection = analyticsCommon.setupConnection(AnalyticsUtils.getEventUrl());
            analyticsCommon.postData(httpURLConnection, a2);
            try {
                i = httpURLConnection.getResponseCode();
            } catch (IOException e) {
                i = 401;
            }
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Http Status Code: " + i);
            if (i == 200) {
                this.e = 0;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            } else {
                this.e++;
                if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                    this.e = 0;
                    AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
                }
            }
            try {
                bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), "UTF-8"));
            } catch (Exception e2) {
                try {
                    bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream(), "UTF-8"));
                } catch (Exception e3) {
                    bufferedReader = null;
                }
            }
            try {
                StringBuilder sb = new StringBuilder();
                while (true) {
                    String readLine = bufferedReader.readLine();
                    if (readLine != null) {
                        sb.append(readLine).append("\n");
                    } else {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Ping Response: " + sb.toString());
                        httpURLConnection.disconnect();
                        analyticsCommon.closeResource(bufferedReader);
                        return;
                    }
                }
            } catch (Exception e4) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Unable to read from stream");
            }
        } catch (Exception e5) {
            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception Pinging", e5);
            this.e++;
            if (this.e >= AnalyticsUtils.getMaxRetryBeforeDiscard()) {
                this.e = 0;
                AnalyticsDatabaseManager.getInstance().deleteEvents(analyticsPayload.getTableIdList());
            }
        }
    }

    private String a(String str, String str2, boolean z) {
        StringBuilder sb = new StringBuilder();
        if (str != null) {
            sb.append("payload=");
            sb.append(AnalyticsCommon.getURLEncoded(str));
        }
        if (str2 != null) {
            sb.append("&mk-siteid=");
            sb.append(str2);
        }
        sb.append("&c=");
        if (z) {
            sb.append(1);
        } else {
            sb.append(0);
        }
        String encodeMapAndconvertToDelimitedString = InternalSDKUtil.encodeMapAndconvertToDelimitedString(UID.getInstance().getMapForEncryption(AnalyticsInitializer.getConfigParams().getDeviceIdMaskMap()), "&");
        sb.append("&");
        sb.append(encodeMapAndconvertToDelimitedString);
        sb.append("&mk-version=");
        sb.append("pr-SAND-" + InternalSDKUtil.getInMobiInternalVersion(InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION) + "-" + InternalSDKUtil.INMOBI_SDK_RELEASE_DATE);
        sb.append("&u-id-adt=");
        if (UID.getInstance().isLimitAdTrackingEnabled()) {
            sb.append(1);
        } else {
            sb.append(0);
        }
        return sb.toString();
    }

    /* loaded from: classes2.dex */
    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Looper.prepare();
            Handler unused = AnalyticsNetworkManager.f3762a = new Handler(new Handler.Callback() { // from class: com.inmobi.commons.analytics.net.AnalyticsNetworkManager.a.1
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "NetworkManager->handleMessag: msg:" + message);
                    if (message.what == 1001) {
                        if (AnalyticsInitializer.getConfigParams().getAutomaticCapture().isAutoSessionCaptureEnabled() || AnalyticsEventsWrapper.isEventsUser()) {
                            AnalyticsNetworkManager.this.b();
                        } else {
                            AnalyticsUtils.setStartHandle(false);
                        }
                    }
                    return true;
                }
            });
            Looper.loop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        boolean z = true;
        if (this.d != null && this.d.isConnected() && this.c != null) {
            AnalyticsPayload payloadList = this.c.getPayloadList(AnalyticsDatabaseManager.getInstance().getEvents(), InternalSDKUtil.getContext());
            if (payloadList.getCompletePayload() != null) {
                a(payloadList, SessionInfo.getAppId(InternalSDKUtil.getContext()));
                z = false;
            }
        }
        if (!z) {
            f3762a.sendEmptyMessageDelayed(1001, AnalyticsUtils.getTimeinterval());
        } else {
            AnalyticsUtils.setStartHandle(false);
        }
    }
}
