package com.revmob.ads.interstitial.b;

import com.revmob.FullscreenActivity;
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    protected final FullscreenActivity f4762a;
    private boolean c = false;
    protected String b = null;

    public a(FullscreenActivity fullscreenActivity) {
        this.f4762a = fullscreenActivity;
    }

    private boolean a() {
        if (this.c) {
            return true;
        }
        this.c = true;
        this.f4762a.d.setClickable(false);
        this.f4762a.d();
        return false;
    }

    private void d() {
        this.f4762a.runOnUiThread(new b(this));
    }

    public final boolean b() {
        if (!a()) {
            d();
            return true;
        }
        return true;
    }

    public final boolean b(String str) {
        if (!a()) {
            this.b = str;
            d();
            return true;
        }
        return true;
    }

    public final boolean c() {
        if (!this.c) {
            this.c = true;
            if (this.f4762a.c != null) {
                this.f4762a.c.onRevMobAdDismissed();
            }
            this.f4762a.f();
        }
        return true;
    }
}
