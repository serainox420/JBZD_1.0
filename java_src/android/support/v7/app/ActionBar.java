package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v7.appcompat.R;
import android.support.v7.view.b;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes.dex */
public abstract class ActionBar {

    /* loaded from: classes.dex */
    public interface a {
        void a(boolean z);
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static abstract class b {
        public abstract Drawable a();

        public abstract CharSequence b();

        public abstract View c();

        public abstract void d();

        public abstract CharSequence e();
    }

    public abstract int a();

    public abstract void a(CharSequence charSequence);

    public abstract void a(boolean z);

    public abstract void b(boolean z);

    public abstract boolean b();

    public abstract void c(boolean z);

    public void d(boolean z) {
    }

    public Context c() {
        return null;
    }

    public void a(Drawable drawable) {
    }

    public void a(int i) {
    }

    public void b(int i) {
    }

    public void e(boolean z) {
        if (z) {
            throw new UnsupportedOperationException("Hide on content scroll is not supported in this action bar configuration.");
        }
    }

    public int d() {
        return 0;
    }

    public void a(float f) {
        if (f != BitmapDescriptorFactory.HUE_RED) {
            throw new UnsupportedOperationException("Setting a non-zero elevation is not supported in this action bar configuration.");
        }
    }

    @RestrictTo
    public void f(boolean z) {
    }

    @RestrictTo
    public void g(boolean z) {
    }

    @RestrictTo
    public void a(Configuration configuration) {
    }

    @RestrictTo
    public void h(boolean z) {
    }

    @RestrictTo
    public android.support.v7.view.b a(b.a aVar) {
        return null;
    }

    @RestrictTo
    public boolean e() {
        return false;
    }

    @RestrictTo
    public boolean a(int i, KeyEvent keyEvent) {
        return false;
    }

    @RestrictTo
    public boolean f() {
        return false;
    }

    @RestrictTo
    public void b(CharSequence charSequence) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean g() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
    }

    /* loaded from: classes.dex */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {

        /* renamed from: a  reason: collision with root package name */
        public int f530a;

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f530a = 0;
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ActionBarLayout);
            this.f530a = obtainStyledAttributes.getInt(R.styleable.ActionBarLayout_android_layout_gravity, 0);
            obtainStyledAttributes.recycle();
        }

        public LayoutParams(int i, int i2) {
            super(i, i2);
            this.f530a = 0;
            this.f530a = 8388627;
        }

        public LayoutParams(LayoutParams layoutParams) {
            super((ViewGroup.MarginLayoutParams) layoutParams);
            this.f530a = 0;
            this.f530a = layoutParams.f530a;
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f530a = 0;
        }
    }
}
