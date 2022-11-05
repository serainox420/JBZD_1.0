package com.facebook.ads;

import java.io.Serializable;
/* loaded from: classes.dex */
public class AdSize implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private final int f2011a;
    private final int b;
    @Deprecated
    public static final AdSize BANNER_320_50 = new AdSize(320, 50);
    public static final AdSize INTERSTITIAL = new AdSize(0, 0);
    public static final AdSize BANNER_HEIGHT_50 = new AdSize(-1, 50);
    public static final AdSize BANNER_HEIGHT_90 = new AdSize(-1, 90);
    public static final AdSize RECTANGLE_HEIGHT_250 = new AdSize(-1, 250);

    public AdSize(int i, int i2) {
        this.f2011a = i;
        this.b = i2;
    }

    public static AdSize fromWidthAndHeight(int i, int i2) {
        if (INTERSTITIAL.b == i2 && INTERSTITIAL.f2011a == i) {
            return INTERSTITIAL;
        }
        if (BANNER_320_50.b == i2 && BANNER_320_50.f2011a == i) {
            return BANNER_320_50;
        }
        if (BANNER_HEIGHT_50.b == i2 && BANNER_HEIGHT_50.f2011a == i) {
            return BANNER_HEIGHT_50;
        }
        if (BANNER_HEIGHT_90.b == i2 && BANNER_HEIGHT_90.f2011a == i) {
            return BANNER_HEIGHT_90;
        }
        if (RECTANGLE_HEIGHT_250.b != i2 || RECTANGLE_HEIGHT_250.f2011a != i) {
            return null;
        }
        return RECTANGLE_HEIGHT_250;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.f2011a == adSize.f2011a && this.b == adSize.b;
    }

    public int getHeight() {
        return this.b;
    }

    public int getWidth() {
        return this.f2011a;
    }

    public int hashCode() {
        return (this.f2011a * 31) + this.b;
    }
}
