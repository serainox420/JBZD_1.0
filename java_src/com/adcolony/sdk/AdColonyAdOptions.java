package com.adcolony.sdk;

import org.json.JSONObject;
/* loaded from: classes.dex */
public class AdColonyAdOptions {

    /* renamed from: a  reason: collision with root package name */
    boolean f975a;
    boolean b;
    AdColonyUserMetadata c;
    JSONObject d = s.a();

    public AdColonyAdOptions enableConfirmationDialog(boolean z) {
        this.f975a = z;
        s.a(this.d, "confirmation_enabled", true);
        return this;
    }

    public AdColonyAdOptions enableResultsDialog(boolean z) {
        this.b = z;
        s.a(this.d, "results_enabled", true);
        return this;
    }

    public AdColonyAdOptions setOption(String str, boolean z) {
        if (au.d(str)) {
            s.a(this.d, str, z);
        }
        return this;
    }

    public Object getOption(String str) {
        return s.a(this.d, str);
    }

    public AdColonyAdOptions setOption(String str, double d) {
        if (au.d(str)) {
            s.a(this.d, str, d);
        }
        return this;
    }

    public AdColonyAdOptions setOption(String str, String str2) {
        if (str != null && au.d(str) && au.d(str2)) {
            s.a(this.d, str, str2);
        }
        return this;
    }

    public AdColonyAdOptions setUserMetadata(AdColonyUserMetadata adColonyUserMetadata) {
        this.c = adColonyUserMetadata;
        s.a(this.d, "user_metadata", adColonyUserMetadata.c);
        return this;
    }

    public AdColonyUserMetadata getUserMetadata() {
        return this.c;
    }
}
