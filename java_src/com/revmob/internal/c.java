package com.revmob.internal;

import android.app.Activity;
import android.content.Intent;
import android.graphics.BitmapFactory;
import android.net.Uri;
import com.google.android.gms.location.places.Place;
import com.google.firebase.a.a;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.SocketException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.UnknownHostException;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLPeerUnverifiedException;
import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpRequestBase;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.conn.HttpHostConnectException;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.AbstractHttpClient;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static int f4798a = 30;
    private static String e;
    private static String f;
    private static String g;
    private static String h;
    private static boolean k;
    private static boolean l;
    private static boolean m;
    private static boolean n;
    private static boolean o;
    private static boolean p;
    public String b;
    public String c;
    private AbstractHttpClient d;
    private Boolean i;
    private Boolean j;

    public c() {
        this(new DefaultHttpClient());
        k();
    }

    public c(AbstractHttpClient abstractHttpClient) {
        k();
        this.d = abstractHttpClient;
        a(f4798a);
        this.d.getConnectionManager().getSchemeRegistry().register(new Scheme("https", SSLSocketFactory.getSocketFactory(), 443));
    }

    public static int a(int[] iArr, int i, int i2) {
        int round;
        int i3 = 1;
        int i4 = iArr[0];
        int i5 = iArr[1];
        if ((i5 > i2 || i4 > i) && (i3 = Math.round(i5 / i2)) >= (round = Math.round(i4 / i))) {
            i3 = round;
        }
        if (i3 < 4) {
            return i3;
        }
        return 5;
    }

    public static String a() {
        return e;
    }

    public static String a(HttpEntity httpEntity) {
        String str;
        IOException e2;
        if (httpEntity == null) {
            return null;
        }
        try {
            StringBuffer stringBuffer = new StringBuffer(1024);
            InputStreamReader inputStreamReader = new InputStreamReader(httpEntity.getContent(), "UTF-8");
            char[] cArr = new char[1024];
            while (true) {
                int read = inputStreamReader.read(cArr, 0, Place.TYPE_SUBLOCALITY_LEVEL_1);
                if (read <= 0) {
                    str = stringBuffer.toString();
                    try {
                        inputStreamReader.close();
                        return str;
                    } catch (IOException e3) {
                        e2 = e3;
                        u.a(e2, null, w.c, null, "encodedResponseBody");
                        RMLog.w("Read error.");
                        return str;
                    }
                }
                stringBuffer.append(cArr, 0, read);
            }
        } catch (IOException e4) {
            str = "";
            e2 = e4;
        }
    }

    private HttpResponse a(HttpRequestBase httpRequestBase) {
        try {
            HttpResponse execute = this.d.execute(httpRequestBase);
            if (!execute.getStatusLine().toString().equals("HTTP/1.1 200 OK") || !this.j.booleanValue()) {
                return execute;
            }
            com.revmob.a.e.f4738a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(httpRequestBase.getURI().toString())));
            j.b = true;
            return execute;
        } catch (HttpHostConnectException e2) {
            u.a(e2, null, w.c, httpRequestBase.getURI().toString(), "sendRequest2");
            throw new SSLException((Throwable) e2);
        } catch (SocketException e3) {
            u.a(e3, null, w.c, httpRequestBase.getURI().toString(), "sendRequest4");
            RMLog.w("Server took too long to respond.");
            return null;
        } catch (UnknownHostException e4) {
            RMLog.w("Error on requesting path " + httpRequestBase.getRequestLine() + ". Is the device connected to the internet?", e4);
            u.a(e4, null, w.c, httpRequestBase.getURI().toString(), "sendRequest1");
            return null;
        } catch (SSLPeerUnverifiedException e5) {
            u.a(e5, null, w.c, httpRequestBase.getURI().toString(), "sendRequest3");
            throw new SSLException(e5);
        } catch (SSLException e6) {
            u.a(e6, null, w.c, httpRequestBase.getURI().toString(), "sendRequest5");
            throw e6;
        } catch (IOException e7) {
            u.a(e7, null, w.c, httpRequestBase.getURI().toString(), "sendRequest6");
            RMLog.w("Error on requesting path " + httpRequestBase.getRequestLine() + ". Did the device lost its connection?", e7);
            return null;
        }
    }

    public static void a(String str) {
        f = str;
    }

    public static void a(String str, Activity activity) {
        if (activity != null) {
            e = System.getProperty("http.agent");
        } else {
            e = str;
        }
    }

    public static void a(boolean z) {
        k = z;
    }

    public static void a(boolean z, Activity activity) {
        if (activity != null) {
            l = false;
        } else {
            l = z;
        }
    }

    public static int[] a(File file) {
        Exception exc;
        int i;
        int i2;
        int i3;
        try {
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(file.getAbsolutePath(), options);
            i2 = options.outWidth;
            try {
                i3 = options.outHeight;
            } catch (Exception e2) {
                i = i2;
                exc = e2;
                u.a(exc, null, w.f4815a, file.getName(), "getImageSize");
                i2 = i;
                i3 = 0;
                return new int[]{i2, i3};
            }
        } catch (Exception e3) {
            exc = e3;
            i = 0;
        }
        return new int[]{i2, i3};
    }

    public static String b() {
        return f;
    }

    private static String b(String str, String str2) {
        List<NameValuePair> list = null;
        String str3 = "";
        try {
            list = URLEncodedUtils.parse(new URI(str), "UTF-8");
        } catch (URISyntaxException e2) {
            u.a(e2, null, w.c, str, "getQueryStringField");
            e2.printStackTrace();
        }
        for (NameValuePair nameValuePair : list) {
            str3 = nameValuePair.getName().equals(str2) ? nameValuePair.getValue() : str3;
        }
        return str3;
    }

    private HttpResponse b(HttpRequestBase httpRequestBase) {
        try {
            return a(httpRequestBase);
        } catch (SSLException e2) {
            u.a(e2, null, w.c, httpRequestBase.getURI().toString(), "sendRequestDealingWithSSLErrors1");
            try {
                if (!httpRequestBase.getURI().toString().startsWith("https://")) {
                    return null;
                }
                httpRequestBase.setURI(new URI(httpRequestBase.getURI().toString().replace("https://", "http://")));
                return a(httpRequestBase);
            } catch (URISyntaxException e3) {
                u.a(e2, null, w.c, httpRequestBase.getURI().toString(), "sendRequestDealingWithSSLErrors3");
                RMLog.e("Invalid url: " + httpRequestBase.getURI().toString());
                return null;
            } catch (SSLException e4) {
                u.a(e2, null, w.c, httpRequestBase.getURI().toString(), "sendRequestDealingWithSSLErrors2");
                RMLog.i("Problem with SSL. What is the version of your Android?");
                return null;
            }
        }
    }

    public static void b(String str, Activity activity) {
        if (activity != null) {
            g = "https://s3.amazonaws.com/www.revmob.com/Revmob_i_agree_terms.txt";
        } else {
            g = str;
        }
    }

    public static void b(boolean z) {
        m = z;
    }

    public static void c(String str, Activity activity) {
        if (activity != null) {
            h = "default";
        } else {
            h = str;
        }
    }

    public static void c(boolean z) {
        n = z;
    }

    public static boolean c() {
        return k;
    }

    public static void d(boolean z) {
        o = z;
    }

    public static boolean d() {
        return l;
    }

    public static void e(boolean z) {
        p = z;
    }

    public static boolean e() {
        return m;
    }

    public static boolean f() {
        return n;
    }

    public static boolean g() {
        return o;
    }

    public static boolean h() {
        return p;
    }

    public static String i() {
        return g;
    }

    public static String j() {
        return h;
    }

    private void k() {
        this.j = false;
        this.i = false;
        this.b = "";
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0030, code lost:
        if (r11.contains("redirect=1") != false) goto L10;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0065 A[Catch: UnsupportedEncodingException -> 0x0144, RuntimeException -> 0x0161, IOException -> 0x01a8, TryCatch #5 {UnsupportedEncodingException -> 0x0144, IOException -> 0x01a8, RuntimeException -> 0x0161, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x0032, B:11:0x0039, B:13:0x0065, B:14:0x007c, B:16:0x00a4, B:18:0x00a8, B:20:0x00b0, B:21:0x00b6, B:23:0x00be, B:24:0x00c4, B:26:0x00cc, B:27:0x00d1, B:29:0x00e0, B:30:0x00e5, B:57:0x0154, B:31:0x00ea, B:33:0x00f2, B:35:0x00fa, B:37:0x00fe, B:39:0x0107, B:41:0x010f, B:43:0x0120, B:61:0x0170, B:45:0x0126, B:52:0x013b, B:47:0x0129, B:49:0x0131), top: B:80:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b0 A[Catch: UnsupportedEncodingException -> 0x0144, RuntimeException -> 0x0161, IOException -> 0x01a8, TryCatch #5 {UnsupportedEncodingException -> 0x0144, IOException -> 0x01a8, RuntimeException -> 0x0161, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x0032, B:11:0x0039, B:13:0x0065, B:14:0x007c, B:16:0x00a4, B:18:0x00a8, B:20:0x00b0, B:21:0x00b6, B:23:0x00be, B:24:0x00c4, B:26:0x00cc, B:27:0x00d1, B:29:0x00e0, B:30:0x00e5, B:57:0x0154, B:31:0x00ea, B:33:0x00f2, B:35:0x00fa, B:37:0x00fe, B:39:0x0107, B:41:0x010f, B:43:0x0120, B:61:0x0170, B:45:0x0126, B:52:0x013b, B:47:0x0129, B:49:0x0131), top: B:80:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00be A[Catch: UnsupportedEncodingException -> 0x0144, RuntimeException -> 0x0161, IOException -> 0x01a8, TryCatch #5 {UnsupportedEncodingException -> 0x0144, IOException -> 0x01a8, RuntimeException -> 0x0161, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x0032, B:11:0x0039, B:13:0x0065, B:14:0x007c, B:16:0x00a4, B:18:0x00a8, B:20:0x00b0, B:21:0x00b6, B:23:0x00be, B:24:0x00c4, B:26:0x00cc, B:27:0x00d1, B:29:0x00e0, B:30:0x00e5, B:57:0x0154, B:31:0x00ea, B:33:0x00f2, B:35:0x00fa, B:37:0x00fe, B:39:0x0107, B:41:0x010f, B:43:0x0120, B:61:0x0170, B:45:0x0126, B:52:0x013b, B:47:0x0129, B:49:0x0131), top: B:80:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00cc A[Catch: UnsupportedEncodingException -> 0x0144, RuntimeException -> 0x0161, IOException -> 0x01a8, TRY_LEAVE, TryCatch #5 {UnsupportedEncodingException -> 0x0144, IOException -> 0x01a8, RuntimeException -> 0x0161, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x0032, B:11:0x0039, B:13:0x0065, B:14:0x007c, B:16:0x00a4, B:18:0x00a8, B:20:0x00b0, B:21:0x00b6, B:23:0x00be, B:24:0x00c4, B:26:0x00cc, B:27:0x00d1, B:29:0x00e0, B:30:0x00e5, B:57:0x0154, B:31:0x00ea, B:33:0x00f2, B:35:0x00fa, B:37:0x00fe, B:39:0x0107, B:41:0x010f, B:43:0x0120, B:61:0x0170, B:45:0x0126, B:52:0x013b, B:47:0x0129, B:49:0x0131), top: B:80:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:52:0x013b A[Catch: UnsupportedEncodingException -> 0x0144, RuntimeException -> 0x0161, IOException -> 0x01a8, TRY_LEAVE, TryCatch #5 {UnsupportedEncodingException -> 0x0144, IOException -> 0x01a8, RuntimeException -> 0x0161, blocks: (B:6:0x0009, B:8:0x0023, B:10:0x0032, B:11:0x0039, B:13:0x0065, B:14:0x007c, B:16:0x00a4, B:18:0x00a8, B:20:0x00b0, B:21:0x00b6, B:23:0x00be, B:24:0x00c4, B:26:0x00cc, B:27:0x00d1, B:29:0x00e0, B:30:0x00e5, B:57:0x0154, B:31:0x00ea, B:33:0x00f2, B:35:0x00fa, B:37:0x00fe, B:39:0x0107, B:41:0x010f, B:43:0x0120, B:61:0x0170, B:45:0x0126, B:52:0x013b, B:47:0x0129, B:49:0x0131), top: B:80:0x0009 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final HttpResponse a(String str, String str2) {
        HttpResponse b;
        Header firstHeader;
        Header firstHeader2;
        Header firstHeader3;
        HttpResponse httpResponse = null;
        if (str == null || str.length() <= 0) {
            RMLog.d("URL == null or URL.length() > 0");
            return null;
        }
        try {
            RMLog.d("Sending POST to: " + str);
            if (!str.contains("fetch_only")) {
                if (!str.contains("click.json")) {
                    if (str.contains("click_stub.json")) {
                    }
                    this.d.getParams().setParameter("http.useragent", e);
                    HttpPost httpPost = new HttpPost(str);
                    BasicHttpParams basicHttpParams = new BasicHttpParams();
                    basicHttpParams.setParameter("http.protocol.handle-redirects", false);
                    httpPost.setParams(basicHttpParams);
                    if (!l.f4806a.booleanValue()) {
                        httpPost.setHeader("Content-type", "application/x-www-form-urlencoded");
                        httpPost.addHeader("x-revmob-crypt", l.b);
                        new l();
                        str2 = l.a(str2);
                    } else {
                        httpPost.setHeader("Content-type", "application/json");
                    }
                    httpPost.addHeader("User-Agent", e);
                    httpPost.setEntity(new StringEntity(str2, "UTF-8"));
                    double currentTimeMillis = System.currentTimeMillis();
                    b = b((HttpRequestBase) httpPost);
                    double currentTimeMillis2 = (System.currentTimeMillis() - currentTimeMillis) / 1000.0d;
                    if (b != null && this.c == null) {
                        firstHeader2 = b.getFirstHeader("x-revmob-campaign");
                        if (firstHeader2 != null) {
                            this.c = firstHeader2.getValue();
                        }
                        firstHeader3 = b.getFirstHeader("x-revmob-fetch");
                        if (firstHeader3 != null) {
                            this.b = firstHeader3.getValue();
                        }
                    }
                    if (this.i.booleanValue()) {
                        JSONObject jSONObject = new JSONObject();
                        try {
                            jSONObject.put("id", this.b);
                            if (!this.j.booleanValue()) {
                                jSONObject.put("fetch", currentTimeMillis2);
                            }
                        } catch (JSONException e2) {
                            u.a(e2, this.c, w.c, str, "post1");
                            e2.printStackTrace();
                        }
                        com.revmob.a.e.d.put(jSONObject);
                    }
                    if (this.i.booleanValue() && this.j.booleanValue() && this.c != null) {
                        com.revmob.a.e.a(this.c, "link");
                    }
                    if (b == null && (firstHeader = b.getFirstHeader(a.b.LOCATION)) != null) {
                        b.getEntity().consumeContent();
                        String value = firstHeader.getValue();
                        if (j.a(value) || j.b(value)) {
                            j.f4804a = value;
                            return b;
                        }
                        HttpResponse b2 = b(value);
                        try {
                            double currentTimeMillis3 = System.currentTimeMillis() - currentTimeMillis;
                            if (this.j.booleanValue()) {
                                if (this.b.equals("")) {
                                    this.b = b(str, "fetch_id");
                                }
                                com.revmob.a.e.a(this.b, this.i.booleanValue(), currentTimeMillis2, currentTimeMillis3 / 1000.0d);
                            }
                            return b2;
                        } catch (UnsupportedEncodingException e3) {
                            e = e3;
                            httpResponse = b2;
                            u.a(e, null, w.c, str, "post2");
                            RMLog.w("Encoding error.", e);
                            return httpResponse;
                        } catch (IOException e4) {
                            e = e4;
                            httpResponse = b2;
                            u.a(e, null, w.c, str, "post4");
                            RMLog.e("Failed to consume content", e);
                            return httpResponse;
                        } catch (RuntimeException e5) {
                            e = e5;
                            httpResponse = b2;
                            u.a(e, null, w.c, str, "post3");
                            RMLog.e("Unknown error", e);
                            return httpResponse;
                        }
                    }
                }
                this.j = true;
                this.d.getParams().setParameter("http.useragent", e);
                HttpPost httpPost2 = new HttpPost(str);
                BasicHttpParams basicHttpParams2 = new BasicHttpParams();
                basicHttpParams2.setParameter("http.protocol.handle-redirects", false);
                httpPost2.setParams(basicHttpParams2);
                if (!l.f4806a.booleanValue()) {
                }
                httpPost2.addHeader("User-Agent", e);
                httpPost2.setEntity(new StringEntity(str2, "UTF-8"));
                double currentTimeMillis4 = System.currentTimeMillis();
                b = b((HttpRequestBase) httpPost2);
                double currentTimeMillis22 = (System.currentTimeMillis() - currentTimeMillis4) / 1000.0d;
                if (b != null) {
                    firstHeader2 = b.getFirstHeader("x-revmob-campaign");
                    if (firstHeader2 != null) {
                    }
                    firstHeader3 = b.getFirstHeader("x-revmob-fetch");
                    if (firstHeader3 != null) {
                    }
                }
                if (this.i.booleanValue()) {
                }
                if (this.i.booleanValue()) {
                    com.revmob.a.e.a(this.c, "link");
                }
                return b == null ? b : b;
            }
            this.i = true;
        } catch (UnsupportedEncodingException e6) {
            e = e6;
        } catch (IOException e7) {
            e = e7;
        } catch (RuntimeException e8) {
            e = e8;
        }
    }

    public final void a(int i) {
        HttpConnectionParams.setConnectionTimeout(this.d.getParams(), i * 1000);
    }

    public final HttpResponse b(String str) {
        RMLog.d("Sending GET to " + str);
        try {
            return b((HttpRequestBase) new HttpGet(str));
        } catch (Exception e2) {
            u.a(e2, this.c, w.c, str, "get");
            RMLog.e("Error on GET. Trying to open on browser", e2);
            com.revmob.a.e.f4738a.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
            return null;
        }
    }
}
