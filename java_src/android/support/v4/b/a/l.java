package android.support.v4.b.a;

import android.annotation.TargetApi;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Outline;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.DrawableContainer;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.InsetDrawable;
import android.os.Build;
import android.support.v4.b.a.i;
/* compiled from: DrawableWrapperLollipop.java */
@TargetApi(21)
/* loaded from: classes.dex */
class l extends k {
    /* JADX INFO: Access modifiers changed from: package-private */
    public l(Drawable drawable) {
        super(drawable);
    }

    l(i.a aVar, Resources resources) {
        super(aVar, resources);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        this.c.setHotspot(f, f2);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.c.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(Outline outline) {
        this.c.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public Rect getDirtyBounds() {
        return this.c.getDirtyBounds();
    }

    @Override // android.support.v4.b.a.i, android.graphics.drawable.Drawable, android.support.v4.b.a.m
    public void setTintList(ColorStateList colorStateList) {
        if (c()) {
            super.setTintList(colorStateList);
        } else {
            this.c.setTintList(colorStateList);
        }
    }

    @Override // android.support.v4.b.a.i, android.graphics.drawable.Drawable, android.support.v4.b.a.m
    public void setTint(int i) {
        if (c()) {
            super.setTint(i);
        } else {
            this.c.setTint(i);
        }
    }

    @Override // android.support.v4.b.a.i, android.graphics.drawable.Drawable, android.support.v4.b.a.m
    public void setTintMode(PorterDuff.Mode mode) {
        if (c()) {
            super.setTintMode(mode);
        } else {
            this.c.setTintMode(mode);
        }
    }

    @Override // android.support.v4.b.a.i, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (super.setState(iArr)) {
            invalidateSelf();
            return true;
        }
        return false;
    }

    @Override // android.support.v4.b.a.i
    protected boolean c() {
        if (Build.VERSION.SDK_INT == 21) {
            Drawable drawable = this.c;
            return (drawable instanceof GradientDrawable) || (drawable instanceof DrawableContainer) || (drawable instanceof InsetDrawable);
        }
        return false;
    }

    @Override // android.support.v4.b.a.k, android.support.v4.b.a.j, android.support.v4.b.a.i
    i.a b() {
        return new a(this.b, null);
    }

    /* compiled from: DrawableWrapperLollipop.java */
    /* loaded from: classes.dex */
    private static class a extends i.a {
        a(i.a aVar, Resources resources) {
            super(aVar, resources);
        }

        @Override // android.support.v4.b.a.i.a, android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new l(this, resources);
        }
    }
}
