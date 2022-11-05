package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a;
import android.util.TypedValue;
import com.google.android.gms.R;
import com.google.android.gms.common.util.zzt;
import com.google.android.gms.internal.zzbli;
import com.google.android.gms.internal.zzblj;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zze extends Drawable {
    private float centerX;
    private float centerY;
    private float zzaqW;
    private final int zzarF;
    private final int zzarG;
    private final int zzarH;
    private final Rect zzara = new Rect();
    private final Rect zzarz = new Rect();
    private final Paint zzaqV = new Paint();
    private float zzary = 1.0f;
    private float zzarI = BitmapDescriptorFactory.HUE_RED;
    private float zzarJ = BitmapDescriptorFactory.HUE_RED;
    private int zzarK = 244;

    public zze(Context context) {
        if (zzt.zzzo()) {
            setColor(zzay(context));
        } else {
            setColor(context.getResources().getColor(R.color.cast_libraries_material_featurehighlight_outer_highlight_default_color));
        }
        this.zzaqV.setAntiAlias(true);
        this.zzaqV.setStyle(Paint.Style.FILL);
        Resources resources = context.getResources();
        this.zzarF = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_threshold);
        this.zzarG = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_center_horizontal_offset);
        this.zzarH = resources.getDimensionPixelSize(R.dimen.cast_libraries_material_featurehighlight_outer_padding);
    }

    private float zza(float f, float f2, Rect rect) {
        return (float) Math.ceil(zzblj.zza(f, f2, rect.left, rect.top, rect.right, rect.bottom));
    }

    @TargetApi(21)
    private static int zzay(Context context) {
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16843827, typedValue, true);
        return a.c(typedValue.data, 244);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        canvas.drawCircle(this.centerX + BitmapDescriptorFactory.HUE_RED, this.centerY + BitmapDescriptorFactory.HUE_RED, this.zzaqW * this.zzary, this.zzaqV);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.zzaqV.getAlpha();
    }

    public float getCenterX() {
        return this.centerX;
    }

    public float getCenterY() {
        return this.centerY;
    }

    public int getColor() {
        return this.zzaqV.getColor();
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
        this.zzarK = this.zzaqV.getAlpha();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.zzaqV.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void zzb(Rect rect, Rect rect2) {
        this.zzara.set(rect);
        this.zzarz.set(rect2);
        float exactCenterX = rect.exactCenterX();
        float exactCenterY = rect.exactCenterY();
        Rect bounds = getBounds();
        if (Math.min(exactCenterY - bounds.top, bounds.bottom - exactCenterY) < this.zzarF) {
            this.centerX = exactCenterX;
            this.centerY = exactCenterY;
        } else {
            this.centerX = (exactCenterX > bounds.exactCenterX() ? 1 : (exactCenterX == bounds.exactCenterX() ? 0 : -1)) <= 0 ? rect2.exactCenterX() + this.zzarG : rect2.exactCenterX() - this.zzarG;
            this.centerY = rect2.exactCenterY();
        }
        this.zzaqW = this.zzarH + Math.max(zza(this.centerX, this.centerY, rect), zza(this.centerX, this.centerY, rect2));
        invalidateSelf();
    }

    public boolean zzd(float f, float f2) {
        return zzblj.zzb(f, f2, this.centerX, this.centerY) < this.zzaqW;
    }

    public Animator zze(float f, float f2) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", BitmapDescriptorFactory.HUE_RED, 1.0f), PropertyValuesHolder.ofFloat("translationX", f, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("translationY", f2, BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofInt("alpha", 0, this.zzarK));
        ofPropertyValuesHolder.setInterpolator(zzbli.zzUM());
        return ofPropertyValuesHolder.setDuration(350L);
    }

    public Animator zzf(float f, float f2) {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", BitmapDescriptorFactory.HUE_RED), PropertyValuesHolder.ofFloat("translationX", BitmapDescriptorFactory.HUE_RED, f), PropertyValuesHolder.ofFloat("translationY", BitmapDescriptorFactory.HUE_RED, f2), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzbli.zzUN());
        return ofPropertyValuesHolder.setDuration(200L);
    }

    public Animator zztm() {
        ObjectAnimator ofPropertyValuesHolder = ObjectAnimator.ofPropertyValuesHolder(this, PropertyValuesHolder.ofFloat("scale", 1.125f), PropertyValuesHolder.ofInt("alpha", 0));
        ofPropertyValuesHolder.setInterpolator(zzbli.zzUN());
        return ofPropertyValuesHolder.setDuration(200L);
    }
}
