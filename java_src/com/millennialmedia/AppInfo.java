package com.millennialmedia;

import com.millennialmedia.internal.utils.Utils;
/* loaded from: classes3.dex */
public class AppInfo {

    /* renamed from: a  reason: collision with root package name */
    private String f3983a;
    private String b;
    private Boolean c;

    public AppInfo setSiteId(String str) {
        this.f3983a = Utils.trimStringNotEmpty(str);
        return this;
    }

    public String getSiteId() {
        return this.f3983a;
    }

    public AppInfo setMediator(String str) {
        this.b = str;
        return this;
    }

    public String getMediator() {
        return this.b;
    }

    public AppInfo setCoppa(boolean z) {
        this.c = Boolean.valueOf(z);
        return this;
    }

    public Boolean getCoppa() {
        return this.c;
    }
}
