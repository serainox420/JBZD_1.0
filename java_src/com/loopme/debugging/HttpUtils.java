package com.loopme.debugging;

import com.loopme.common.ExecutorHelper;
import com.loopme.common.Logging;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLEncoder;
import java.util.Map;
/* loaded from: classes2.dex */
class HttpUtils {
    private static final String CONTENT_TYPE = "application/x-www-form-urlencoded";
    private static final String ERROR_URL = "https://track.loopme.me/api/errors";
    private static final String LOG_TAG = HttpUtils.class.getSimpleName();
    private static final int REQUEST_TIMEOUT = 10000;

    HttpUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r1v20, types: [java.lang.String] */
    public static void handleRequest(Map<String, String> map) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2 = 0;
        HttpURLConnection httpURLConnection3 = null;
        HttpURLConnection httpURLConnection4 = null;
        try {
            try {
                httpURLConnection = (HttpURLConnection) new URL(ERROR_URL).openConnection();
            } catch (Throwable th) {
                th = th;
            }
        } catch (MalformedURLException e) {
            e = e;
        } catch (IOException e2) {
            e = e2;
        }
        try {
            httpURLConnection.setReadTimeout(10000);
            httpURLConnection.setConnectTimeout(10000);
            httpURLConnection.setRequestMethod("POST");
            httpURLConnection.setDoInput(true);
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setRequestProperty("Content-Type", CONTENT_TYPE);
            OutputStream outputStream = httpURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(getPostDataString(map));
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            httpURLConnection.connect();
            int responseCode = httpURLConnection.getResponseCode();
            httpURLConnection2 = "response code : " + responseCode;
            Logging.out(LOG_TAG, httpURLConnection2);
            if (httpURLConnection == null) {
                return;
            }
            httpURLConnection.disconnect();
        } catch (MalformedURLException e3) {
            httpURLConnection3 = httpURLConnection;
            e = e3;
            e.printStackTrace();
            Logging.out(LOG_TAG, e.getMessage());
            if (httpURLConnection3 == null) {
                return;
            }
            httpURLConnection3.disconnect();
        } catch (IOException e4) {
            httpURLConnection4 = httpURLConnection;
            e = e4;
            e.printStackTrace();
            Logging.out(LOG_TAG, e.getMessage());
            if (httpURLConnection4 == null) {
                return;
            }
            httpURLConnection4.disconnect();
        } catch (Throwable th2) {
            httpURLConnection2 = httpURLConnection;
            th = th2;
            if (httpURLConnection2 != 0) {
                httpURLConnection2.disconnect();
            }
            throw th;
        }
    }

    public static void postDataToServer(final Map<String, String> map) {
        ExecutorHelper.getExecutor().submit(new Runnable() { // from class: com.loopme.debugging.HttpUtils.1
            @Override // java.lang.Runnable
            public void run() {
                HttpUtils.handleRequest(map);
            }
        });
    }

    private static String getPostDataString(Map<String, String> map) throws UnsupportedEncodingException {
        boolean z;
        StringBuilder sb = new StringBuilder();
        boolean z2 = true;
        for (Map.Entry<String, String> entry : map.entrySet()) {
            if (z2) {
                z = false;
            } else {
                sb.append("&");
                z = z2;
            }
            sb.append(URLEncoder.encode(entry.getKey(), "UTF-8"));
            sb.append("=");
            sb.append(URLEncoder.encode(entry.getValue(), "UTF-8"));
            z2 = z;
        }
        return sb.toString();
    }
}
