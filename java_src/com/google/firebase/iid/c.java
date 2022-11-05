package com.google.firebase.iid;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.firebase.iid.g;
import java.io.IOException;
import java.security.KeyPair;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class c {

    /* renamed from: a  reason: collision with root package name */
    static Map<String, c> f3583a = new HashMap();
    static String e;
    private static g f;
    private static e g;
    Context b;
    KeyPair c;
    String d;

    protected c(Context context, String str, Bundle bundle) {
        this.d = "";
        this.b = context.getApplicationContext();
        this.d = str;
    }

    public static synchronized c a(Context context, Bundle bundle) {
        c cVar;
        synchronized (c.class) {
            String string = bundle == null ? "" : bundle.getString("subtype");
            String str = string == null ? "" : string;
            Context applicationContext = context.getApplicationContext();
            if (f == null) {
                f = new g(applicationContext);
                g = new e(applicationContext);
            }
            e = Integer.toString(FirebaseInstanceId.a(applicationContext));
            cVar = f3583a.get(str);
            if (cVar == null) {
                cVar = new c(applicationContext, str, bundle);
                f3583a.put(str, cVar);
            }
        }
        return cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public KeyPair a() {
        if (this.c == null) {
            this.c = f.d(this.d);
        }
        if (this.c == null) {
            this.c = f.a(this.d);
        }
        return this.c;
    }

    public void a(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        f.b(this.d, str, str2);
        if (bundle == null) {
            bundle = new Bundle();
        }
        bundle.putString("delete", "1");
        c(str, str2, bundle);
    }

    public String b(String str, String str2, Bundle bundle) throws IOException {
        if (Looper.getMainLooper() == Looper.myLooper()) {
            throw new IOException("MAIN_THREAD");
        }
        if (bundle == null) {
            bundle = new Bundle();
        }
        boolean z = true;
        if (bundle.getString("ttl") != null || "jwt".equals(bundle.getString("type"))) {
            z = false;
        } else {
            g.a a2 = f.a(this.d, str, str2);
            if (a2 != null && !a2.b(e)) {
                return a2.f3591a;
            }
        }
        String c = c(str, str2, bundle);
        if (c == null || !z) {
            return c;
        }
        f.a(this.d, str, str2, c, e);
        return c;
    }

    public void b() {
        f.b(this.d);
        this.c = null;
    }

    public g c() {
        return f;
    }

    public String c(String str, String str2, Bundle bundle) throws IOException {
        if (str2 != null) {
            bundle.putString("scope", str2);
        }
        bundle.putString("sender", str);
        if (!"".equals(this.d)) {
            str = this.d;
        }
        bundle.putString("subtype", str);
        bundle.putString("X-subtype", str);
        return g.b(g.a(bundle, a()));
    }

    public e d() {
        return g;
    }
}
