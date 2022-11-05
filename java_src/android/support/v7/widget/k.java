package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.SeekBar;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatSeekBarHelper.java */
/* loaded from: classes.dex */
public class k extends j {

    /* renamed from: a  reason: collision with root package name */
    private final SeekBar f904a;
    private Drawable b;
    private ColorStateList c;
    private PorterDuff.Mode d;
    private boolean e;
    private boolean f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(SeekBar seekBar) {
        super(seekBar);
        this.c = null;
        this.d = null;
        this.e = false;
        this.f = false;
        this.f904a = seekBar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.widget.j
    public void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        av a2 = av.a(this.f904a.getContext(), attributeSet, R.styleable.AppCompatSeekBar, i, 0);
        Drawable b = a2.b(R.styleable.AppCompatSeekBar_android_thumb);
        if (b != null) {
            this.f904a.setThumb(b);
        }
        a(a2.a(R.styleable.AppCompatSeekBar_tickMark));
        if (a2.g(R.styleable.AppCompatSeekBar_tickMarkTintMode)) {
            this.d = w.a(a2.a(R.styleable.AppCompatSeekBar_tickMarkTintMode, -1), this.d);
            this.f = true;
        }
        if (a2.g(R.styleable.AppCompatSeekBar_tickMarkTint)) {
            this.c = a2.e(R.styleable.AppCompatSeekBar_tickMarkTint);
            this.e = true;
        }
        a2.a();
        d();
    }

    void a(Drawable drawable) {
        if (this.b != null) {
            this.b.setCallback(null);
        }
        this.b = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f904a);
            android.support.v4.b.a.a.b(drawable, android.support.v4.view.ai.g(this.f904a));
            if (drawable.isStateful()) {
                drawable.setState(this.f904a.getDrawableState());
            }
            d();
        }
        this.f904a.invalidate();
    }

    private void d() {
        if (this.b != null) {
            if (this.e || this.f) {
                this.b = android.support.v4.b.a.a.g(this.b.mutate());
                if (this.e) {
                    android.support.v4.b.a.a.a(this.b, this.c);
                }
                if (this.f) {
                    android.support.v4.b.a.a.a(this.b, this.d);
                }
                if (this.b.isStateful()) {
                    this.b.setState(this.f904a.getDrawableState());
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(11)
    public void b() {
        if (this.b != null) {
            this.b.jumpToCurrentState();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        Drawable drawable = this.b;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f904a.getDrawableState())) {
            this.f904a.invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Canvas canvas) {
        int max;
        int i = 1;
        if (this.b != null && (max = this.f904a.getMax()) > 1) {
            int intrinsicWidth = this.b.getIntrinsicWidth();
            int intrinsicHeight = this.b.getIntrinsicHeight();
            int i2 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
            if (intrinsicHeight >= 0) {
                i = intrinsicHeight / 2;
            }
            this.b.setBounds(-i2, -i, i2, i);
            float width = ((this.f904a.getWidth() - this.f904a.getPaddingLeft()) - this.f904a.getPaddingRight()) / max;
            int save = canvas.save();
            canvas.translate(this.f904a.getPaddingLeft(), this.f904a.getHeight() / 2);
            for (int i3 = 0; i3 <= max; i3++) {
                this.b.draw(canvas);
                canvas.translate(width, BitmapDescriptorFactory.HUE_RED);
            }
            canvas.restoreToCount(save);
        }
    }
}
