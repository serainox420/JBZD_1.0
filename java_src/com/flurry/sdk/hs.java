package com.flurry.sdk;

import android.content.Context;
import java.io.File;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class hs {
    private static final String b = hs.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    boolean f2813a;
    private final ht c;
    private final File d;
    private String e;

    public hs() {
        this(jy.a().f2947a);
    }

    public hs(Context context) {
        this.c = new ht();
        this.d = context.getFileStreamPath(".flurryinstallreceiver.");
        km.a(3, b, "Referrer file name if it exists:  " + this.d);
    }

    public final synchronized Map<String, List<String>> a() {
        c();
        return ht.a(this.e);
    }

    public final synchronized String b() {
        c();
        return this.e;
    }

    public final synchronized void a(String str) {
        this.f2813a = true;
        b(str);
        lx.a(this.d, this.e);
    }

    private void b(String str) {
        if (str != null) {
            this.e = str;
        }
    }

    private void c() {
        if (!this.f2813a) {
            this.f2813a = true;
            km.a(4, b, "Loading referrer info from file: " + this.d.getAbsolutePath());
            String c = lx.c(this.d);
            km.a(b, "Referrer file contents: " + c);
            b(c);
        }
    }
}
