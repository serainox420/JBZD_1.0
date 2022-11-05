package com.google.android.exoplayer2.text;

import android.graphics.Bitmap;
import android.text.Layout;
import com.mopub.mobileads.resource.DrawableConstants;
/* compiled from: Cue.java */
/* loaded from: classes2.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public final CharSequence f3432a;
    public final Layout.Alignment b;
    public final Bitmap c;
    public final float d;
    public final int e;
    public final int f;
    public final float g;
    public final int h;
    public final float i;
    public final boolean j;
    public final int k;

    public b(CharSequence charSequence) {
        this(charSequence, null, Float.MIN_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE, Integer.MIN_VALUE, Float.MIN_VALUE);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3) {
        this(charSequence, alignment, f, i, i2, f2, i3, f3, false, DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    public b(CharSequence charSequence, Layout.Alignment alignment, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this(charSequence, alignment, null, f, i, i2, f2, i3, f3, z, i4);
    }

    private b(CharSequence charSequence, Layout.Alignment alignment, Bitmap bitmap, float f, int i, int i2, float f2, int i3, float f3, boolean z, int i4) {
        this.f3432a = charSequence;
        this.b = alignment;
        this.c = bitmap;
        this.d = f;
        this.e = i;
        this.f = i2;
        this.g = f2;
        this.h = i3;
        this.i = f3;
        this.j = z;
        this.k = i4;
    }
}
