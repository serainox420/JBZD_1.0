package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v7.app.f;
import android.support.v7.view.f;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ActionMode;
import android.view.Window;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatDelegateImplV14.java */
@TargetApi(14)
/* loaded from: classes.dex */
public class i extends h {
    private int t;
    private boolean u;
    private boolean v;
    private b w;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(Context context, Window window, d dVar) {
        super(context, window, dVar);
        this.t = -100;
        this.v = true;
    }

    @Override // android.support.v7.app.AppCompatDelegateImplV9, android.support.v7.app.e
    public void a(Bundle bundle) {
        super.a(bundle);
        if (bundle != null && this.t == -100) {
            this.t = bundle.getInt("appcompat:local_night_mode", -100);
        }
    }

    @Override // android.support.v7.app.f
    Window.Callback a(Window.Callback callback) {
        return new a(callback);
    }

    @Override // android.support.v7.app.f
    public boolean p() {
        return this.v;
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public boolean j() {
        boolean z = false;
        int x = x();
        int d = d(x);
        if (d != -1) {
            z = h(d);
        }
        if (x == 0) {
            y();
            this.w.c();
        }
        this.u = true;
        return z;
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void c() {
        super.c();
        j();
    }

    @Override // android.support.v7.app.AppCompatDelegateImplV9, android.support.v7.app.f, android.support.v7.app.e
    public void d() {
        super.d();
        if (this.w != null) {
            this.w.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int d(int i) {
        switch (i) {
            case -100:
                return -1;
            case 0:
                y();
                return this.w.a();
            default:
                return i;
        }
    }

    private int x() {
        return this.t != -100 ? this.t : k();
    }

    @Override // android.support.v7.app.f, android.support.v7.app.e
    public void c(Bundle bundle) {
        super.c(bundle);
        if (this.t != -100) {
            bundle.putInt("appcompat:local_night_mode", this.t);
        }
    }

    @Override // android.support.v7.app.AppCompatDelegateImplV9, android.support.v7.app.f, android.support.v7.app.e
    public void g() {
        super.g();
        if (this.w != null) {
            this.w.d();
        }
    }

    private boolean h(int i) {
        Resources resources = this.f576a.getResources();
        Configuration configuration = resources.getConfiguration();
        int i2 = configuration.uiMode & 48;
        int i3 = i == 2 ? 32 : 16;
        if (i2 != i3) {
            if (z()) {
                ((Activity) this.f576a).recreate();
            } else {
                Configuration configuration2 = new Configuration(configuration);
                DisplayMetrics displayMetrics = resources.getDisplayMetrics();
                configuration2.uiMode = i3 | (configuration2.uiMode & (-49));
                resources.updateConfiguration(configuration2, displayMetrics);
                u.a(resources);
            }
            return true;
        }
        return false;
    }

    private void y() {
        if (this.w == null) {
            this.w = new b(x.a(this.f576a));
        }
    }

    private boolean z() {
        if (!this.u || !(this.f576a instanceof Activity)) {
            return false;
        }
        try {
            return (this.f576a.getPackageManager().getActivityInfo(new ComponentName(this.f576a, this.f576a.getClass()), 0).configChanges & 512) == 0;
        } catch (PackageManager.NameNotFoundException e) {
            Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e);
            return true;
        }
    }

    /* compiled from: AppCompatDelegateImplV14.java */
    /* loaded from: classes.dex */
    class a extends f.b {
        /* JADX INFO: Access modifiers changed from: package-private */
        public a(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            return i.this.p() ? a(callback) : super.onWindowStartingActionMode(callback);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public final ActionMode a(ActionMode.Callback callback) {
            f.a aVar = new f.a(i.this.f576a, callback);
            android.support.v7.view.b a2 = i.this.a(aVar);
            if (a2 != null) {
                return aVar.b(a2);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: AppCompatDelegateImplV14.java */
    /* loaded from: classes.dex */
    public final class b {
        private x b;
        private boolean c;
        private BroadcastReceiver d;
        private IntentFilter e;

        b(x xVar) {
            this.b = xVar;
            this.c = xVar.a();
        }

        final int a() {
            this.c = this.b.a();
            return this.c ? 2 : 1;
        }

        final void b() {
            boolean a2 = this.b.a();
            if (a2 != this.c) {
                this.c = a2;
                i.this.j();
            }
        }

        final void c() {
            d();
            if (this.d == null) {
                this.d = new BroadcastReceiver() { // from class: android.support.v7.app.i.b.1
                    @Override // android.content.BroadcastReceiver
                    public void onReceive(Context context, Intent intent) {
                        b.this.b();
                    }
                };
            }
            if (this.e == null) {
                this.e = new IntentFilter();
                this.e.addAction("android.intent.action.TIME_SET");
                this.e.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.e.addAction("android.intent.action.TIME_TICK");
            }
            i.this.f576a.registerReceiver(this.d, this.e);
        }

        final void d() {
            if (this.d != null) {
                i.this.f576a.unregisterReceiver(this.d);
                this.d = null;
            }
        }
    }
}
