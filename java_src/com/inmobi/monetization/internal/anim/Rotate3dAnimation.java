package com.inmobi.monetization.internal.anim;

import android.graphics.Camera;
import android.graphics.Matrix;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class Rotate3dAnimation extends Animation {

    /* renamed from: a  reason: collision with root package name */
    private final float f3867a;
    private final float b;
    private final float c;
    private final float d;
    private final float e;
    private final boolean f;
    private Camera g;

    public Rotate3dAnimation(float f, float f2, float f3, float f4, float f5, boolean z) {
        this.f3867a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
        this.e = f5;
        this.f = z;
    }

    @Override // android.view.animation.Animation
    public void initialize(int i, int i2, int i3, int i4) {
        super.initialize(i, i2, i3, i4);
        this.g = new Camera();
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f, Transformation transformation) {
        float f2 = this.f3867a;
        float f3 = f2 + ((this.b - f2) * f);
        float f4 = this.c;
        float f5 = this.d;
        Camera camera = this.g;
        Matrix matrix = transformation.getMatrix();
        camera.save();
        if (this.f) {
            camera.translate(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.e * f);
        } else {
            camera.translate(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, this.e * (1.0f - f));
        }
        camera.rotateX(f3);
        camera.getMatrix(matrix);
        camera.restore();
        matrix.preTranslate(-f4, -f5);
        matrix.postTranslate(f4, f5);
    }
}
