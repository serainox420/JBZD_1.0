package android.support.v4.app;

import android.os.Build;
import android.os.Bundle;
import android.support.annotation.RestrictTo;
import android.support.v4.app.aw;
/* compiled from: RemoteInput.java */
/* loaded from: classes.dex */
public final class au extends aw.a {
    @RestrictTo

    /* renamed from: a  reason: collision with root package name */
    public static final aw.a.InterfaceC0012a f250a;
    private static final a g;
    private final String b;
    private final CharSequence c;
    private final CharSequence[] d;
    private final boolean e;
    private final Bundle f;

    /* compiled from: RemoteInput.java */
    /* loaded from: classes.dex */
    interface a {
    }

    @Override // android.support.v4.app.aw.a
    public String a() {
        return this.b;
    }

    @Override // android.support.v4.app.aw.a
    public CharSequence b() {
        return this.c;
    }

    @Override // android.support.v4.app.aw.a
    public CharSequence[] c() {
        return this.d;
    }

    @Override // android.support.v4.app.aw.a
    public boolean d() {
        return this.e;
    }

    @Override // android.support.v4.app.aw.a
    public Bundle e() {
        return this.f;
    }

    /* compiled from: RemoteInput.java */
    /* loaded from: classes.dex */
    static class c implements a {
        c() {
        }
    }

    /* compiled from: RemoteInput.java */
    /* loaded from: classes.dex */
    static class d implements a {
        d() {
        }
    }

    /* compiled from: RemoteInput.java */
    /* loaded from: classes.dex */
    static class b implements a {
        b() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 20) {
            g = new b();
        } else if (Build.VERSION.SDK_INT >= 16) {
            g = new d();
        } else {
            g = new c();
        }
        f250a = new aw.a.InterfaceC0012a() { // from class: android.support.v4.app.au.1
        };
    }
}
