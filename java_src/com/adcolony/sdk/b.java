package com.adcolony.sdk;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.google.android.gms.vision.barcode.Barcode;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b extends Activity {
    c c;
    String e;
    int f;
    boolean g;
    boolean h;
    boolean i;
    boolean j;
    f k;

    /* renamed from: a  reason: collision with root package name */
    final int f1103a = 0;
    final int b = 1;
    int d = -1;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (a.m == null || a.m.q == null) {
            finish();
            return;
        }
        this.i = false;
        this.c = a.m.q;
        this.c.s = false;
        if (au.f()) {
            this.c.s = true;
        }
        this.e = this.c.m;
        this.f = this.c.l;
        this.k = a.m.g.f.get(this.e);
        this.j = a.m.v.getMultiWindowEnabled();
        if (this.j) {
            getWindow().addFlags(Barcode.PDF417);
            getWindow().clearFlags(1024);
        } else {
            getWindow().addFlags(1024);
            getWindow().clearFlags(Barcode.PDF417);
        }
        requestWindowFeature(1);
        getWindow().getDecorView().setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        ViewParent parent = this.c.getParent();
        if (parent != null) {
            ((ViewGroup) parent).removeView(this.c);
        }
        setContentView(this.c);
        this.c.o.add(a.a("AdSession.finish_fullscreen_ad", new ac() { // from class: com.adcolony.sdk.b.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                b.this.a(zVar);
            }
        }, true));
        this.c.p.add("AdSession.finish_fullscreen_ad");
        if (!c()) {
            setRequestedOrientation(7);
        } else {
            switch (this.d) {
                case 0:
                    setRequestedOrientation(7);
                    break;
                case 1:
                    setRequestedOrientation(6);
                    break;
                default:
                    setRequestedOrientation(4);
                    break;
            }
        }
        if (!this.c.r) {
            JSONObject a2 = s.a();
            s.a(a2, "id", this.c.m);
            s.b(a2, "screen_width", this.c.j);
            s.b(a2, "screen_height", this.c.k);
            u.b.b("AdSession.on_fullscreen_ad_started");
            new z("AdSession.on_fullscreen_ad_started", this.c.l, a2).b();
            this.c.r = true;
            return;
        }
        d();
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.h = false;
        a();
    }

    void a() {
        this.k = a.m.g.f.get(this.e);
        Iterator<Map.Entry<Integer, av>> it = this.c.f1225a.entrySet().iterator();
        while (it.hasNext() && !isFinishing()) {
            av value = it.next().getValue();
            if (!value.b && value.e.isPlaying()) {
                value.e();
            }
        }
        if (this.k != null) {
            this.k.a();
        }
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        d();
        b();
        this.h = true;
    }

    void b() {
        for (Map.Entry<Integer, av> entry : this.c.f1225a.entrySet()) {
            av value = entry.getValue();
            if (!value.b && !value.e.isPlaying() && a.m != null && !a.m.h.c) {
                value.d();
            }
        }
        if (this.k != null) {
            this.k.b();
        }
    }

    boolean c() {
        return Settings.System.getInt(getContentResolver(), "accelerometer_rotation", 0) == 1;
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        if (z && this.h) {
            b();
        } else if (!z && this.h) {
            u.d.b("Activity is active but window does not have focus, pausing.");
            a();
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (a.m == null || this.c == null || this.g) {
            return;
        }
        if ((Build.VERSION.SDK_INT < 24 || !au.f()) && !this.c.s) {
            JSONObject a2 = s.a();
            s.a(a2, "id", this.c.m);
            new z("AdSession.on_error", this.c.l, a2).b();
            this.i = true;
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        JSONObject a2 = s.a();
        s.a(a2, "id", this.c.m);
        new z("AdSession.on_back_button", this.c.l, a2).b();
    }

    void d() {
        this.c.s = false;
        if (au.f()) {
            this.c.s = true;
        }
        int l = a.m.m.l();
        int m = this.j ? a.m.m.m() - au.e() : a.m.m.m();
        if (l > 0 && m > 0) {
            JSONObject a2 = s.a();
            s.b(a2, "screen_width", l);
            s.b(a2, "screen_height", m);
            s.a(a2, "ad_session_id", this.c.m);
            s.b(a2, "id", this.c.n);
            this.c.setLayoutParams(new FrameLayout.LayoutParams(l, m));
            this.c.j = l;
            this.c.k = m;
            new z("AdContainer.on_orientation_change", this.c.l, a2).b();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(z zVar) {
        int c = s.c(zVar.b, "status");
        if ((c == 5 || c == 0 || c == 6 || c == 1) && !this.g) {
            a.m.d(zVar);
            if (a.m.h.b != null) {
                a.m.h.b.dismiss();
                a.m.h.b = null;
            }
            if (!this.i) {
                finish();
            }
            this.g = true;
            ((ViewGroup) getWindow().getDecorView()).removeAllViews();
            a.m.D = false;
            JSONObject a2 = s.a();
            s.a(a2, "id", this.c.m);
            new z("AdSession.on_close", this.c.l, a2).b();
            a.m.q = null;
            a.m.s = null;
            a.m.r = null;
            a.m.g.b.remove(this.c.m);
        }
    }
}
