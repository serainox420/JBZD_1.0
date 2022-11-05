package com.adcolony.sdk;

import com.facebook.AccessToken;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyAppOptions {
    public static final int LANDSCAPE = 1;
    public static final int PORTRAIT = 0;
    public static final int SENSOR = 2;
    String[] b;
    AdColonyUserMetadata e;

    /* renamed from: a  reason: collision with root package name */
    String f977a = "";
    JSONArray c = s.b();
    JSONObject d = s.a();

    public AdColonyAppOptions() {
        setOriginStore("google");
        if (a.m != null && a.m.v != null) {
            a(a.m.v.f977a);
            a(a.m.v.b);
        }
    }

    public String getAppID() {
        return this.f977a;
    }

    public AdColonyAppOptions setAppVersion(String str) {
        if (au.d(str)) {
            setOption("app_version", str);
        }
        return this;
    }

    public String getAppVersion() {
        return s.b(this.d, "app_version");
    }

    public AdColonyAppOptions setUserID(String str) {
        if (au.d(str)) {
            setOption(AccessToken.USER_ID_KEY, str);
        }
        return this;
    }

    public String getUserID() {
        return s.b(this.d, AccessToken.USER_ID_KEY);
    }

    public AdColonyAppOptions setOption(String str, boolean z) {
        if (au.d(str)) {
            s.a(this.d, str, z);
        }
        return this;
    }

    public Object getOption(String str) {
        return s.a(this.d, str);
    }

    public AdColonyAppOptions setOption(String str, double d) {
        if (au.d(str)) {
            s.a(this.d, str, d);
        }
        return this;
    }

    public AdColonyAppOptions setOption(String str, String str2) {
        if (str != null && au.d(str) && au.d(str2)) {
            s.a(this.d, str, str2);
        }
        return this;
    }

    public AdColonyAppOptions setOriginStore(String str) {
        if (au.d(str)) {
            setOption("origin_store", str);
        }
        return this;
    }

    public String getOriginStore() {
        return s.b(this.d, "origin_store");
    }

    public AdColonyAppOptions setRequestedAdOrientation(int i) {
        setOption("orientation", i);
        return this;
    }

    public int getRequestedAdOrientation() {
        return s.a(this.d, "orientation", -1);
    }

    public AdColonyAppOptions setUserMetadata(AdColonyUserMetadata adColonyUserMetadata) {
        this.e = adColonyUserMetadata;
        s.a(this.d, "user_metadata", adColonyUserMetadata.c);
        return this;
    }

    public AdColonyAppOptions setMultiWindowEnabled(boolean z) {
        s.a(this.d, "multi_window_enabled", z);
        return this;
    }

    public boolean getMultiWindowEnabled() {
        return s.d(this.d, "multi_window_enabled");
    }

    public AdColonyUserMetadata getUserMetadata() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String str) {
        if (str != null) {
            this.f977a = str;
            s.a(this.d, "app_id", str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(String... strArr) {
        if (strArr != null) {
            this.b = strArr;
            this.c = s.b();
            for (String str : strArr) {
                s.a(this.c, str);
            }
        }
    }
}
