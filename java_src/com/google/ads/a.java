package com.google.ads;

import com.google.android.gms.ads.AdSize;
import com.intentsoftware.addapptr.AATKit;
@Deprecated
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f3131a = new a(-1, -2, "mb");
    public static final a b = new a(320, 50, "mb");
    public static final a c = new a(300, 250, "as");
    public static final a d = new a(468, 60, "as");
    public static final a e = new a(728, 90, "as");
    public static final a f = new a(160, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS, "as");
    private final AdSize g;

    private a(int i, int i2, String str) {
        this(new AdSize(i, i2));
    }

    public a(AdSize adSize) {
        this.g = adSize;
    }

    public int a() {
        return this.g.getWidth();
    }

    public int b() {
        return this.g.getHeight();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        return this.g.equals(((a) obj).g);
    }

    public int hashCode() {
        return this.g.hashCode();
    }

    public String toString() {
        return this.g.toString();
    }
}
