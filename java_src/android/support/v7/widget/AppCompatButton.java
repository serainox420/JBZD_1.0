package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.Button;
/* loaded from: classes.dex */
public class AppCompatButton extends Button implements android.support.v4.view.af {

    /* renamed from: a  reason: collision with root package name */
    private final f f759a;
    private final l b;

    public AppCompatButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.buttonStyle);
    }

    public AppCompatButton(Context context, AttributeSet attributeSet, int i) {
        super(as.a(context), attributeSet, i);
        this.f759a = new f(this);
        this.f759a.a(attributeSet, i);
        this.b = l.a(this);
        this.b.a(attributeSet, i);
        this.b.a();
    }

    @Override // android.view.View
    public void setBackgroundResource(int i) {
        super.setBackgroundResource(i);
        if (this.f759a != null) {
            this.f759a.a(i);
        }
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        super.setBackgroundDrawable(drawable);
        if (this.f759a != null) {
            this.f759a.a(drawable);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintList(ColorStateList colorStateList) {
        if (this.f759a != null) {
            this.f759a.a(colorStateList);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public ColorStateList getSupportBackgroundTintList() {
        if (this.f759a != null) {
            return this.f759a.a();
        }
        return null;
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public void setSupportBackgroundTintMode(PorterDuff.Mode mode) {
        if (this.f759a != null) {
            this.f759a.a(mode);
        }
    }

    @Override // android.support.v4.view.af
    @RestrictTo
    public PorterDuff.Mode getSupportBackgroundTintMode() {
        if (this.f759a != null) {
            return this.f759a.b();
        }
        return null;
    }

    @Override // android.widget.TextView, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        if (this.f759a != null) {
            this.f759a.c();
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

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName(Button.class.getName());
    }

    @Override // android.view.View
    @TargetApi(14)
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName(Button.class.getName());
    }

    public void setSupportAllCaps(boolean z) {
        if (this.b != null) {
            this.b.a(z);
        }
    }
}
