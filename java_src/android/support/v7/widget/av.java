package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.util.AttributeSet;
/* compiled from: TintTypedArray.java */
@RestrictTo
/* loaded from: classes.dex */
public class av {

    /* renamed from: a  reason: collision with root package name */
    private final Context f882a;
    private final TypedArray b;

    public static av a(Context context, AttributeSet attributeSet, int[] iArr) {
        return new av(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static av a(Context context, AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new av(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public static av a(Context context, int i, int[] iArr) {
        return new av(context, context.obtainStyledAttributes(i, iArr));
    }

    private av(Context context, TypedArray typedArray) {
        this.f882a = context;
        this.b = typedArray;
    }

    public Drawable a(int i) {
        int resourceId;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) ? this.b.getDrawable(i) : android.support.v7.a.a.b.b(this.f882a, resourceId);
    }

    public Drawable b(int i) {
        int resourceId;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        return h.a().a(this.f882a, resourceId, true);
    }

    public CharSequence c(int i) {
        return this.b.getText(i);
    }

    public String d(int i) {
        return this.b.getString(i);
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public int a(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public float a(int i, float f) {
        return this.b.getFloat(i, f);
    }

    public int b(int i, int i2) {
        return this.b.getColor(i, i2);
    }

    public ColorStateList e(int i) {
        int resourceId;
        ColorStateList a2;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (a2 = android.support.v7.a.a.b.a(this.f882a, resourceId)) == null) ? this.b.getColorStateList(i) : a2;
    }

    public int c(int i, int i2) {
        return this.b.getInteger(i, i2);
    }

    public int d(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int e(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public int f(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int g(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public CharSequence[] f(int i) {
        return this.b.getTextArray(i);
    }

    public boolean g(int i) {
        return this.b.hasValue(i);
    }

    public void a() {
        this.b.recycle();
    }
}
