package com.facebook.ads.internal.i.a;

import java.io.IOException;
import java.net.HttpURLConnection;
import java.util.List;
import java.util.Map;
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private int f2178a;
    private String b;
    private Map<String, List<String>> c;
    private byte[] d;

    public n(HttpURLConnection httpURLConnection, byte[] bArr) {
        try {
            this.f2178a = httpURLConnection.getResponseCode();
            this.b = httpURLConnection.getURL().toString();
        } catch (IOException e) {
            e.printStackTrace();
        }
        this.c = httpURLConnection.getHeaderFields();
        this.d = bArr;
    }

    public int a() {
        return this.f2178a;
    }

    public String b() {
        return this.b;
    }

    public Map<String, List<String>> c() {
        return this.c;
    }

    public byte[] d() {
        return this.d;
    }

    public String e() {
        if (this.d != null) {
            return new String(this.d);
        }
        return null;
    }
}
