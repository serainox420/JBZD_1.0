package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import com.google.android.gms.R;
import com.google.android.gms.internal.zzblg;
import com.google.android.gms.internal.zzbli;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
class zzc extends Drawable {
    private float centerX;
    private float centerY;
    private float zzaqW;
    private final int zzarw;
    private final int zzarx;
    private final Paint zzaqV = new Paint();
    private final Paint zzarv = new Paint();
    private final Rect zzara = new Rect();
    private float zzary = 1.0f;

    public zzc(Context context) {
        Resources resources = context.getResources();
        this.zzarw = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_inner_radius);
        this.zzarx = resources.getInteger(R.integer.cast_libraries_material_featurehighlight_pulse_base_alpha);
        this.zzaqV.setAntiAlias(true);
        this.zzaqV.setStyle(Paint.Style.FILL);
        this.zzarv.setAntiAlias(true);
        this.zzarv.setStyle(Paint.Style.FILL);
        setColor(-1);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(this.centerX, this.centerY, this.zzaqW * this.zzary, this.zzaqV);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.zzaqV.setAlpha(i);
        invalidateSelf();
    }

    public void setColor(int i) {
        this.zzaqV.setColor(i);
        this.zzarv.setColor(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.zzaqV.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void zzc(Rect rect) {
        this.zzara.set(rect);
        this.centerX = this.zzara.exactCenterX();
        this.centerY = this.zzara.exactCenterY();
        this.zzaqW = Math.max(this.zzarw, Math.max(this.zzara.width() / 2.0f, this.zzara.height() / 2.0f));
        invalidateSelf();
    }

    public Animator zztk() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", BitmapDescriptorFactory.HUE_RED, 1.0f), PropertyValuesHolder.ofFloat("alpha", BitmapDescriptorFactory.HUE_RED, 1.0f));
        ofPropertyValuesHolder.setInterpolator(zzbli.zzUM());
        return ofPropertyValuesHolder.setDuration(350L);
    }

    public Animator zztl() {
        AnimatorSet animatorSet = new AnimatorSet();
        ObjectAnimator duration = ObjectAnimator.ofFloat(this, "scale", 1.0f, 1.1f).setDuration(500L);
        ObjectAnimator duration2 = ObjectAnimator.ofFloat(this, "scale", 1.1f, 1.0f).setDuration(500L);
        ObjectAnimator duration3 = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("pulseScale", 1.1f, 2.0f), PropertyValuesHolder.ofFloat("pulseAlpha", 1.0f, BitmapDescriptorFactory.HUE_RED)).setDuration(500L);
        animatorSet.play(duration);
        animatorSet.play(duration2).with(duration3).after(duration);
        animatorSet.setInterpolator(zzbli.zzUO());
        animatorSet.setStartDelay(500L);
        zzblg.zzc(animatorSet);
        return animatorSet;
    }

    public Animator zztm() {
        return zztn();
    }

    public Animator zztn() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("alpha", BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("pulseScale", BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("pulseAlpha", BitmapDescriptorFactory.HUE_RED));
        ofPropertyValuesHolder.setInterpolator(zzbli.zzUN());
        return ofPropertyValuesHolder.setDuration(200L);
    }
}
