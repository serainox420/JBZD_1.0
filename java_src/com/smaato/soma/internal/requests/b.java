package com.smaato.soma.internal.requests;

import android.os.AsyncTask;
import com.smaato.soma.exception.LoadingBeaconFailed;
import com.smaato.soma.l;
import java.io.EOFException;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLConnection;
import java.net.UnknownHostException;
/* compiled from: BeaconRequest.java */
/* loaded from: classes3.dex */
public class b extends AsyncTask<String, Void, Void> {
    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    /* renamed from: a */
    public final Void doInBackground(final String... strArr) {
        return new l<Void>() { // from class: com.smaato.soma.internal.requests.b.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                for (String str : strArr) {
                    b.this.a(str);
                }
                return null;
            }
        }.c();
    }

    protected final void a(String str) throws LoadingBeaconFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.internal.requests.b.2
            });
            if (str != null) {
                HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
                httpURLConnection.setRequestMethod("GET");
                httpURLConnection.setConnectTimeout(5000);
                httpURLConnection.setRequestProperty("User-Agent", f.b().c());
                httpURLConnection.connect();
                InputStream a2 = a(httpURLConnection);
                if (a2 != null) {
                    a2.close();
                }
                httpURLConnection.disconnect();
            }
        } catch (EOFException e) {
        } catch (FileNotFoundException e2) {
        } catch (RuntimeException e3) {
            throw new LoadingBeaconFailed(e3);
        } catch (MalformedURLException e4) {
        } catch (ProtocolException e5) {
        } catch (SocketTimeoutException e6) {
        } catch (UnknownHostException e7) {
        } catch (Exception e8) {
            throw new LoadingBeaconFailed(e8);
        }
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
