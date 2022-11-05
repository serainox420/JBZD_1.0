package io.fabric.sdk.android.services.settings;

import io.fabric.sdk.android.services.network.HttpMethod;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DefaultSettingsSpiCall.java */
/* loaded from: classes3.dex */
public class l extends io.fabric.sdk.android.services.common.a implements w {
    public l(io.fabric.sdk.android.h hVar, String str, String str2, io.fabric.sdk.android.services.network.c cVar) {
        this(hVar, str, str2, cVar, HttpMethod.GET);
    }

    l(io.fabric.sdk.android.h hVar, String str, String str2, io.fabric.sdk.android.services.network.c cVar, HttpMethod httpMethod) {
        super(hVar, str, str2, cVar, httpMethod);
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00a9  */
    @Override // io.fabric.sdk.android.services.settings.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public JSONObject a(v vVar) {
        HttpRequest httpRequest;
        Throwable th;
        JSONObject jSONObject = null;
        try {
            Map<String, String> b = b(vVar);
            try {
                try {
                    httpRequest = a(getHttpRequest(b), vVar);
                    io.fabric.sdk.android.c.h().a("Fabric", "Requesting settings from " + getUrl());
                    io.fabric.sdk.android.c.h().a("Fabric", "Settings query params were: " + b);
                    jSONObject = a(httpRequest);
                    if (httpRequest != null) {
                        io.fabric.sdk.android.c.h().a("Fabric", "Settings request ID: " + httpRequest.b(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID));
                    }
                } catch (HttpRequest.HttpRequestException e) {
                    e = e;
                    io.fabric.sdk.android.c.h().e("Fabric", "Settings request failed.", e);
                    if (httpRequest != null) {
                        io.fabric.sdk.android.c.h().a("Fabric", "Settings request ID: " + httpRequest.b(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID));
                    }
                    return jSONObject;
                }
            } catch (Throwable th2) {
                th = th2;
                if (httpRequest != null) {
                    io.fabric.sdk.android.c.h().a("Fabric", "Settings request ID: " + httpRequest.b(io.fabric.sdk.android.services.common.a.HEADER_REQUEST_ID));
                }
                throw th;
            }
        } catch (HttpRequest.HttpRequestException e2) {
            e = e2;
            httpRequest = null;
        } catch (Throwable th3) {
            httpRequest = null;
            th = th3;
            if (httpRequest != null) {
            }
            throw th;
        }
        return jSONObject;
    }

    JSONObject a(HttpRequest httpRequest) {
        int b = httpRequest.b();
        io.fabric.sdk.android.c.h().a("Fabric", "Settings result was: " + b);
        if (a(b)) {
            return a(httpRequest.e());
        }
        io.fabric.sdk.android.c.h().e("Fabric", "Failed to retrieve settings from " + getUrl());
        return null;
    }

    boolean a(int i) {
        return i == 200 || i == 201 || i == 202 || i == 203;
    }

    private JSONObject a(String str) {
        try {
            return new JSONObject(str);
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().a("Fabric", "Failed to parse settings JSON from " + getUrl(), e);
            io.fabric.sdk.android.c.h().a("Fabric", "Settings response " + str);
            return null;
        }
    }

    private Map<String, String> b(v vVar) {
        HashMap hashMap = new HashMap();
        hashMap.put("build_version", vVar.j);
        hashMap.put("display_version", vVar.i);
        hashMap.put("source", Integer.toString(vVar.k));
        if (vVar.l != null) {
            hashMap.put("icon_hash", vVar.l);
        }
        String str = vVar.h;
        if (!io.fabric.sdk.android.services.common.i.c(str)) {
            hashMap.put("instance", str);
        }
        return hashMap;
    }

    private HttpRequest a(HttpRequest httpRequest, v vVar) {
        a(httpRequest, io.fabric.sdk.android.services.common.a.HEADER_API_KEY, vVar.f5727a);
        a(httpRequest, io.fabric.sdk.android.services.common.a.HEADER_CLIENT_TYPE, io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE);
        a(httpRequest, io.fabric.sdk.android.services.common.a.HEADER_CLIENT_VERSION, this.kit.getVersion());
        a(httpRequest, "Accept", "application/json");
        a(httpRequest, "X-CRASHLYTICS-DEVICE-MODEL", vVar.b);
        a(httpRequest, "X-CRASHLYTICS-OS-BUILD-VERSION", vVar.c);
        a(httpRequest, "X-CRASHLYTICS-OS-DISPLAY-VERSION", vVar.d);
        a(httpRequest, "X-CRASHLYTICS-ADVERTISING-TOKEN", vVar.e);
        a(httpRequest, "X-CRASHLYTICS-INSTALLATION-ID", vVar.f);
        a(httpRequest, "X-CRASHLYTICS-ANDROID-ID", vVar.g);
        return httpRequest;
    }

    private void a(HttpRequest httpRequest, String str, String str2) {
        if (str2 != null) {
            httpRequest.a(str, str2);
        }
    }
}
