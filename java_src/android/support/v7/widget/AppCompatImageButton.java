package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.ImageButton;
/* loaded from: classes.dex */
public class AppCompatImageButton extends ImageButton implements android.support.v4.view.af {

    /* renamed from: a  reason: collision with root package name */
    private f f763a;
    private i b;

    public AppCompatImageButton(Context context) {
        this(context, null);
    }

    public AppCompatImageButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.imageButtonStyle);
    }

    public AppCompatImageButton(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f763a = new f(this);
        this.f763a.a(attributeSet, i);
        this.b = new i(this);
        this.b.a(attributeSet, i);
    }

    @Override // android.widget.ImageView
    public void setImageResource(int i) {
        this.b.a(i);
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f763a != null) {
            this.f763a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f763a != null) {
            this.f763a.a(drawable);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f763a != null) {
            this.f763a.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f763a != null) {
            return this.f763a.a();
        }
        return null;
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f763a != null) {
            this.f763a.a(mode);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f763a != null) {
            return this.f763a.b();
        }
        return null;
    }

    @Override // android.widget.ImageView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f763a != null) {
            this.f763a.c();
        }
    }

    @Override // android.widget.ImageView, android.view.View
    public boolean hasOverlappingRendering() {
        return this.b.a() && super.hasOverlappingRendering();
    }
}
