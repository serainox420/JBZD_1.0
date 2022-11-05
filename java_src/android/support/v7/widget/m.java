package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.TextView;
/* compiled from: AppCompatTextHelperV17.java */
@TargetApi(17)
/* loaded from: classes.dex */
class m extends l {
    private at b;
    private at c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(TextView textView) {
        super(textView);
    }

    @Override // android.support.v7.widget.l
    void a(AttributeSet attributeSet, int i) {
        super.a(attributeSet, i);
        Context context = this.f905a.getContext();
        h a2 = h.a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.AppCompatTextHelper, i, 0);
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableStart)) {
            this.b = a(context, a2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableStart, 0));
        }
        if (obtainStyledAttributes.hasValue(R.styleable.AppCompatTextHelper_android_drawableEnd)) {
            this.c = a(context, a2, obtainStyledAttributes.getResourceId(R.styleable.AppCompatTextHelper_android_drawableEnd, 0));
        }
        obtainStyledAttributes.recycle();
    }

    @Override // android.support.v7.widget.l
    void a() {
        super.a();
        if (this.b != null || this.c != null) {
            Drawable[] compoundDrawablesRelative = this.f905a.getCompoundDrawablesRelative();
            a(compoundDrawablesRelative[0], this.b);
            a(compoundDrawablesRelative[2], this.c);
        }
    }
}
