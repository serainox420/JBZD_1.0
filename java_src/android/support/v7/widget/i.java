package android.support.v7.widget;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.util.AttributeSet;
import android.widget.ImageView;
/* compiled from: AppCompatImageHelper.java */
@RestrictTo
/* loaded from: classes.dex */
public class i {

    /* renamed from: a  reason: collision with root package name */
    private final ImageView f902a;

    public i(ImageView imageView) {
        this.f902a = imageView;
    }

    public void a(AttributeSet attributeSet, int i) {
        int g;
        av avVar = null;
        try {
            Drawable drawable = this.f902a.getDrawable();
            if (drawable == null && (g = (avVar = av.a(this.f902a.getContext(), attributeSet, R.styleable.AppCompatImageView, i, 0)).g(R.styleable.AppCompatImageView_srcCompat, -1)) != -1 && (drawable = android.support.v7.a.a.b.b(this.f902a.getContext(), g)) != null) {
                this.f902a.setImageDrawable(drawable);
            }
            if (drawable != null) {
                w.b(drawable);
            }
        } finally {
            if (avVar != null) {
                avVar.a();
            }
        }
    }

    public void a(int i) {
        if (i != 0) {
            Drawable b = android.support.v7.a.a.b.b(this.f902a.getContext(), i);
            if (b != null) {
                w.b(b);
            }
            this.f902a.setImageDrawable(b);
            return;
        }
        this.f902a.setImageDrawable(null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return Build.VERSION.SDK_INT < 21 || !(this.f902a.getBackground() instanceof RippleDrawable);
    }
}
