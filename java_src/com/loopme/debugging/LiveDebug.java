package com.loopme.debugging;

import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.os.Looper;
import com.loopme.common.Logging;
import com.loopme.common.StaticParams;
import com.loopme.request.AdRequestParametersProvider;
import io.fabric.sdk.android.services.common.a;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class LiveDebug {
    private static final int DEBUG_TIME = 300000;
    private static CountDownTimer sDebugTimer;
    private static boolean sIsDebugOn;
    private static LogDbHelper sLogDbHelper;
    private static final String LOG_TAG = LiveDebug.class.getSimpleName();
    private static ExecutorService sExecutor = Executors.newSingleThreadExecutor();

    public static void init(Context context) {
        sLogDbHelper = new LogDbHelper(context);
    }

    public static void setLiveDebug(boolean z) {
        Logging.out(LOG_TAG, "setLiveDebug " + z);
        if (sIsDebugOn != z && z) {
            sIsDebugOn = z;
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.loopme.debugging.LiveDebug.1
                @Override // java.lang.Runnable
                public void run() {
                    LiveDebug.startTimer();
                }
            });
        }
    }

    public static void handle(String str, String str2) {
        if (sIsDebugOn) {
            saveLog(str, str2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void startTimer() {
        if (sDebugTimer == null) {
            sDebugTimer = new CountDownTimer(300000L, 1000L) { // from class: com.loopme.debugging.LiveDebug.2
                @Override // android.os.CountDownTimer
                public void onTick(long j) {
                }

                @Override // android.os.CountDownTimer
                public void onFinish() {
                    LiveDebug.sendToServer();
                    boolean unused = LiveDebug.sIsDebugOn = false;
                    CountDownTimer unused2 = LiveDebug.sDebugTimer = null;
                }
            };
            Logging.out(LOG_TAG, "start debug timer");
            sDebugTimer.start();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void sendToServer() {
        Executors.newCachedThreadPool().submit(new Runnable() { // from class: com.loopme.debugging.LiveDebug.3
            @Override // java.lang.Runnable
            public void run() {
                if (LiveDebug.sLogDbHelper != null) {
                    Logging.out(LiveDebug.LOG_TAG, "send to server");
                    HttpUtils.postDataToServer(LiveDebug.initPostDataParams());
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Map<String, String> initPostDataParams() {
        String initLogsString = initLogsString();
        AdRequestParametersProvider adRequestParametersProvider = AdRequestParametersProvider.getInstance();
        HashMap hashMap = new HashMap();
        hashMap.put(Params.DEVICE_OS, a.ANDROID_CLIENT_TYPE);
        hashMap.put(Params.SDK_TYPE, StaticParams.LOOPME_PREFERENCES);
        hashMap.put(Params.SDK_VERSION, StaticParams.SDK_VERSION);
        hashMap.put(Params.DEVICE_ID, adRequestParametersProvider.getViewerToken());
        hashMap.put(Params.PACKAGE_ID, adRequestParametersProvider.getPackage());
        hashMap.put(Params.APP_KEY, adRequestParametersProvider.getAppKey());
        hashMap.put(Params.MSG, "sdk_debug");
        hashMap.put(Params.DEBUG_LOGS, initLogsString);
        return hashMap;
    }

    private static String initLogsString() {
        if (sLogDbHelper != null) {
            List<String> logs = sLogDbHelper.getLogs();
            sLogDbHelper.clear();
            StringBuilder sb = new StringBuilder();
            for (String str : logs) {
                sb.append(str);
                sb.append("\n");
            }
            return sb.toString();
        }
        return null;
    }

    private static void saveLog(String str, String str2) {
        final String formatLogMessage = formatLogMessage(str, str2);
        if (sLogDbHelper != null) {
            sExecutor.submit(new Runnable() { // from class: com.loopme.debugging.LiveDebug.4
                @Override // java.lang.Runnable
                public void run() {
                    LiveDebug.sLogDbHelper.putLog(formatLogMessage);
                }
            });
        }
    }

    private static String formatLogMessage(String str, String str2) {
        return (Looper.getMainLooper() == Looper.myLooper() ? "ui" : "bg") + ": " + str + ": " + str2;
    }
}
