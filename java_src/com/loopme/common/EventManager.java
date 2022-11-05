package com.loopme.common;

import android.net.Uri;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes2.dex */
public class EventManager {
    private static final String EVENT_TYPE = "et";
    private static final String ID = "id";
    private static final String LOG_TAG = EventManager.class.getSimpleName();
    private static final String R = "r";
    private static final String URL = "loopme.me/api/v2/events";

    private String build(String str) {
        List<String> asList = Arrays.asList(URL.split("/"));
        Uri.Builder builder = new Uri.Builder();
        builder.scheme("https");
        for (String str2 : asList) {
            if (asList.indexOf(str2) == 0) {
                builder.authority(str2);
            } else {
                builder.appendPath(str2);
            }
        }
        builder.appendQueryParameter(EVENT_TYPE, "SDK_FEEDBACK").appendQueryParameter(R, "1").appendQueryParameter("id", str).build();
        return builder.toString();
    }

    public void trackSdkEvent(String str) {
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        final String build = build(str);
        newCachedThreadPool.submit(new Runnable() { // from class: com.loopme.common.EventManager.1
            @Override // java.lang.Runnable
            public void run() {
                HttpURLConnection httpURLConnection;
                HttpURLConnection httpURLConnection2 = null;
                try {
                    try {
                        httpURLConnection = (HttpURLConnection) new URL(build).openConnection();
                    } catch (Throwable th) {
                        th = th;
                    }
                } catch (MalformedURLException e) {
                    e = e;
                } catch (IOException e2) {
                    e = e2;
                }
                try {
                    httpURLConnection.getInputStream();
                    if (httpURLConnection == null) {
                        return;
                    }
                    httpURLConnection.disconnect();
                } catch (MalformedURLException e3) {
                    httpURLConnection2 = httpURLConnection;
                    e = e3;
                    Logging.out(EventManager.LOG_TAG, e.getMessage());
                    if (httpURLConnection2 == null) {
                        return;
                    }
                    httpURLConnection2.disconnect();
                } catch (IOException e4) {
                    httpURLConnection2 = httpURLConnection;
                    e = e4;
                    Logging.out(EventManager.LOG_TAG, e.getMessage());
                    if (httpURLConnection2 == null) {
                        return;
                    }
                    httpURLConnection2.disconnect();
                } catch (Throwable th2) {
                    httpURLConnection2 = httpURLConnection;
                    th = th2;
                    if (httpURLConnection2 != null) {
                        httpURLConnection2.disconnect();
                    }
                    throw th;
                }
            }
        });
    }
}
