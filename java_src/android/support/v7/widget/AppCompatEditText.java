package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.EditText;
/* loaded from: classes.dex */
public class AppCompatEditText extends EditText implements android.support.v4.view.af {

    /* renamed from: a  reason: collision with root package name */
    private f f762a;
    private l b;

    public AppCompatEditText(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.editTextStyle);
    }

    public AppCompatEditText(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f762a = new f(this);
        this.f762a.a(attributeSet, i);
        this.b = l.a(this);
        this.b.a(attributeSet, i);
        this.b.a();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f762a != null) {
            this.f762a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f762a != null) {
            this.f762a.a(drawable);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f762a != null) {
            this.f762a.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f762a != null) {
            return this.f762a.a();
        }
        return null;
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f762a != null) {
            this.f762a.a(mode);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f762a != null) {
            return this.f762a.b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f762a != null) {
            this.f762a.c();
        }
        if (this.b != null) {
            this.b.a();
        }
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }
}
