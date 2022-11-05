package com.smaato.soma;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.share.internal.ShareConstants;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.inmobi.monetization.internal.Constants;
import java.io.BufferedWriter;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.HttpURLConnection;
import java.net.URL;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: SentryClient.java */
/* loaded from: classes3.dex */
public class q {

    /* renamed from: a  reason: collision with root package name */
    public String f5229a;
    public String b;
    public String c;
    public String d;
    public String e;
    public String f;
    final String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private String l;
    private Context m;

    private q() {
        this.f5229a = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        this.b = AppEventsConstants.EVENT_PARAM_VALUE_NO;
        this.c = "sdkandroid_5-1-1";
        this.d = "";
        this.e = "";
        this.f = "";
        this.h = "https://app.getsentry.com:443/api/43633/store/";
        this.i = "0902ba8e7912430ab1457aad743a4259";
        this.j = "9bb7090c3712422680a3f615b56ca42b";
        this.k = "66819";
        this.l = "com.smaato.soma";
        this.g = "https://app.getsentry.com:443";
        this.d = b();
        this.e = e();
    }

    public void a() {
        final String g = g();
        if (g.length() >= 1) {
            new Thread(new Runnable() { // from class: com.smaato.soma.q.1
                @Override // java.lang.Runnable
                public void run() {
                    if (com.smaato.soma.debug.a.a()) {
                        try {
                            StringBuilder sb = new StringBuilder();
                            q.c().getClass();
                            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(sb.append("https://app.getsentry.com:443").append("/api/").append(q.this.k).append("/store/").toString()).openConnection();
                            httpURLConnection.setRequestMethod("POST");
                            httpURLConnection.setDoOutput(true);
                            httpURLConnection.setDoInput(true);
                            httpURLConnection.setConnectTimeout(Constants.HTTP_TIMEOUT);
                            httpURLConnection.setReadTimeout(Constants.HTTP_TIMEOUT);
                            httpURLConnection.setRequestProperty("X-Sentry-Auth", q.this.h());
                            httpURLConnection.setRequestProperty("User-Agent", "sentry-android/0.1.2");
                            httpURLConnection.setRequestProperty("Content-Type", "text/html; charset=utf-8");
                            httpURLConnection.connect();
                            OutputStream outputStream = httpURLConnection.getOutputStream();
                            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
                            bufferedWriter.write(g);
                            bufferedWriter.flush();
                            bufferedWriter.close();
                            outputStream.close();
                            if (httpURLConnection.getResponseCode() == 200) {
                            }
                            httpURLConnection.disconnect();
                        } catch (Exception e) {
                        }
                        q.this.f();
                    }
                }
            }).start();
        }
    }

    public String b() {
        return "Android SDK: " + Build.VERSION.SDK_INT + " (" + Build.VERSION.RELEASE + ")";
    }

    private void a(String str) {
        try {
            if (com.smaato.soma.debug.a.a()) {
                SharedPreferences.Editor edit = d().getSharedPreferences("SOMA_SENTRY_DATA", 0).edit();
                edit.putString("SOMA_ENTRY_DATA", str);
                edit.apply();
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        try {
            SharedPreferences.Editor edit = d().getSharedPreferences("SOMA_SENTRY_DATA", 0).edit();
            edit.remove("SOMA_ENTRY_DATA");
            edit.apply();
        } catch (Exception e) {
        }
    }

    private String g() {
        return d().getSharedPreferences("SOMA_SENTRY_DATA", 0).getString("SOMA_ENTRY_DATA", "");
    }

    private String a(Throwable th, String str) {
        StackTraceElement[] stackTrace;
        try {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                if (stackTraceElement.toString().contains(this.l)) {
                    return stackTraceElement.toString();
                }
            }
            return str;
        } catch (Exception e) {
            return str;
        }
    }

    public JSONObject a(Throwable th) throws JSONException {
        StackTraceElement[] stackTrace;
        JSONArray jSONArray = new JSONArray();
        try {
            for (StackTraceElement stackTraceElement : th.getStackTrace()) {
                JSONObject jSONObject = new JSONObject();
                String methodName = stackTraceElement.getMethodName();
                if (methodName.length() != 0) {
                    jSONObject.put("function", methodName);
                }
                int lineNumber = stackTraceElement.getLineNumber();
                if (!stackTraceElement.isNativeMethod() && lineNumber >= 0) {
                    jSONObject.put("lineno", lineNumber);
                }
                boolean z = true;
                String className = stackTraceElement.getClassName();
                jSONObject.put("module", className);
                if (className.startsWith("android.") || className.startsWith("java.") || className.startsWith("dalvik.") || className.startsWith("com.android.")) {
                    z = false;
                }
                jSONObject.put("in_app", z);
                jSONArray.put(jSONObject);
            }
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("frames", jSONArray);
                return jSONObject2;
            } catch (JSONException e) {
                return jSONObject2;
            } catch (Exception e2) {
                return jSONObject2;
            }
        } catch (JSONException e3) {
            return null;
        } catch (Exception e4) {
            return null;
        }
    }

