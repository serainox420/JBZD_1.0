package android.support.graphics.drawable;

import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import android.support.v4.b.a.m;
import android.util.AttributeSet;
/* compiled from: VectorDrawableCommon.java */
/* loaded from: classes.dex */
abstract class f extends Drawable implements m {
    Drawable b;

    /* JADX INFO: Access modifiers changed from: protected */
    public static TypedArray a(Resources resources, Resources.Theme theme, AttributeSet attributeSet, int[] iArr) {
        return theme == null ? resources.obtainAttributes(attributeSet, iArr) : theme.obtainStyledAttributes(attributeSet, iArr, 0, 0);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, PorterDuff.Mode mode) {
        if (this.b != null) {
            this.b.setColorFilter(i, mode);
        } else {
            super.setColorFilter(i, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public ColorFilter getColorFilter() {
        if (this.b != null) {
            return android.support.v4.b.a.a.e(this.b);
        }
        return null;
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i) {
        return this.b != null ? this.b.setLevel(i) : super.onLevelChange(i);
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        if (this.b != null) {
            this.b.setBounds(rect);
        } else {
            super.onBoundsChange(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f, float f2) {
        if (this.b != null) {
            android.support.v4.b.a.a.a(this.b, f, f2);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        if (this.b != null) {
            android.support.v4.b.a.a.a(this.b, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        if (this.b != null) {
            this.b.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        if (this.b != null) {
            android.support.v4.b.a.a.a(this.b);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(Resources.Theme theme) {
        if (this.b != null) {
            android.support.v4.b.a.a.a(this.b, theme);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        if (this.b != null) {
            this.b.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.b != null ? this.b.getCurrent() : super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.b != null ? this.b.getMinimumWidth() : super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.b != null ? this.b.getMinimumHeight() : super.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.b != null ? this.b.getPadding(rect) : super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.b != null ? this.b.getState() : super.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.b != null ? this.b.getTransparentRegion() : super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        if (this.b != null) {
            this.b.setChangingConfigurations(i);
        } else {
            super.setChangingConfigurations(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return this.b != null ? this.b.setState(iArr) : super.setState(iArr);
    }
}
