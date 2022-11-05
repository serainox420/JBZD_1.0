package com.adcolony.sdk;
/* loaded from: classes.dex */
public class AdColonyZone {
    public static final int BANNER = 1;
    public static final int INTERSTITIAL = 0;
    public static final int NATIVE = 2;

    /* renamed from: a  reason: collision with root package name */
    static final int f1001a = 0;
    static final int b = 1;
    static final int c = 2;
    static final int d = 3;
    static final int e = 4;
    static final int f = 5;
    static final int g = 6;
    String h;
    String i;
    String j;
    String k;
    int l = 5;
    int m;
    int n;
    int o;
    int p;
    boolean q;
    boolean r;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyZone(String str) {
        this.h = str;
    }

    int a(int i) {
        if (a.m == null || a.m.E || a.m.F) {
            b();
            return 0;
        }
        return i;
    }

    boolean a(boolean z) {
        if (a.m == null || a.m.E || a.m.F) {
            b();
            return false;
        }
        return z;
    }

    String a(String str) {
        return a(str, "");
    }

    String a(String str, String str2) {
        if (a.m == null || a.m.E || a.m.F) {
            b();
            return str2;
        }
        return str;
    }

    public String getZoneID() {
        return a(this.h);
    }

    public int getRemainingViewsUntilReward() {
        return a(this.n);
    }

    public int getRewardAmount() {
        return a(this.p);
    }

    public String getRewardName() {
        return a(this.i);
    }

    public int getViewsPerReward() {
        return a(this.o);
    }

    public int getZoneType() {
        return this.m;
    }

    boolean a() {
        return this.l == 0;
    }

    public boolean isValid() {
        return a(this.q);
    }

    public boolean isRewarded() {
        return this.r;
    }

    void b() {
        u.g.b("The AdColonyZone API is not available while AdColony is disabled.");
    }
}
