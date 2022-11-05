package com.flurry.sdk;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import com.flurry.android.FlurryFullscreenTakeoverActivity;
import com.flurry.android.FlurryInternalTakeoverActivity;
import com.flurry.sdk.af;
import com.flurry.sdk.bf;
import com.flurry.sdk.kb;
import java.io.File;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class i implements kp {
    private static final String o = i.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    public z f2821a;
    public p b;
    public w c;
    public k d;
    public dq e;
    public dp f;
    public m g;
    public bg h;
    public ab i;
    public cw j;
    private File k;
    private File l;
    private kf<List<bf>> m;
    private kf<List<af>> n;
    private final kh<kb> p = new kh<kb>() { // from class: com.flurry.sdk.i.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(kb kbVar) {
            kb kbVar2 = kbVar;
            Activity activity = kbVar2.f2955a.get();
            if (activity == null) {
                km.a(i.o, "Activity has been destroyed, can't pass ActivityLifecycleEvent to adobject.");
            } else if (kb.a.kPaused.equals(kbVar2.b)) {
                i.this.b.a(activity);
                i.this.c.a(activity);
            } else if (kb.a.kResumed.equals(kbVar2.b)) {
                i.this.b.b(activity);
                i.this.c.b(activity);
            } else if (kb.a.kDestroyed.equals(kbVar2.b)) {
                i.this.b.c(activity);
                i.this.c.c(activity);
            }
        }
    };
    private final kh<du> q = new kh<du>() { // from class: com.flurry.sdk.i.2
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(du duVar) {
            du duVar2 = duVar;
            synchronized (i.this) {
                if (i.this.j == null) {
                    i.this.j = duVar2.f2556a;
                    i.this.a(i.this.j.b * 1024 * 1204, i.this.j.c * 1024);
                    fs.a(i.this.j.d);
                    k kVar = i.this.d;
                    String str = i.this.j.f2520a;
                    if (!TextUtils.isEmpty(str)) {
                        kVar.b = str;
                    }
                    final k kVar2 = i.this.d;
                    kVar2.c = 0;
                    jy.a().b(new ma() { // from class: com.flurry.sdk.k.2
                        @Override // com.flurry.sdk.ma
                        public final void a() {
                            kVar2.b();
                        }
                    });
                }
            }
        }
    };

    public static synchronized i a() {
        i iVar;
        synchronized (i.class) {
            iVar = (i) jy.a().a(i.class);
        }
        return iVar;
    }

    @Override // com.flurry.sdk.kp
    public final void a(Context context) {
        lk.a(ec.class);
        this.f2821a = new z();
        this.b = new p();
        this.c = new w();
        this.d = new k();
        this.e = new dq();
        this.f = new dp();
        this.g = new m();
        this.h = new bg();
        this.i = new ab();
        this.j = null;
        ki.a().a("com.flurry.android.sdk.ActivityLifecycleEvent", this.p);
        ki.a().a("com.flurry.android.sdk.AdConfigurationEvent", this.q);
        this.k = jy.a().f2947a.getFileStreamPath(".flurryfreqcap." + Integer.toString(jy.a().d.hashCode(), 16));
        this.l = jy.a().f2947a.getFileStreamPath(".flurrycachedasset." + Integer.toString(jy.a().d.hashCode(), 16));
        this.m = new kf<>(jy.a().f2947a.getFileStreamPath(".yflurryfreqcap." + Long.toString(ly.i(jy.a().d), 16)), ".yflurryfreqcap.", 2, new lj<List<bf>>() { // from class: com.flurry.sdk.i.3
            @Override // com.flurry.sdk.lj
            public final lg<List<bf>> a(int i) {
                return new lf(new bf.a());
            }
        });
        this.n = new kf<>(jy.a().f2947a.getFileStreamPath(".yflurrycachedasset" + Long.toString(ly.i(jy.a().d), 16)), ".yflurrycachedasset", 1, new lj<List<af>>() { // from class: com.flurry.sdk.i.4
            @Override // com.flurry.sdk.lj
            public final lg<List<af>> a(int i) {
                return new lf(new af.a());
            }
        });
        jy.a().b(new ma() { // from class: com.flurry.sdk.i.5
            @Override // com.flurry.sdk.ma
            public final void a() {
                i.this.i();
            }
        });
        Context context2 = jy.a().f2947a;
        PackageManager packageManager = context2.getPackageManager();
        ResolveInfo resolveActivity = packageManager.resolveActivity(new Intent(context2, FlurryFullscreenTakeoverActivity.class), 0);
        ResolveInfo resolveActivity2 = packageManager.resolveActivity(new Intent(context2, FlurryInternalTakeoverActivity.class), 0);
        if (resolveActivity != null || resolveActivity2 != null) {
            return;
        }
        km.b(o, "com.flurry.android.FlurryFullscreenTakeoverActivity must be declared in manifest.");
    }

    public static bi b() {
        ec e = e();
        if (e != null) {
            return e.b;
        }
        return null;
    }

    public static g c() {
        ec e = e();
        if (e != null) {
            return e.d;
        }
        return null;
    }

    public static hm d() {
        ec e = e();
        if (e != null) {
            return e.f;
        }
        return null;
    }

    public static void a(String str, bc bcVar, boolean z, Map<String, String> map) {
        ec e = e();
        if (e != null) {
            e.a(str, bcVar, z, map);
        }
    }

    public static ec e() {
        lk b = lm.a().b();
        if (b == null) {
            return null;
        }
        return (ec) b.b(ec.class);
    }

    public final synchronized void f() {
        km.a(4, o, "Saving FreqCap data.");
        this.h.b();
        this.m.a(this.h.a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void i() {
        km.a(4, o, "Loading FreqCap data.");
        List<bf> a2 = this.m.a();
        if (a2 != null) {
            for (bf bfVar : a2) {
                this.h.a(bfVar);
            }
        } else if (this.k.exists()) {
            km.a(4, o, "Legacy FreqCap data found, converting.");
            List<bf> a3 = l.a(this.k);
            if (a3 != null) {
                for (bf bfVar2 : a3) {
                    this.h.a(bfVar2);
                }
            }
            this.h.b();
            this.k.delete();
            f();
        }
        this.h.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(long j, long j2) {
        if (!this.i.a()) {
            km.a(3, o, "Precaching: initing from FlurryAdModule");
            this.i.a(j, j2);
            this.i.b();
            jy.a().b(new ma() { // from class: com.flurry.sdk.i.6
                @Override // com.flurry.sdk.ma
                public final void a() {
                    i.this.j();
                }
            });
        }
    }

    public final synchronized void g() {
        List<af> b;
        if (this.i.a()) {
            km.a(4, o, "Saving CachedAsset data.");
            kf<List<af>> kfVar = this.n;
            ab abVar = this.i;
            if (!abVar.a()) {
                b = null;
            } else {
                b = abVar.b.b();
            }
            kfVar.a(b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void j() {
        if (this.i.a()) {
            km.a(4, o, "Loading CachedAsset data.");
            List<af> a2 = this.n.a();
            if (a2 != null) {
                for (af afVar : a2) {
                    ab abVar = this.i;
                    if (abVar.a() && afVar != null && !al.QUEUED.equals(afVar.a()) && !al.IN_PROGRESS.equals(afVar.a())) {
                        abVar.b.a(afVar);
                    }
                }
            } else if (this.l.exists()) {
                km.a(4, o, "Legacy CachedAsset data found, deleting.");
                this.l.delete();
            }
        }
    }
}
