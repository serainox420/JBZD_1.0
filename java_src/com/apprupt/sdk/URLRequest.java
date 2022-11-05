package com.apprupt.sdk;

import android.os.Handler;
import android.os.Looper;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.Q;
import com.facebook.ads.AudienceNetworkActivity;
import com.pubmatic.sdk.common.CommonConstants;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.ConnectException;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.NoRouteToHostException;
import java.net.SocketTimeoutException;
import java.net.URL;
import java.net.URLEncoder;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class URLRequest {
    private static final Logger.log b = Logger.a("URL_REQUEST");
    private static final Logger.log c = Logger.a("Q");
    private String d;
    private Type f;

    /* renamed from: a  reason: collision with root package name */
    Handler f1980a = new Handler(Looper.getMainLooper());
    private StringBuilder e = new StringBuilder();
    private StringBuilder g = null;
    private List<NameValuePair> h = null;
    private Listener i = null;
    private boolean j = false;
    private boolean k = false;
    private HashMap<String, ArrayList<String>> l = new HashMap<>();

    /* loaded from: classes.dex */
    private class CancelRequest extends Exception {
    }

    /* loaded from: classes.dex */
    public interface Listener {
        void a(URLResponse uRLResponse);
    }

    /* loaded from: classes.dex */
    public enum Type {
        POST,
        GET
    }

    /* loaded from: classes.dex */
    public class NameValuePair {
        private final String b;
        private final String c;

        public NameValuePair(String str, String str2) {
            this.b = str;
            this.c = str2;
        }

        public String a() {
            StringBuilder sb = new StringBuilder();
            try {
                sb.append(URLEncoder.encode(this.b, "UTF-8"));
                if (this.c != null && this.c.length() > 0) {
                    sb.append('=');
                    sb.append(URLEncoder.encode(this.c, "UTF-8"));
                }
            } catch (UnsupportedEncodingException e) {
            }
            return sb.toString();
        }
    }

    /* loaded from: classes.dex */
    public class URLResponse {

        /* renamed from: a  reason: collision with root package name */
        public final int f1987a;
        public final String b;
        public final String c;
        public final boolean d;
        public final Exception e;

        private URLResponse(URLRequest uRLRequest, int i, String str) {
            this(i, str, (Exception) null);
        }

        private URLResponse(URLRequest uRLRequest, Exception exc) {
            this(-1100, (String) null, exc);
        }

        private URLResponse(int i, String str, Exception exc) {
            boolean z;
            String str2 = null;
            if (exc != null) {
                if (exc instanceof SocketTimeoutException) {
                    i = CommonConstants.PubError.CONNECTION_ERROR;
                    str2 = "Socket timeout";
                } else if (exc instanceof ConnectException) {
                    i = CommonConstants.PubError.SERVER_ERROR;
                    str2 = "Connect error";
                } else if (exc instanceof NoRouteToHostException) {
                    i = CommonConstants.PubError.REQUEST_CANCLE;
                    str2 = "No route to host";
                } else {
                    str2 = "Error while trying to connect (" + exc.getClass().getName() + "): " + exc.getMessage();
                }
            }
            if (i == 200) {
                z = false;
            } else if (str2 == null) {
                str2 = "Server respond with code " + i;
                z = true;
            } else {
                z = true;
            }
            this.c = str;
            this.f1987a = i;
            this.b = str2;
            this.d = z;
            this.e = exc;
            URLRequest.b.d("URLResponse", Boolean.valueOf(z), Integer.valueOf(i), str2, exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ResponseDispatcher implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        public final URLResponse f1985a;

        ResponseDispatcher(URLResponse uRLResponse) {
            this.f1985a = uRLResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            URLRequest.this.a(this.f1985a);
        }
    }

    private URLRequest(Type type, String str, Object[] objArr) {
        a(str);
        if (objArr != null && objArr.length > 0) {
            for (Object obj : objArr) {
                a(obj);
            }
        }
        this.f = type;
    }

    public void a(String str) {
        if (str == null) {
            throw new InvalidParameterException("Host cannot be null");
        }
        if (str.startsWith("https://")) {
            a(true);
        } else if (str.startsWith("http://")) {
            a(false);
        }
        this.d = str.replaceAll("^https?://", "").replaceAll("[/]+$", "");
    }

    public String a() {
        return this.d;
    }

    public void a(boolean z) {
        this.k = z;
    }

    public static URLRequest b(String str) {
        return new URLRequest(Type.POST, str, null);
    }

    public static URLRequest c(String str) {
        return new URLRequest(Type.GET, str, null);
    }

    public URLRequest a(Listener listener) {
        this.i = listener;
        return this;
    }

    public URLRequest a(String str, Object obj) {
        if (this.f == Type.GET) {
            throw new InvalidParameterException("Cannot add param to post request");
        }
        if (this.h == null) {
            this.h = new ArrayList();
        }
        this.h.add(new NameValuePair(str, obj == null ? "" : obj.toString()));
        return this;
    }

    public URLRequest a(Object obj) {
        return a(obj, true);
    }

    public URLRequest a(Object obj, boolean z) {
        this.e.append("/");
        if (obj != null) {
            try {
                this.e.append(z ? URLEncoder.encode(obj.toString(), "UTF-8") : obj.toString());
            } catch (UnsupportedEncodingException e) {
                b.c(e, "Cannot add path component: " + obj);
            }
        }
        return this;
    }

    public URLRequest b() {
        String str;
        String str2;
        String str3 = null;
        if (this.h != null) {
            StringBuilder sb = new StringBuilder();
            String str4 = "";
            for (NameValuePair nameValuePair : this.h) {
                String a2 = nameValuePair.a();
                if (a2.length() > 0) {
                    sb.append(str4);
                    sb.append(a2);
                    str2 = "&";
                } else {
                    str2 = str4;
                }
                str4 = str2;
            }
            if (sb.length() > 0) {
                str3 = sb.toString();
                str = "application/x-www-form-urlencoded";
                return a(str3, str);
            }
        }
        str = null;
        return a(str3, str);
    }

    public URLRequest a(String str, String str2) {
        return c(str, str2);
    }

    public Q.Task c() {
        return b(null, null);
    }

    public Q.Task b(final String str, final String str2) {
        return new Q.Task() { // from class: com.apprupt.sdk.URLRequest.1
            @Override // com.apprupt.sdk.Q.Task
            public void a(Object obj, final Q.Resolver resolver) throws Exception {
                URLRequest.c.a("Running URLRequest...");
                URLRequest.this.i = new Listener() { // from class: com.apprupt.sdk.URLRequest.1.1
                    @Override // com.apprupt.sdk.URLRequest.Listener
                    public void a(URLResponse uRLResponse) {
                        if (!uRLResponse.d) {
                            URLRequest.c.a("Resolve: URLRequest with response:", uRLResponse);
                            resolver.a(uRLResponse);
                            return;
                        }
                        resolver.a(uRLResponse.e == null ? new Exception("Error sending request.") : uRLResponse.e, uRLResponse);
                    }
                };
                if (str == null && str2 == null) {
                    URLRequest.this.b();
                } else {
                    URLRequest.this.a(str, str2);
                }
            }
        };
    }

    private URL f() {
        StringBuilder sb = new StringBuilder();
        sb.append("http");
        if (this.k) {
            sb.append("s");
        }
        sb.append("://");
        sb.append(a());
        sb.append((CharSequence) this.e);
        if (this.g != null) {
            sb.append("?");
            sb.append((CharSequence) this.g);
        }
        b.d(sb.toString());
        try {
            return new URL(sb.toString());
        } catch (MalformedURLException e) {
            InternalError internalError = new InternalError(e.toString());
            internalError.setStackTrace(e.getStackTrace());
            throw internalError;
        }
    }

    private URLRequest c(final String str, final String str2) {
        new Thread(new Runnable() { // from class: com.apprupt.sdk.URLRequest.2
            @Override // java.lang.Runnable
            public void run() {
                URLRequest.this.d(str, str2);
            }
        }).start();
        return this;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str, String str2) {
        URLResponse uRLResponse;
        try {
            HttpURLConnection httpURLConnection = (HttpURLConnection) f().openConnection();
            httpURLConnection.setDoOutput(true);
            httpURLConnection.setDoInput(true);
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setInstanceFollowRedirects(true);
            httpURLConnection.setRequestMethod(this.f.toString());
            httpURLConnection.setRequestProperty("charset", AudienceNetworkActivity.WEBVIEW_ENCODING);
            httpURLConnection.setRequestProperty("User-Agent", CvAppInfo.a().o());
            for (String str3 : this.l.keySet()) {
                Iterator<String> it = this.l.get(str3).iterator();
                while (it.hasNext()) {
                    httpURLConnection.setRequestProperty(str3, it.next());
                }
            }
            if (str != null) {
                byte[] bytes = str.getBytes("UTF-8");
                if (bytes.length > 0) {
                    if (str2 != null && str.length() > 0) {
                        httpURLConnection.setRequestProperty("Content-Type", str2);
                    }
                    httpURLConnection.setRequestProperty("Content-Length", Integer.toString(bytes.length));
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(bytes);
                    dataOutputStream.flush();
                    dataOutputStream.close();
                }
            }
            int responseCode = httpURLConnection.getResponseCode();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            int i = 0;
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                b.d("Readline: " + readLine);
                i += readLine.length();
                sb.append(readLine);
            }
            b.d("Total read:", Integer.valueOf(i));
            bufferedReader.close();
            uRLResponse = new URLResponse(responseCode, sb.toString());
        } catch (Exception e) {
            uRLResponse = new URLResponse(e);
        }
        this.f1980a.post(new ResponseDispatcher(uRLResponse));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(URLResponse uRLResponse) {
        b.d("Posting URLResponse", Boolean.valueOf(uRLResponse.d), Integer.valueOf(uRLResponse.f1987a), uRLResponse.b);
        if (this.i != null && !this.j) {
            this.i.a(uRLResponse);
        }
    }
}
