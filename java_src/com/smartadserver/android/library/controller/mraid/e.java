package com.smartadserver.android.library.controller.mraid;

import android.webkit.JavascriptInterface;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.ui.SASAdView;
/* compiled from: SASMRAIDSensorController.java */
/* loaded from: classes.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    public static String f5418a = "mraidsensor";
    private SASAdView c;
    private com.smartadserver.android.library.controller.mraid.a.a d;
    final int b = 1000;
    private float e = BitmapDescriptorFactory.HUE_RED;
    private float f = BitmapDescriptorFactory.HUE_RED;
    private float g = BitmapDescriptorFactory.HUE_RED;
    private boolean h = false;
    private boolean i = false;
    private boolean j = false;

    public e(SASAdView sASAdView) {
        this.c = sASAdView;
        this.d = new com.smartadserver.android.library.controller.mraid.a.a(sASAdView.getContext(), this);
        a();
    }

    public void a() {
        this.d.h();
        this.h = false;
        this.i = false;
        this.j = false;
    }

    @JavascriptInterface
    public void startTiltListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "startTiltListener");
        this.i = true;
        this.d.a();
    }

    @JavascriptInterface
    public void startShakeListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "startShakeListener");
        this.h = true;
        this.d.c();
    }

    @JavascriptInterface
    public void stopTiltListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "stopTiltListener");
        this.i = false;
        this.d.b();
    }

    @JavascriptInterface
    public void stopShakeListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "stopShakeListener");
        this.h = false;
        this.d.d();
    }

    @JavascriptInterface
    public void startHeadingListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "startHeadingListener");
        this.j = true;
        this.d.e();
    }

    @JavascriptInterface
    public void stopHeadingListener() {
        com.smartadserver.android.library.g.c.a("SASMRAIDSensorController", "stopHeadingListener");
        this.j = false;
        this.d.f();
    }

    public void b() {
        this.c.b("mraid.fireShakeEvent()");
    }

    public void a(float f, float f2, float f3) {
        this.e = f;
        this.f = f2;
        this.g = f3;
        this.c.b("mraid.fireTiltChangeEvent(" + c() + ")");
    }

    public String c() {
        return "{ x : \"" + this.e + "\", y : \"" + this.f + "\", z : \"" + this.g + "\"}";
    }

    public void a(float f) {
        this.c.b("mraid.fireHeadingChangeEvent(" + ((int) (f * 57.29577951308232d)) + ");");
    }

    public void d() {
        this.d.h();
    }

    public void e() {
        if (this.h) {
            this.d.c();
        }
        if (this.i) {
            this.d.a();
        }
        if (this.j) {
            this.d.e();
        }
    }
}
