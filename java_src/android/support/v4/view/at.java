package android.support.v4.view;

import android.os.Build;
import android.view.ViewConfiguration;
/* compiled from: ViewConfigurationCompat.java */
/* loaded from: classes.dex */
public final class at {

    /* renamed from: a  reason: collision with root package name */
    static final d f441a;

    /* compiled from: ViewConfigurationCompat.java */
    /* loaded from: classes.dex */
    interface d {
        boolean a(ViewConfiguration viewConfiguration);
    }

    /* compiled from: ViewConfigurationCompat.java */
    /* loaded from: classes.dex */
    static class a implements d {
        a() {
        }

        @Override // android.support.v4.view.at.d
        public boolean a(ViewConfiguration viewConfiguration) {
            return true;
        }
    }

    /* compiled from: ViewConfigurationCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.at.a, android.support.v4.view.at.d
        public boolean a(ViewConfiguration viewConfiguration) {
            return false;
        }
    }

    /* compiled from: ViewConfigurationCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.at.b, android.support.v4.view.at.a, android.support.v4.view.at.d
        public boolean a(ViewConfiguration viewConfiguration) {
            return au.a(viewConfiguration);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            f441a = new c();
        } else if (Build.VERSION.SDK_INT >= 11) {
            f441a = new b();
        } else {
            f441a = new a();
        }
    }

    public static boolean a(ViewConfiguration viewConfiguration) {
        return f441a.a(viewConfiguration);
    }
}
