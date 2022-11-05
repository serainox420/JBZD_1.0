package com.google.firebase.crash;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.support.annotation.Keep;
import android.util.Log;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.internal.zzbnl;
import com.google.android.gms.internal.zzbnm;
import com.google.android.gms.internal.zzbnn;
import com.google.android.gms.internal.zzbnp;
import com.google.android.gms.internal.zzbnq;
import com.google.android.gms.internal.zzbnr;
import com.google.android.gms.internal.zzbns;
import com.google.firebase.a;
import com.google.firebase.iid.b;
/* loaded from: classes.dex */
public class FirebaseCrash {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3547a = FirebaseCrash.class.getSimpleName();
    private static volatile FirebaseCrash e;
    private boolean b;
    private zzbnp c;
    private zzbnl d;

    FirebaseCrash(a aVar, boolean z) {
        this.b = z;
        Context a2 = aVar.a();
        if (a2 == null) {
            Log.w(f3547a, "Application context is missing, disabling api");
            this.b = false;
        }
        if (!this.b) {
            Log.i(f3547a, "Crash reporting is disabled");
            return;
        }
        try {
            zzbnn zzbnnVar = new zzbnn(aVar.c().b(), aVar.c().a());
            zzbnq.zzWD().zzaG(a2);
            this.c = zzbnq.zzWD().zzWE();
            this.c.zza(zzd.zzA(a2), zzbnnVar);
            this.d = new zzbnl(a2);
            f();
            String str = f3547a;
            String valueOf = String.valueOf(zzbnq.zzWD().toString());
            Log.i(str, valueOf.length() != 0 ? "FirebaseCrash reporting initialized ".concat(valueOf) : new String("FirebaseCrash reporting initialized "));
        } catch (Exception e2) {
            String str2 = f3547a;
            String valueOf2 = String.valueOf(e2.getMessage());
            Log.e(str2, valueOf2.length() != 0 ? "Failed to initialize crash reporting: ".concat(valueOf2) : new String("Failed to initialize crash reporting: "));
            this.b = false;
        }
    }

    public static FirebaseCrash a() {
        if (e == null) {
            synchronized (FirebaseCrash.class) {
                if (e == null) {
                    e = getInstance(a.d());
                }
            }
        }
        return e;
    }

    public static void a(String str, long j, Bundle bundle) {
        try {
            a().b(str, j, bundle);
        } catch (zzbnm e2) {
            Log.v(f3547a, e2.getMessage());
        }
    }

    private void b() throws zzbnm {
        if (!d()) {
            throw new zzbnm("Firebase Crash Reporting is disabled.");
        }
        this.d.zzWB();
    }

    private zzbnp c() {
        return this.c;
    }

    private boolean d() {
        return this.b;
    }

    private static boolean e() {
        return Looper.getMainLooper().getThread().getId() == Thread.currentThread().getId();
    }

    private void f() {
        if (!e()) {
            throw new RuntimeException("FirebaseCrash reporting may only be initialized on the main thread (preferably in your app's Application.onCreate)");
        }
        Thread.setDefaultUncaughtExceptionHandler(new zzbnr(Thread.getDefaultUncaughtExceptionHandler(), this));
    }

    private String g() {
        return b.a().b();
    }

    @Keep
    @Deprecated
    public static FirebaseCrash getInstance(a aVar) {
        zzbns.initialize(aVar.a());
        FirebaseCrash firebaseCrash = new FirebaseCrash(aVar, zzbns.zzbZp.get().booleanValue());
        synchronized (FirebaseCrash.class) {
            if (e == null) {
                e = firebaseCrash;
                try {
                    e.b();
                } catch (zzbnm e2) {
                    Log.d(f3547a, "Cannot register Firebase Analytics listener since Firebase Crash Reporting is not enabled");
                }
            }
        }
        return firebaseCrash;
    }

    public void a(Throwable th) throws zzbnm {
        if (!d()) {
            throw new zzbnm("Firebase Crash Reporting is disabled.");
        }
        zzbnp c = c();
        if (c == null || th == null) {
            return;
        }
        try {
            this.d.zza(true, System.currentTimeMillis());
            try {
                Thread.sleep(200L);
            } catch (InterruptedException e2) {
                Thread.currentThread().interrupt();
            }
            c.zziC(g());
            c.zzO(zzd.zzA(th));
        } catch (RemoteException e3) {
            Log.e(f3547a, "report remoting failed", e3);
        }
    }

    public void b(String str, long j, Bundle bundle) throws zzbnm {
        if (!d()) {
            throw new zzbnm("Firebase Crash Reporting is disabled.");
        }
        zzbnp c = c();
        if (c == null || str == null) {
            return;
        }
        try {
            c.zzb(str, j, bundle);
        } catch (RemoteException e2) {
            Log.e(f3547a, "log remoting failed", e2);
        }
    }
}
