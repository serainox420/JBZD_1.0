package com.intentsoftware.addapptr.b;

import android.os.AsyncTask;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
/* compiled from: PostRequest.java */
/* loaded from: classes2.dex */
public class d extends AsyncTask<String, Void, Void> {
    private final String url;
    private HttpURLConnection urlConnection;

    public d(String str, String str2) {
        this.url = str;
        execute(str2);
    }

    private void sendRequest(String str) throws Exception {
        this.urlConnection = (HttpURLConnection) new URL(this.url).openConnection();
        this.urlConnection.setDoOutput(true);
        this.urlConnection.setRequestProperty("User-Agent", System.getProperty("http.agent"));
        byte[] bytes = str.getBytes("UTF-8");
        OutputStream outputStream = this.urlConnection.getOutputStream();
        outputStream.write(bytes);
        outputStream.flush();
        outputStream.close();
        int responseCode = this.urlConnection.getResponseCode();
        if (responseCode == 200) {
            if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
                com.intentsoftware.addapptr.c.c.d(this, "Post request sent successfully");
            }
        } else if (com.intentsoftware.addapptr.c.c.isLoggable(3)) {
            com.intentsoftware.addapptr.c.c.d(this, "Post request failed, response code: " + responseCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public Void doInBackground(String... strArr) {
        try {
            try {
                sendRequest(strArr[0]);
                if (this.urlConnection != null) {
                    this.urlConnection.disconnect();
                    return null;
                }
                return null;
            } catch (Exception e) {
                e.printStackTrace();
                if (this.urlConnection != null) {
                    this.urlConnection.disconnect();
                    return null;
                }
                return null;
            }
        } catch (Throwable th) {
            if (this.urlConnection != null) {
                this.urlConnection.disconnect();
            }
            throw th;
        }
    }
}
