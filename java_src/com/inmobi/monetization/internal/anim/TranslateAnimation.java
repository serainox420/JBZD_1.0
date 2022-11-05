package com.inmobi.monetization.internal.anim;

import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class TranslateAnimation extends Animation {

    /* renamed from: a  reason: collision with root package name */
    private int f3869a;
    private int b;
    private int c;
    private int d;
    private float e;
    private float f;
    private float g;
    private float h;
    private float i;
    private float j;
    private float k;
    private float l;

    public TranslateAnimation(float f, float f2, float f3, float f4) {
        this.f3869a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.g = BitmapDescriptorFactory.HUE_RED;
        this.h = BitmapDescriptorFactory.HUE_RED;
        this.e = f;
        this.f = f2;
        this.g = f3;
        this.h = f4;
        this.f3869a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
    }

    public TranslateAnimation(int i, float f, int i2, float f2, int i3, float f3, int i4, float f4) {
        this.f3869a = 0;
        this.b = 0;
        this.c = 0;
        this.d = 0;
        this.e = BitmapDescriptorFactory.HUE_RED;
        this.f = BitmapDescriptorFactory.HUE_RED;
        this.g = BitmapDescriptorFactory.HUE_RED;
        this.h = BitmapDescriptorFactory.HUE_RED;
        this.e = f;
        this.f = f2;
        this.g = f3;
        this.h = f4;
        this.f3869a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.i = resolveSize(this.f3869a, this.e, i, i3);
        this.j = resolveSize(this.b, this.f, i, i3);
        this.k = resolveSize(this.c, this.g, i2, i4);
        this.l = resolveSize(this.d, this.h, i2, i4);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.i;
        float f3 = this.k;
        if (this.i != this.j) {
            f2 = this.i + ((this.j - this.i) * f);
        }
        if (this.k != this.l) {
            f3 = this.k + ((this.l - this.k) * f);
        }
        transformation.getMatrix().setTranslate(f2, f3);
    }
}
