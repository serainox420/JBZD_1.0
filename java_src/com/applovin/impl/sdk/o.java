package com.applovin.impl.sdk;

import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinLogger;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1664a;
    private final AppLovinLogger b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(AppLovinSdkImpl appLovinSdkImpl) {
        this.f1664a = appLovinSdkImpl;
        this.b = appLovinSdkImpl.getLogger();
    }

    private int a(Throwable th) {
        if (th instanceof SocketTimeoutException) {
            return AppLovinErrorCodes.FETCH_AD_TIMEOUT;
        }
        if (!(th instanceof IOException)) {
            return th instanceof JSONException ? -104 : -1;
        }
        String message = th.getMessage();
        return (message == null || !message.toLowerCase(Locale.ENGLISH).contains("authentication challenge")) ? -100 : 401;
    }

    private HttpURLConnection a(String str, String str2, int i) {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(str).openConnection();
        httpURLConnection.setRequestMethod(str2);
        httpURLConnection.setConnectTimeout(i < 0 ? ((Integer) this.f1664a.a(bx.o)).intValue() : i);
        if (i < 0) {
            i = ((Integer) this.f1664a.a(bx.q)).intValue();
        }
        httpURLConnection.setReadTimeout(i);
        httpURLConnection.setDefaultUseCaches(false);
        httpURLConnection.setAllowUserInteraction(false);
        httpURLConnection.setUseCaches(false);
        httpURLConnection.setInstanceFollowRedirects(true);
        httpURLConnection.setDoInput(true);
        return httpURLConnection;
    }

    private static void a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (Exception e) {
            }
        }
    }

    private void a(String str, int i, String str2, p pVar) {
        this.b.d("ConnectionManager", i + " received from from \"" + str2 + "\": " + str);
        if (i < 200 || i >= 300) {
            this.b.e("ConnectionManager", i + " error received from \"" + str2 + "\"");
            pVar.a(i);
            return;
        }
        JSONObject jSONObject = new JSONObject();
        if (i != 204 && str != null && str.length() > 2) {
            jSONObject = new JSONObject(str);
        }
        pVar.a(jSONObject, i);
    }

    private void a(String str, String str2, int i, long j) {
        this.b.i("ConnectionManager", "Successful " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + q.a(this.f1664a) + " to \"" + str2 + "\"");
    }

    private void a(String str, String str2, int i, long j, Throwable th) {
        this.b.e("ConnectionManager", "Failed " + str + " returned " + i + " in " + (((float) (System.currentTimeMillis() - j)) / 1000.0f) + " s over " + q.a(this.f1664a) + " to \"" + str2 + "\"", th);
    }

    private static void a(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            try {
                httpURLConnection.disconnect();
            } catch (Exception e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, int i, p pVar) {
        a(str, "GET", i, null, true, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, int i, JSONObject jSONObject, boolean z, p pVar) {
        a(str, "POST", i, jSONObject, z, pVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, int i, boolean z, p pVar) {
        a(str, "GET", i, null, z, pVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x015f A[Catch: all -> 0x0190, TRY_ENTER, TryCatch #1 {all -> 0x0190, blocks: (B:24:0x0110, B:26:0x0116, B:28:0x011d, B:43:0x015f, B:44:0x0163, B:31:0x0136, B:32:0x0142), top: B:64:0x0110 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void a(String str, String str2, int i, JSONObject jSONObject, boolean z, p pVar) {
        String str3;
        HttpURLConnection httpURLConnection;
        InputStream inputStream;
        if (str == null) {
            throw new IllegalArgumentException("No endpoint specified");
        }
        if (str2 == null) {
            throw new IllegalArgumentException("No method specified");
        }
        if (pVar == null) {
            throw new IllegalArgumentException("No callback specified");
        }
        if (!str.toLowerCase().startsWith("http")) {
            this.b.userError("ConnectionManager", "Requested postback submission to non HTTP endpoint " + str + "; skipping...");
            pVar.a(AppLovinErrorCodes.INVALID_URL);
            return;
        }
        if (!((Boolean) this.f1664a.a(bx.aZ)).booleanValue() || str.contains("https://")) {
            str3 = str;
        } else {
            this.f1664a.getLogger().w("ConnectionManager", "Plaintext HTTP operation requested; upgrading to HTTPS due to universal SSL setting...");
            str3 = str.replace("http://", "https://");
        }
        long currentTimeMillis = System.currentTimeMillis();
        String str4 = null;
        InputStream inputStream2 = null;
        int i2 = -1;
        try {
            this.b.i("ConnectionManager", "Sending " + str2 + " request to \"" + str3 + "\"...");
            httpURLConnection = a(str3, str2, i);
            if (jSONObject != null) {
                try {
                    String jSONObject2 = jSONObject.toString();
                    this.b.d("ConnectionManager", "Request to \"" + str3 + "\" is " + jSONObject2);
                    httpURLConnection.setRequestProperty("Content-Type", "application/json; charset=utf-8");
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setFixedLengthStreamingMode(jSONObject2.getBytes(Charset.forName("UTF-8")).length);
                    PrintWriter printWriter = new PrintWriter(new OutputStreamWriter(httpURLConnection.getOutputStream(), "UTF8"));
                    printWriter.print(jSONObject2);
                    printWriter.close();
                    str4 = jSONObject2;
                } catch (Throwable th) {
                    th = th;
                    if (i2 == 0) {
                    }
                    a(str2, str3, i2, currentTimeMillis, th);
                    pVar.a(i2);
                    a(inputStream2);
                    a(httpURLConnection);
                    return;
                }
            }
            try {
                try {
                    try {
                        i2 = httpURLConnection.getResponseCode();
                    } catch (Throwable th2) {
                        th = th2;
                        inputStream2 = str4;
                        if (i2 == 0) {
                            i2 = a(th);
                        }
                        a(str2, str3, i2, currentTimeMillis, th);
                        pVar.a(i2);
                        a(inputStream2);
                        a(httpURLConnection);
                        return;
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } catch (MalformedURLException e) {
                inputStream = null;
            }
            if (i2 > 0) {
                a(str2, str3, i2, currentTimeMillis);
                if (z) {
                    inputStream = httpURLConnection.getInputStream();
                    try {
                        a(q.a(inputStream), httpURLConnection.getResponseCode(), str3, pVar);
                        str4 = inputStream;
                    } catch (MalformedURLException e2) {
                        if (z) {
                            pVar.a(-901);
                            str4 = inputStream;
                        } else {
                            pVar.a(new JSONObject(), -901);
                            str4 = inputStream;
                        }
                        a(str4);
                        a(httpURLConnection);
                    } catch (Throwable th4) {
                        inputStream2 = inputStream;
                        th = th4;
                        a(inputStream2);
                        a(httpURLConnection);
                        throw th;
                    }
                } else {
                    pVar.a(new JSONObject(), i2);
                    str4 = null;
                }
            } else {
                a(str2, str3, i2, currentTimeMillis, (Throwable) null);
                pVar.a(i2);
                str4 = null;
            }
            a(str4);
            a(httpURLConnection);
        } catch (Throwable th5) {
            th = th5;
            httpURLConnection = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str, JSONObject jSONObject, p pVar) {
        a(str, "POST", -1, jSONObject, true, pVar);
    }
}
