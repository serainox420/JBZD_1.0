package com.inmobi.commons.analytics.net;

import android.util.Log;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.InternalSDKUtil;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.ProtocolException;
import java.net.URL;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class AnalyticsCommon {

    /* loaded from: classes2.dex */
    public interface HttpRequestCallback {
        public static final int HTTP_FAILURE = 1;
        public static final int HTTP_SUCCESS = 0;

        void notifyResult(int i, Object obj);
    }

    public HttpURLConnection setupConnection(String str) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        a(httpURLConnection);
        return httpURLConnection;
    }

    private static void a(HttpURLConnection httpURLConnection) throws ProtocolException {
        httpURLConnection.setDoOutput(true);
        httpURLConnection.setDoInput(true);
        httpURLConnection.setConnectTimeout(60000);
        httpURLConnection.setReadTimeout(60000);
        httpURLConnection.setRequestMethod("POST");
        httpURLConnection.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
        httpURLConnection.setRequestProperty("User-Agent", InternalSDKUtil.getUserAgent());
    }

    public void postData(HttpURLConnection httpURLConnection, String str) throws IOException {
        BufferedWriter bufferedWriter;
        httpURLConnection.setRequestProperty("Content-Length", Integer.toString(str.length()));
        try {
            bufferedWriter = new BufferedWriter(new OutputStreamWriter(httpURLConnection.getOutputStream()));
        } catch (Throwable th) {
            th = th;
            bufferedWriter = null;
        }
        try {
            bufferedWriter.write(str);
            closeResource(bufferedWriter);
        } catch (Throwable th2) {
            th = th2;
            closeResource(bufferedWriter);
            throw th;
        }
    }

    public void closeResource(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                Log.d(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception closing resource: " + closeable, e);
            }
        }
    }

    public static String getURLEncoded(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception e) {
            return "";
        }
    }
}
