package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.RadioButton;
/* loaded from: classes.dex */
public class AppCompatRadioButton extends RadioButton implements android.support.v4.widget.af {

    /* renamed from: a  reason: collision with root package name */
    private g f768a;

    public AppCompatRadioButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.radioButtonStyle);
    }

    public AppCompatRadioButton(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f768a = new g(this);
        this.f768a.a(attributeSet, i);
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(Drawable drawable) {
        super.setButtonDrawable(drawable);
        if (this.f768a != null) {
            this.f768a.c();
        }
    }

    @Override // android.widget.CompoundButton
    public void setButtonDrawable(int i) {
        setButtonDrawable(android.support.v7.a.a.b.b(getContext(), i));
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        int compoundPaddingLeft = super.getCompoundPaddingLeft();
        return this.f768a != null ? this.f768a.a(compoundPaddingLeft) : compoundPaddingLeft;
    }

    @Override // android.support.v4.widget.af
    @RestrictTo
    public void setSupportButtonTintList(ColorStateList colorStateList) {
        if (this.f768a != null) {
            this.f768a.a(colorStateList);
        }
    }

    @RestrictTo
    public ColorStateList getSupportButtonTintList() {
        if (this.f768a != null) {
            return this.f768a.a();
        }
        return null;
    }

    @Override // android.support.v4.widget.af
    @RestrictTo
    public void setSupportButtonTintMode(PorterDuff.Mode mode) {
        if (this.f768a != null) {
            this.f768a.a(mode);
        }
    }

    @RestrictTo
    public PorterDuff.Mode getSupportButtonTintMode() {
        if (this.f768a != null) {
            return this.f768a.b();
        }
        return null;
    }
}
