package com.google.android.exoplayer2.text;

import android.annotation.TargetApi;
import android.graphics.Typeface;
import android.view.accessibility.CaptioningManager;
import com.google.android.exoplayer2.util.v;
import com.mopub.mobileads.resource.DrawableConstants;
/* compiled from: CaptionStyleCompat.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3423a = new a(-1, DrawableConstants.CtaButton.BACKGROUND_COLOR, 0, 0, -1, null);
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final Typeface g;

    @TargetApi(19)
    public static a a(CaptioningManager.CaptionStyle captionStyle) {
        return v.f3519a >= 21 ? c(captionStyle) : b(captionStyle);
    }

    public a(int i, int i2, int i3, int i4, int i5, Typeface typeface) {
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = i5;
        this.g = typeface;
    }

    @TargetApi(19)
    private static a b(CaptioningManager.CaptionStyle captionStyle) {
        return new a(captionStyle.foregroundColor, captionStyle.backgroundColor, 0, captionStyle.edgeType, captionStyle.edgeColor, captionStyle.getTypeface());
    }

    @TargetApi(21)
    private static a c(CaptioningManager.CaptionStyle captionStyle) {
        return new a(captionStyle.hasForegroundColor() ? captionStyle.foregroundColor : f3423a.b, captionStyle.hasBackgroundColor() ? captionStyle.backgroundColor : f3423a.c, captionStyle.hasWindowColor() ? captionStyle.windowColor : f3423a.d, captionStyle.hasEdgeType() ? captionStyle.edgeType : f3423a.e, captionStyle.hasEdgeColor() ? captionStyle.edgeColor : f3423a.f, captionStyle.getTypeface());
    }
}
