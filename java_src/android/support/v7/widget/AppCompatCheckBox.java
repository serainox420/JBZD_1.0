package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.CheckBox;
/* loaded from: classes.dex */
public class AppCompatCheckBox extends CheckBox implements android.support.v4.widget.af {

    /* renamed from: a  reason: collision with root package name */
    private g f760a;

    public AppCompatCheckBox(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.checkboxStyle);
    }

    public AppCompatCheckBox(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f760a = new g(this);
        this.f760a.a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.f760a != null) {
            this.f760a.c();
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(android.support.v7.a.a.b.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return this.f760a != null ? this.f760a.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.support.v4.widget.af
    @RestrictTo
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        if (this.f760a != null) {
            this.f760a.a(colorStateList);
        }
    }

    @RestrictTo
    public ColorStateList getSupportButtonTintList() {
        if (this.f760a != null) {
            return this.f760a.a();
        }
        return null;
    }

    @Override // android.support.v4.widget.af
    @RestrictTo
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        if (this.f760a != null) {
            this.f760a.a(mode);
        }
    }

    @RestrictTo
    public PorterDuff.Mode getSupportButtonTintMode() {
        if (this.f760a != null) {
            return this.f760a.b();
        }
        return null;
    }
}
