package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.internal.zzeg;
import com.google.android.gms.internal.zzel;
import com.intentsoftware.addapptr.AATKit;
import com.openx.view.mraid.JSInterface;
/* loaded from: classes2.dex */
public final class AdSize {
    public static final int AUTO_HEIGHT = -2;
    public static final int FULL_WIDTH = -1;
    private final int zzrC;
    private final int zzrD;
    private final String zzrE;
    public static final AdSize BANNER = new AdSize(320, 50, "320x50_mb");
    public static final AdSize FULL_BANNER = new AdSize(468, 60, "468x60_as");
    public static final AdSize LARGE_BANNER = new AdSize(320, 100, "320x100_as");
    public static final AdSize LEADERBOARD = new AdSize(728, 90, "728x90_as");
    public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250, "300x250_as");
    public static final AdSize WIDE_SKYSCRAPER = new AdSize(160, AATKit.BANNER_MAX_RELOAD_INTERVAL_IN_SECONDS, "160x600_as");
    public static final AdSize SMART_BANNER = new AdSize(-1, -2, "smart_banner");
    public static final AdSize FLUID = new AdSize(-3, -4, "fluid");
    public static final AdSize zzrB = new AdSize(50, 50, "50x50_mb");
    public static final AdSize SEARCH = new AdSize(-3, 0, "search_v2");

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AdSize(int i, int i2) {
        this(i, i2, new StringBuilder(String.valueOf(r1).length() + 1 + String.valueOf(r0).length() + String.valueOf(r2).length()).append(r1).append(JSInterface.JSON_X).append(r0).append(r2).toString());
        String valueOf = i == -1 ? "FULL" : String.valueOf(i);
        String valueOf2 = i2 == -2 ? "AUTO" : String.valueOf(i2);
        String valueOf3 = String.valueOf("_as");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdSize(int i, int i2, String str) {
        if (i >= 0 || i == -1 || i == -3) {
            if (i2 < 0 && i2 != -2 && i2 != -4) {
                throw new IllegalArgumentException(new StringBuilder(38).append("Invalid height for AdSize: ").append(i2).toString());
            }
            this.zzrC = i;
            this.zzrD = i2;
            this.zzrE = str;
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(37).append("Invalid width for AdSize: ").append(i).toString());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AdSize)) {
            return false;
        }
        AdSize adSize = (AdSize) obj;
        return this.zzrC == adSize.zzrC && this.zzrD == adSize.zzrD && this.zzrE.equals(adSize.zzrE);
    }

    public int getHeight() {
        return this.zzrD;
    }

    public int getHeightInPixels(Context context) {
        switch (this.zzrD) {
            case -4:
            case -3:
                return -1;
            case -2:
                return zzeg.zzb(context.getResources().getDisplayMetrics());
            default:
                return zzel.zzeT().zzb(context, this.zzrD);
        }
    }

    public int getWidth() {
        return this.zzrC;
    }

    public int getWidthInPixels(Context context) {
        switch (this.zzrC) {
            case -4:
            case -3:
                return -1;
            case -2:
            default:
                return zzel.zzeT().zzb(context, this.zzrC);
            case -1:
                return zzeg.zza(context.getResources().getDisplayMetrics());
        }
    }

    public int hashCode() {
        return this.zzrE.hashCode();
    }

    public boolean isAutoHeight() {
        return this.zzrD == -2;
    }

    public boolean isFluid() {
        return this.zzrC == -3 && this.zzrD == -4;
    }

    public boolean isFullWidth() {
        return this.zzrC == -1;
    }

    public String toString() {
        return this.zzrE;
    }
}
