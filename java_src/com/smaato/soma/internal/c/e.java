package com.smaato.soma.internal.c;

import android.os.AsyncTask;
import com.smaato.soma.exception.LoadingBeaconFailed;
import java.io.BufferedReader;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
import java.util.Iterator;
import java.util.Vector;
/* compiled from: GetRequestTask.java */
/* loaded from: classes3.dex */
public class e extends AsyncTask<Vector<String>, String, String> {

    /* renamed from: a  reason: collision with root package name */
    public static String f4977a = "GetRequestTask";

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public String doInBackground(Vector<String>... vectorArr) {
        if (vectorArr == null || vectorArr[0] == null) {
            return null;
        }
        Iterator<String> it = vectorArr[0].iterator();
        String str = null;
        while (it.hasNext()) {
            try {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(it.next()).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setRequestProperty("User-Agent", com.smaato.soma.internal.requests.f.b().c());
                httpURLConnection.setDoInput(true);
                httpURLConnection.connect();
                a(httpURLConnection).close();
                if (httpURLConnection.getResponseCode() == 200) {
                    BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
                    while (true) {
                        String readLine = bufferedReader.readLine();
                        if (readLine == null) {
                            break;
                        }
                        str = str + readLine;
                    }
                } else {
                    str = "";
                }
                httpURLConnection.disconnect();
            } catch (Exception e) {
                str = str;
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public void onPostExecute(String str) {
        super.onPostExecute(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0069, code lost:
        throw new java.lang.SecurityException("illegal URL redirect");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private InputStream a(URLConnection uRLConnection) throws IOException, LoadingBeaconFailed {
        int i;
        boolean z;
        HttpURLConnection httpURLConnection;
        int responseCode;
        InputStream inputStream = null;
        int i2 = 0;
        URLConnection uRLConnection2 = uRLConnection;
        while (true) {
            try {
                if (uRLConnection2 instanceof HttpURLConnection) {
                    ((HttpURLConnection) uRLConnection2).setInstanceFollowRedirects(false);
                }
                inputStream = uRLConnection2.getInputStream();
                if (!(uRLConnection2 instanceof HttpURLConnection) || (responseCode = (httpURLConnection = (HttpURLConnection) uRLConnection2).getResponseCode()) < 300 || responseCode > 307 || responseCode == 306 || responseCode == 304) {
                    i = i2;
                    z = false;
                } else {
                    URL url = httpURLConnection.getURL();
                    String headerField = httpURLConnection.getHeaderField("Location");
                    URL url2 = headerField != null ? new URL(url, headerField) : null;
                    httpURLConnection.disconnect();
                    if (url2 == null || ((!url2.getProtocol().equals("http") && !url2.getProtocol().equals("https")) || i2 >= 5)) {
                        break;
                    }
                    uRLConnection2 = url2.openConnection();
                    int i3 = i2 + 1;
                    z = true;
                    i = i3;
                }
                if (!z) {
                    return inputStream;
                }
                i2 = i;
            } catch (EOFException e) {
                return inputStream;
            } catch (FileNotFoundException e2) {
                return inputStream;
            } catch (MalformedURLException e3) {
                return inputStream;
            } catch (ProtocolException e4) {
                return inputStream;
            } catch (SocketTimeoutException e5) {
                return inputStream;
            } catch (UnknownHostException e6) {
                return inputStream;
            } catch (Exception e7) {
                throw new LoadingBeaconFailed(e7);
            }
        }
    }
}
