package com.mopub.common;

import android.graphics.Point;
import android.net.Uri;
import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.mopub.network.Networking;
import com.mopub.network.PlayServicesUrlRewriter;
/* loaded from: classes3.dex */
public abstract class BaseUrlGenerator {

    /* renamed from: a  reason: collision with root package name */
    private StringBuilder f4318a;
    private boolean b;

    public abstract String generateUrlString(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String str, String str2) {
        this.f4318a = new StringBuilder(Networking.getScheme()).append("://").append(str).append(str2);
        this.b = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String a() {
        return this.f4318a.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            this.f4318a.append(c());
            this.f4318a.append(str);
            this.f4318a.append("=");
            this.f4318a.append(Uri.encode(str2));
        }
    }

    private String c() {
        if (this.b) {
            this.b = false;
            return "?";
        }
        return "&";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void k(String str) {
        b("v", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void l(String str) {
        b("av", str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b(boolean z) {
        b("android_perms_ext_storage", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(String... strArr) {
        StringBuilder sb = new StringBuilder();
        if (strArr != null && strArr.length >= 1) {
            for (int i = 0; i < strArr.length - 1; i++) {
                sb.append(strArr[i]).append(",");
            }
            sb.append(strArr[strArr.length - 1]);
            b("dn", sb.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void b() {
        b("udid", PlayServicesUrlRewriter.UDID_TEMPLATE);
        b("dnt", PlayServicesUrlRewriter.DO_NOT_TRACK_TEMPLATE);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(Point point) {
        b("w", "" + point.x);
        b("h", "" + point.y);
    }
}
