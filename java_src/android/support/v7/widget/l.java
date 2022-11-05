package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v7.appcompat.R;
import android.text.method.PasswordTransformationMethod;
import android.util.AttributeSet;
import android.widget.TextView;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: AppCompatTextHelper.java */
@TargetApi(9)
/* loaded from: classes.dex */
public class l {

    /* renamed from: a  reason: collision with root package name */
    final TextView f905a;
    private at b;
    private at c;
    private at d;
    private at e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static l a(TextView textView) {
        return Build.VERSION.SDK_INT >= 17 ? new m(textView) : new l(textView);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(TextView textView) {
        this.f905a = textView;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AttributeSet attributeSet, int i) {
        ColorStateList colorStateList;
        boolean z;
        boolean z2;
        ColorStateList colorStateList2 = null;
        Context context = this.f905a.getContext();
        h a2 = h.a();
        av a3 = av.a(context, attributeSet, R.styleable.AppCompatTextHelper, i, 0);
        int g = a3.g(R.styleable.AppCompatTextHelper_android_textAppearance, -1);
        if (a3.g(R.styleable.AppCompatTextHelper_android_drawableLeft)) {
            this.b = a(context, a2, a3.g(R.styleable.AppCompatTextHelper_android_drawableLeft, 0));
        }
        if (a3.g(R.styleable.AppCompatTextHelper_android_drawableTop)) {
            this.c = a(context, a2, a3.g(R.styleable.AppCompatTextHelper_android_drawableTop, 0));
        }
        if (a3.g(R.styleable.AppCompatTextHelper_android_drawableRight)) {
            this.d = a(context, a2, a3.g(R.styleable.AppCompatTextHelper_android_drawableRight, 0));
        }
        if (a3.g(R.styleable.AppCompatTextHelper_android_drawableBottom)) {
            this.e = a(context, a2, a3.g(R.styleable.AppCompatTextHelper_android_drawableBottom, 0));
        }
        a3.a();
        boolean z3 = this.f905a.getTransformationMethod() instanceof PasswordTransformationMethod;
        if (g != -1) {
            av a4 = av.a(context, g, R.styleable.TextAppearance);
            if (z3 || !a4.g(R.styleable.TextAppearance_textAllCaps)) {
                z = false;
                z2 = false;
            } else {
                z2 = a4.a(R.styleable.TextAppearance_textAllCaps, false);
                z = true;
            }
            if (Build.VERSION.SDK_INT < 23) {
                colorStateList = a4.g(R.styleable.TextAppearance_android_textColor) ? a4.e(R.styleable.TextAppearance_android_textColor) : null;
                if (a4.g(R.styleable.TextAppearance_android_textColorHint)) {
                    colorStateList2 = a4.e(R.styleable.TextAppearance_android_textColorHint);
                }
            } else {
                colorStateList = null;
            }
            a4.a();
        } else {
            colorStateList = null;
            z = false;
            z2 = false;
        }
        av a5 = av.a(context, attributeSet, R.styleable.TextAppearance, i, 0);
        if (!z3 && a5.g(R.styleable.TextAppearance_textAllCaps)) {
            z2 = a5.a(R.styleable.TextAppearance_textAllCaps, false);
            z = true;
        }
        if (Build.VERSION.SDK_INT < 23) {
            if (a5.g(R.styleable.TextAppearance_android_textColor)) {
                colorStateList = a5.e(R.styleable.TextAppearance_android_textColor);
            }
            if (a5.g(R.styleable.TextAppearance_android_textColorHint)) {
                colorStateList2 = a5.e(R.styleable.TextAppearance_android_textColorHint);
            }
        }
        a5.a();
        if (colorStateList != null) {
            this.f905a.setTextColor(colorStateList);
        }
        if (colorStateList2 != null) {
            this.f905a.setHintTextColor(colorStateList2);
        }
        if (!z3 && z) {
            a(z2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, int i) {
        ColorStateList e;
        av a2 = av.a(context, i, R.styleable.TextAppearance);
        if (a2.g(R.styleable.TextAppearance_textAllCaps)) {
            a(a2.a(R.styleable.TextAppearance_textAllCaps, false));
        }
        if (Build.VERSION.SDK_INT < 23 && a2.g(R.styleable.TextAppearance_android_textColor) && (e = a2.e(R.styleable.TextAppearance_android_textColor)) != null) {
            this.f905a.setTextColor(e);
        }
        a2.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.f905a.setTransformationMethod(z ? new android.support.v7.c.a(this.f905a.getContext()) : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (this.b != null || this.c != null || this.d != null || this.e != null) {
            Drawable[] compoundDrawables = this.f905a.getCompoundDrawables();
            a(compoundDrawables[0], this.b);
            a(compoundDrawables[1], this.c);
            a(compoundDrawables[2], this.d);
            a(compoundDrawables[3], this.e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(Drawable drawable, at atVar) {
        if (drawable != null && atVar != null) {
            h.a(drawable, atVar, this.f905a.getDrawableState());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static at a(Context context, h hVar, int i) {
        ColorStateList b = hVar.b(context, i);
        if (b != null) {
            at atVar = new at();
            atVar.d = true;
            atVar.f880a = b;
            return atVar;
        }
        return null;
    }
}
