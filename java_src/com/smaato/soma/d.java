package com.smaato.soma;

import com.intentsoftware.addapptr.AATKit;
import com.smaato.soma.exception.BannerHeightForAdDimensionFailed;
import com.smaato.soma.exception.BannerWidthForAdDimensionFailed;
/* compiled from: AdSettings.java */
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private AdType f4938a = AdType.ALL;
    private boolean b = true;
    private AdDimension c = AdDimension.DEFAULT;
    private int d = 0;
    private int e = 0;
    private long f = 0;
    private long g = 0;
    private boolean h = true;
    private String i;

    public final long a() {
        return this.f;
    }

    public final void a(long j) {
        this.f = j;
    }

    public final long b() {
        return this.g;
    }

    public final void b(long j) {
        this.g = j;
    }

    @Deprecated
    public final AdType c() {
        return this.f4938a;
    }

    @Deprecated
    public final void a(AdType adType) {
        this.f4938a = adType;
    }

    public final AdDimension d() {
        return this.c;
    }

    public final void a(AdDimension adDimension) {
        this.c = adDimension;
    }

    public int e() throws BannerWidthForAdDimensionFailed {
        try {
            if (this.d == 0) {
                switch (this.c) {
                    case DEFAULT:
                        this.d = 320;
                        break;
                    case MEDIUMRECTANGLE:
                        this.d = 300;
                        break;
                    case LEADERBOARD:
                        this.d = 728;
                        break;
                    case SKYSCRAPER:
                        this.d = 120;
                        break;
                    case INTERSTITIAL_PORTRAIT:
                        com.smaato.soma.internal.requests.settings.a.a();
                        if (com.smaato.soma.internal.requests.settings.a.b(com.smaato.soma.internal.requests.settings.a.a().o()) == 0) {
                            this.d = 320;
                            break;
                        } else {
                            this.d = 768;
                            break;
                        }
                    case INTERSTITIAL_LANDSCAPE:
                        com.smaato.soma.internal.requests.settings.a.a();
                        if (com.smaato.soma.internal.requests.settings.a.b(com.smaato.soma.internal.requests.settings.a.a().o()) == 0) {
                            this.d = 480;
                            break;
                        } else {
                            this.d = 1024;
                            break;
                        }
                    case NOT_SET:
                        this.d = 1200;
                        break;
                }
            }
            return this.d;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerWidthForAdDimensionFailed(e2);
        }
    }

    public void a(int i) {
        this.d = i;
    }

    public int f() throws BannerHeightForAdDimensionFailed {
        try {
            if (this.e == 0) {
                switch (this.c) {
                    case DEFAULT:
                        this.e = 50;
                        break;
                    case MEDIUMRECTANGLE:
                        this.e = 250;
                        break;
                    case LEADERBOARD:
                        this.e = 90;
                        break;
                    case SKYSCRAPER:
                        this.e = AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS;
                        break;
                    case INTERSTITIAL_PORTRAIT:
                        com.smaato.soma.internal.requests.settings.a.a();
                        if (com.smaato.soma.internal.requests.settings.a.b(com.smaato.soma.internal.requests.settings.a.a().o()) == 0) {
                            this.e = 480;
                            break;
                        } else {
                            this.e = 1024;
                            break;
                        }
                    case INTERSTITIAL_LANDSCAPE:
                        com.smaato.soma.internal.requests.settings.a.a();
                        if (com.smaato.soma.internal.requests.settings.a.b(com.smaato.soma.internal.requests.settings.a.a().o()) == 0) {
                            this.e = 320;
                            break;
                        } else {
                            this.e = 768;
                            break;
                        }
                    case NOT_SET:
                        this.e = 627;
                        break;
                }
            }
            return this.e;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new BannerHeightForAdDimensionFailed(e2);
        }
    }

    public void b(int i) {
        this.e = i;
    }

    public boolean g() {
        return this.h;
    }

    public boolean h() {
        return this.b;
    }

    public String i() {
        return this.i;
    }
}
