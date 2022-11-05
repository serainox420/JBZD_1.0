package com.google.android.gms.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.openx.view.mraid.JSInterface;
@zzme
/* loaded from: classes.dex */
public class zzeg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzeg> CREATOR = new zzeh();
    public final int height;
    public final int heightPixels;
    public final int width;
    public final int widthPixels;
    public final zzeg[] zzzA;
    public final boolean zzzB;
    public final boolean zzzC;
    public boolean zzzD;
    public final String zzzy;
    public final boolean zzzz;

    public zzeg() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public zzeg(Context context, AdSize adSize) {
        this(context, new AdSize[]{adSize});
    }

    public zzeg(Context context, AdSize[] adSizeArr) {
        int i;
        AdSize adSize = adSizeArr[0];
        this.zzzz = false;
        this.zzzC = adSize.isFluid();
        if (this.zzzC) {
            this.width = AdSize.BANNER.getWidth();
            this.height = AdSize.BANNER.getHeight();
        } else {
            this.width = adSize.getWidth();
            this.height = adSize.getHeight();
        }
        boolean z = this.width == -1;
        boolean z2 = this.height == -2;
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        if (z) {
            if (!zzel.zzeT().zzah(context) || !zzel.zzeT().zzai(context)) {
                this.widthPixels = zza(displayMetrics);
            } else {
                this.widthPixels = zza(displayMetrics) - zzel.zzeT().zzaj(context);
            }
            double d = this.widthPixels / displayMetrics.density;
            int i2 = (int) d;
            i = d - ((double) ((int) d)) >= 0.01d ? i2 + 1 : i2;
        } else {
            int i3 = this.width;
            this.widthPixels = zzel.zzeT().zza(displayMetrics, this.width);
            i = i3;
        }
        int zzc = z2 ? zzc(displayMetrics) : this.height;
        this.heightPixels = zzel.zzeT().zza(displayMetrics, zzc);
        if (z || z2) {
            this.zzzy = new StringBuilder(26).append(i).append(JSInterface.JSON_X).append(zzc).append("_as").toString();
        } else if (this.zzzC) {
            this.zzzy = "320x50_mb";
        } else {
            this.zzzy = adSize.toString();
        }
        if (adSizeArr.length > 1) {
            this.zzzA = new zzeg[adSizeArr.length];
            for (int i4 = 0; i4 < adSizeArr.length; i4++) {
                this.zzzA[i4] = new zzeg(context, adSizeArr[i4]);
            }
        } else {
            this.zzzA = null;
        }
        this.zzzB = false;
        this.zzzD = false;
    }

    public zzeg(zzeg zzegVar, zzeg[] zzegVarArr) {
        this(zzegVar.zzzy, zzegVar.height, zzegVar.heightPixels, zzegVar.zzzz, zzegVar.width, zzegVar.widthPixels, zzegVarArr, zzegVar.zzzB, zzegVar.zzzC, zzegVar.zzzD);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzeg(String str, int i, int i2, boolean z, int i3, int i4, zzeg[] zzegVarArr, boolean z2, boolean z3, boolean z4) {
        this.zzzy = str;
        this.height = i;
        this.heightPixels = i2;
        this.zzzz = z;
        this.width = i3;
        this.widthPixels = i4;
        this.zzzA = zzegVarArr;
        this.zzzB = z2;
        this.zzzC = z3;
        this.zzzD = z4;
    }

    public static int zza(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int zzb(DisplayMetrics displayMetrics) {
        return (int) (zzc(displayMetrics) * displayMetrics.density);
    }

    private static int zzc(DisplayMetrics displayMetrics) {
        int i = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i <= 400) {
            return 32;
        }
        return i <= 720 ? 50 : 90;
    }

    public static zzeg zzeE() {
        return new zzeg("reward_mb", 0, 0, true, 0, 0, null, false, false, false);
    }

    public static zzeg zzk(Context context) {
        return new zzeg("320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzeh.zza(this, parcel, i);
    }

    public AdSize zzeF() {
        return com.google.android.gms.ads.zza.zza(this.width, this.height, this.zzzy);
    }

    public void zzl(boolean z) {
        this.zzzD = z;
    }
}
