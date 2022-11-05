package com.facebook.ads.internal.b;

import android.os.Bundle;
import com.facebook.ads.internal.util.af;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* loaded from: classes.dex */
public class d implements af<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private c f2118a;
    private final c b;
    private final b c;
    private boolean d;
    private boolean e;
    private boolean f;

    public d(b bVar) {
        this.d = false;
        this.e = false;
        this.f = false;
        this.c = bVar;
        this.b = new c(bVar.f2115a);
        this.f2118a = new c(bVar.f2115a);
    }

    public d(b bVar, Bundle bundle) {
        this.d = false;
        this.e = false;
        this.f = false;
        this.c = bVar;
        this.b = (c) bundle.getSerializable("testStats");
        this.f2118a = (c) bundle.getSerializable("viewableStats");
        this.d = bundle.getBoolean("ended");
        this.e = bundle.getBoolean("passed");
        this.f = bundle.getBoolean(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE);
    }

    private void a() {
        this.e = true;
        b();
    }

    private void b() {
        this.f = true;
        c();
    }

    private void c() {
        this.d = true;
        this.c.a(this.f, this.e, this.e ? this.f2118a : this.b);
    }

    public void a(double d, double d2) {
        if (this.d) {
            return;
        }
        this.b.a(d, d2);
        this.f2118a.a(d, d2);
        double f = this.f2118a.b().f();
        if (this.c.d && d2 < this.c.f2115a) {
            this.f2118a = new c(this.c.f2115a);
        }
        if (this.c.b >= 0.0d && this.b.b().e() > this.c.b && f == 0.0d) {
            b();
        } else if (f < this.c.c) {
        } else {
            a();
        }
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putSerializable("viewableStats", this.f2118a);
        bundle.putSerializable("testStats", this.b);
        bundle.putBoolean("ended", this.d);
        bundle.putBoolean("passed", this.e);
        bundle.putBoolean(SASNativeVideoAdElement.TRACKING_EVENT_NAME_COMPLETE, this.f);
        return bundle;
    }
}
