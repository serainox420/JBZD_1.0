package com.google.android.gms.cast.framework.media.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.v4.b.a.a;
import android.support.v4.content.b;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
class zza {
    private static final zzyz zzapV = new zzyz("WidgetUtil");

    @TargetApi(17)
    public static Bitmap zza(Context context, Bitmap bitmap, float f, float f2) {
        zzapV.zzb("Begin blurring bitmap %s, original width = %d, original height = %d.", bitmap, Integer.valueOf(bitmap.getWidth()), Integer.valueOf(bitmap.getHeight()));
        int round = Math.round(bitmap.getWidth() * f);
        int round2 = Math.round(bitmap.getHeight() * f);
        Bitmap createScaledBitmap = Bitmap.createScaledBitmap(bitmap, round, round2, false);
        Bitmap createBitmap = Bitmap.createBitmap(round, round2, createScaledBitmap.getConfig());
        RenderScript create = RenderScript.create(context);
        Allocation createFromBitmap = Allocation.createFromBitmap(create, createScaledBitmap);
        Allocation createTyped = Allocation.createTyped(create, createFromBitmap.getType());
        ScriptIntrinsicBlur create2 = ScriptIntrinsicBlur.create(create, createFromBitmap.getElement());
        create2.setInput(createFromBitmap);
        create2.setRadius(f2);
        create2.forEach(createTyped);
        createTyped.copyTo(createBitmap);
        create.destroy();
        zzapV.zzb("End blurring bitmap %s, original width = %d, original height = %d.", createScaledBitmap, Integer.valueOf(round), Integer.valueOf(round2));
        return createBitmap;
    }

    public static Drawable zza(Context context, int i, int i2) {
        return zza(context, i, i2, 16842800, 0);
    }

    private static Drawable zza(Context context, int i, int i2, int i3, int i4) {
        int c;
        ColorStateList colorStateList;
        Drawable g = a.g(context.getResources().getDrawable(i2).mutate());
        a.a(g, PorterDuff.Mode.SRC_IN);
        if (i != 0) {
            colorStateList = b.b(context, i);
        } else {
            if (i3 != 0) {
                TypedArray obtainStyledAttributes = context.obtainStyledAttributes(new int[]{i3});
                c = obtainStyledAttributes.getColor(0, 0);
                obtainStyledAttributes.recycle();
            } else {
                c = b.c(context, i4);
            }
            colorStateList = new ColorStateList(new int[][]{new int[]{16842910}, new int[]{-16842910}}, new int[]{c, android.support.v4.b.a.c(c, 128)});
        }
        a.a(g, colorStateList);
        return g;
    }

    public static Drawable zzb(Context context, int i, int i2) {
        return zza(context, i, i2, 0, 17170443);
    }
}
