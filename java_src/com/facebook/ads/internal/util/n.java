package com.facebook.ads.internal.util;

import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final String f2246a;
    private final String b;

    public n(String str, String str2) {
        this.f2246a = str;
        this.b = str2;
    }

    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.put("stacktrace", this.f2246a);
        hashMap.put("app_crashed_version", this.b);
        return hashMap;
    }
}
