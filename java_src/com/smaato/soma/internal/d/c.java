package com.smaato.soma.internal.d;

import android.net.Uri;
import com.smaato.soma.l;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.TimeZone;
import java.util.Vector;
/* compiled from: VASTAd.java */
/* loaded from: classes3.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private String f5013a;
    private String c;
    private String d;
    private a f;
    private Map<String, Vector<String>> b = new HashMap();
    private Vector<String> e = new Vector<>();
    private Vector<String> g = new Vector<>();

    public a a() {
        return this.f;
    }

    public void a(a aVar) {
        this.f = aVar;
    }

    public Uri b() {
        return Uri.parse(this.f5013a);
    }

    public void a(String str) {
        this.f5013a = str;
    }

    public void b(String str) {
        this.c = str;
    }

    public String c() {
        return this.c;
    }

    public long d() {
        return new l<Long>() { // from class: com.smaato.soma.internal.d.c.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Long b() throws Exception {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return Long.valueOf(simpleDateFormat.parse("1970-01-01 " + c.this.c()).getTime() / 1000);
            }
        }.c().longValue();
    }

    public void a(String str, String str2) {
        if (this.b.containsKey(str)) {
            this.b.get(str).add(str2.trim());
            return;
        }
        Vector<String> vector = new Vector<>();
        vector.add(str2.trim());
        this.b.put(str, vector);
    }

    public Vector<String> c(String str) {
        return this.b.get(str);
    }

    public Vector<String> e() {
        return null;
    }

    public String f() {
        return this.d;
    }

    public void d(String str) {
        this.d = str;
    }

    public void e(String str) {
        this.e.add(str);
    }

    public Vector<String> g() {
        return this.e;
    }

    public Vector<String> h() {
        return this.g;
    }

    public void f(String str) {
        this.g.add(str);
    }
}
