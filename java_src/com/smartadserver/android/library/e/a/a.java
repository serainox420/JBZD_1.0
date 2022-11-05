package com.smartadserver.android.library.e.a;

import android.content.Context;
import org.apache.http.client.methods.HttpPost;
import org.json.JSONObject;
/* compiled from: SASAbstractHttpHelper.java */
/* loaded from: classes3.dex */
public abstract class a {
    private static long f = 0;

    /* renamed from: a  reason: collision with root package name */
    public String f5430a;
    public String b;
    public String c;
    public String d;
    protected long e = -1;

    public abstract String a(String str, int i, String str2, int i2, String str3, boolean z);

    public abstract HttpPost a(String str, JSONObject jSONObject);

    public long a() {
        return this.e;
    }

    public a(Context context) {
        this.f5430a = com.smartadserver.android.library.g.c.c(context);
        this.b = com.smartadserver.android.library.g.c.b(context);
        this.c = com.smartadserver.android.library.g.c.d(context);
        this.d = com.smartadserver.android.library.g.c.f(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String a(boolean z) {
        if (z || f == 0) {
            f = System.currentTimeMillis();
        }
        return String.valueOf(f);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String b() {
        if (com.smartadserver.android.library.g.c.b() != 4) {
            return "cell";
        }
        return "wifi";
    }
}
