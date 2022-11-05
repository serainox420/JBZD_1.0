package com.revmob.ads.a;

import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes3.dex */
public final class e extends d {
    @Override // com.revmob.ads.a.d
    public final Animation a() {
        return new AlphaAnimation(1.0f, 2.0f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation b() {
        return new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.revmob.ads.a.d
    public final Animation c() {
        return new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, -1.0f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation d() {
        return new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED, 1, 2.0f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation e() {
        return new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, 2.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.revmob.ads.a.d
    public final Animation f() {
        return new TranslateAnimation(1, BitmapDescriptorFactory.HUE_RED, 1, -2.0f, 1, BitmapDescriptorFactory.HUE_RED, 1, BitmapDescriptorFactory.HUE_RED);
    }

    @Override // com.revmob.ads.a.d
    public final Animation g() {
        return new ScaleAnimation(1.0f, 1.5f, 1.0f, 1.5f, 1, 0.5f, 1, 0.5f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation h() {
        return new ScaleAnimation(1.0f, 0.5f, 1.0f, 0.5f, 1, 0.5f, 1, 0.5f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation i() {
        return new RotateAnimation((float) BitmapDescriptorFactory.HUE_RED, 90.0f);
    }

    @Override // com.revmob.ads.a.d
    public final Animation j() {
        return new RotateAnimation((float) BitmapDescriptorFactory.HUE_RED, -90.0f);
    }
}