    public void b(Throwable th) {
        if (com.smaato.soma.debug.a.a()) {
            String a2 = a(th, "Unknown Class");
            String localizedMessage = th.getLocalizedMessage();
            JSONObject jSONObject = null;
            try {
                jSONObject = a(th);
            } catch (JSONException e) {
            }
            try {
                a(localizedMessage, a2, jSONObject);
                f();
            } catch (Exception e2) {
            }
        }
    }

    public void a(String str, String str2, JSONObject jSONObject) {
        try {
            if (com.smaato.soma.debug.a.a()) {
                a(b(str, str2, jSONObject).toString());
                a();
            }
        } catch (Exception e) {
        }
    }

    private JSONObject b(String str, String str2, JSONObject jSONObject) throws JSONException {
        JSONObject jSONObject2 = new JSONObject();
        jSONObject2.put("event_id", UUID.randomUUID());
        jSONObject2.put("project", this.k);
        jSONObject2.put("level", "fatal");
        jSONObject2.put("platform", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        jSONObject2.put(ShareConstants.WEB_DIALOG_PARAM_MESSAGE, str);
        jSONObject2.put("culprit", str2);
        if (jSONObject != null) {
            jSONObject2.put("stacktrace", jSONObject);
        }
        jSONObject2.put("user", this.f);
        jSONObject2.put("timestamp", new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss").format(new Date(System.currentTimeMillis())));
        JSONObject jSONObject3 = new JSONObject();
        jSONObject3.put("SDK", this.c);
        jSONObject3.put("publisher", this.f5229a);
        jSONObject3.put("adspaceId", this.b);
        jSONObject3.put("device", this.e);
        jSONObject3.put("OS", this.d);
        jSONObject2.put("tags", jSONObject3);
        return jSONObject2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String h() {
        String str = this.i;
        return (((("Sentry sentry_version=4,") + "sentry_client=sentry-android/0.1.2,") + "sentry_timestamp=" + System.currentTimeMillis() + ",") + "sentry_key=" + str + ",") + "sentry_secret=" + this.j;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SentryClient.java */
    /* loaded from: classes3.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final q f5231a = new q();
    }

    public static q c() {
        return a.f5231a;
    }

    public Context d() {
        return this.m;
    }

    public void a(Context context) {
        this.m = context;
    }

    public void a(long j, long j2) {
        this.b = String.valueOf(j2);
        this.f5229a = String.valueOf(j);
    }

    public static String e() {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (str2.startsWith(str)) {
            return b(str2);
        }
        if (str.equalsIgnoreCase("HTC")) {
            return "HTC " + str2;
        }
        return b(str) + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2;
    }

    private static String b(String str) {
        String str2;
        if (!TextUtils.isEmpty(str)) {
            char[] charArray = str.toCharArray();
            str = "";
            int length = charArray.length;
            int i = 0;
            boolean z = true;
            while (i < length) {
                char c = charArray[i];
                if (z && Character.isLetter(c)) {
                    str2 = str + Character.toUpperCase(c);
                    z = false;
                } else {
                    if (Character.isWhitespace(c)) {
                        z = true;
                    }
                    str2 = str + c;
                }
                i++;
                str = str2;
            }
        }
        return str;
    }
}
