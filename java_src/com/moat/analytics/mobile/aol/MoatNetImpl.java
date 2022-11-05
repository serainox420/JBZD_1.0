package com.moat.analytics.mobile.aol;

import android.util.Log;
import com.inmobi.monetization.internal.Constants;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
/* loaded from: classes3.dex */
enum MoatNetImpl implements MoatNet {
    instance;

    private String readIntoString(InputStream inputStream) throws IOException {
        char[] cArr = new char[256];
        StringBuilder sb = new StringBuilder();
        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "UTF-8");
        int i = 0;
        do {
            int read = inputStreamReader.read(cArr, 0, cArr.length);
            if (read <= 0) {
                break;
            }
            i += read;
            sb.append(cArr, 0, read);
        } while (i < 1024);
        return sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.IOException] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r5v0, types: [com.moat.analytics.mobile.aol.MoatNetImpl] */
    @Override // com.moat.analytics.mobile.aol.MoatNet
    public Optional<String> request(String str) {
        Optional<String> empty;
        ?? e = 0;
        e = 0;
        e = 0;
        e = 0;
        try {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setUseCaches(false);
                httpURLConnection.setReadTimeout(10000);
                httpURLConnection.setConnectTimeout(Constants.HTTP_TIMEOUT);
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                if (httpURLConnection.getResponseCode() >= 400) {
                    empty = Optional.empty();
                    if (0 != 0) {
                        try {
                            e.close();
                        } catch (IOException e2) {
                            e = e2;
                        }
                    }
                } else {
                    e = httpURLConnection.getInputStream();
                    empty = Optional.of(readIntoString(e));
                    if (e != 0) {
                        try {
                            e.close();
                        } catch (IOException e3) {
                            e = e3;
                        }
                    }
                }
            } catch (Throwable th) {
                if (e != 0) {
                    try {
                        e.close();
                    } catch (IOException e4) {
                    }
                }
                throw th;
            }
        } catch (IOException e5) {
            if (BuildConfig.DEBUG.booleanValue()) {
                Log.e("MoatNetImpl", "On/off status check error: " + Log.getStackTraceString(e5));
            }
            empty = Optional.empty();
            if (e != 0) {
                try {
                    e.close();
                } catch (IOException e6) {
                }
            }
        }
        return empty;
    }
}
