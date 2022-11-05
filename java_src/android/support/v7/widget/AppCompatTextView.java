package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes.dex */
public class AppCompatTextView extends TextView implements android.support.v4.view.af {

    /* renamed from: a  reason: collision with root package name */
    private f f778a;
    private l b;

    public AppCompatTextView(Context context) {
        this(context, null);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 16842884);
    }

    public AppCompatTextView(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f778a = new f(this);
        this.f778a.a(attributeSet, i);
        this.b = l.a(this);
        this.b.a(attributeSet, i);
        this.b.a();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f778a != null) {
            this.f778a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f778a != null) {
            this.f778a.a(drawable);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f778a != null) {
            this.f778a.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f778a != null) {
            return this.f778a.a();
        }
        return null;
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f778a != null) {
            this.f778a.a(mode);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f778a != null) {
            return this.f778a.b();
        }
        return null;
    }

    @Override // android.widget.TextView
    public void setTextAppearance(Context context, int i) {
        super.setTextAppearance(context, i);
        if (this.b != null) {
            this.b.a(context, i);
        }
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f778a != null) {
            this.f778a.c();
        }
        if (this.b != null) {
            this.b.a();
        }
    }
}
