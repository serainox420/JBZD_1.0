package com.intentsoftware.addapptr.b;

import android.content.Context;
import android.os.AsyncTask;
import android.webkit.WebView;
import com.intentsoftware.addapptr.c.m;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: HtmlDownloader.java */
/* loaded from: classes2.dex */
public class c extends AsyncTask<String, Void, String> {
    private static String userAgent;
    private final a listener;

    /* compiled from: HtmlDownloader.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onHtmlDownloaded(String str);

        void onHtmlDownloadingError();
    }

    public c(Context context, String str, a aVar) {
        this.listener = aVar;
        if (userAgent == null) {
            WebView webView = new WebView(context.getApplicationContext());
            userAgent = webView.getSettings().getUserAgentString();
            webView.destroy();
        }
        execute(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:30:0x008e  */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v12 */
    /* JADX WARN: Type inference failed for: r2v16 */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.net.HttpURLConnection] */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.intentsoftware.addapptr.b.c, java.lang.Object] */
    @Override // android.os.AsyncTask
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String doInBackground(String... strArr) {
        HttpURLConnection httpURLConnection;
        HttpURLConnection httpURLConnection2;
        Object obj;
        Object obj2;
        try {
            httpURLConnection2 = (HttpURLConnection) new URL(strArr[0]).openConnection();
        } catch (Exception e) {
            e = e;
            httpURLConnection = 0;
        } catch (Throwable th) {
            th = th;
            httpURLConnection = 0;
        }
        try {
            httpURLConnection2.setRequestProperty("User-Agent", userAgent);
            httpURLConnection = 1;
            httpURLConnection2.setInstanceFollowRedirects(true);
            HttpURLConnection httpURLConnection3 = httpURLConnection2;
            while (true) {
                try {
                    try {
                        httpURLConnection = httpURLConnection3;
                        if (!isRedirecting(httpURLConnection) || isCancelled()) {
                            break;
                        }
                        String headerField = httpURLConnection.getHeaderField("Location");
                        String headerField2 = httpURLConnection.getHeaderField("Set-Cookie");
                        HttpURLConnection httpURLConnection4 = (HttpURLConnection) new URL(headerField).openConnection();
                        httpURLConnection4.setRequestProperty("Cookie", headerField2);
                        String str = "User-Agent";
                        httpURLConnection4.setRequestProperty(str, userAgent);
                        httpURLConnection3 = httpURLConnection4;
                        httpURLConnection = str;
                    } catch (Exception e2) {
                        e = e2;
                        if (com.intentsoftware.addapptr.c.c.isLoggable(6)) {
                            com.intentsoftware.addapptr.c.c.e(this, "Exception when downloading HTML response: " + e.getMessage());
                        }
                        if (httpURLConnection == 0) {
                            return null;
                        }
                        httpURLConnection.disconnect();
                        return null;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (httpURLConnection != 0) {
                        httpURLConnection.disconnect();
                    }
                    throw th;
                }
            }
            String stringFromStream = !isCancelled() ? m.stringFromStream(httpURLConnection.getInputStream()) : null;
            if (httpURLConnection == null) {
                return stringFromStream;
            }
            httpURLConnection.disconnect();
            return stringFromStream;
        } catch (Exception e3) {
            httpURLConnection = obj2;
            e = e3;
        } catch (Throwable th3) {
            httpURLConnection = obj;
            th = th3;
            if (httpURLConnection != 0) {
            }
            throw th;
        }
    }

    private boolean isRedirecting(HttpURLConnection httpURLConnection) throws Exception {
        int responseCode = httpURLConnection.getResponseCode();
        return responseCode != 200 && (responseCode == 302 || responseCode == 301 || responseCode == 303);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(String str) {
        super.onPostExecute((c) str);
        if (!isCancelled()) {
            if (str != null && str.length() > 0) {
                this.listener.onHtmlDownloaded(str);
            } else {
                this.listener.onHtmlDownloadingError();
            }
        }
    }
}
