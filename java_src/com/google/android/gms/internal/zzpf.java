package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import com.google.android.gms.ads.AdActivity;
import io.fabric.sdk.android.services.common.a;
@zzme
/* loaded from: classes.dex */
public class zzpf {
    final String zzWD;
    long zzWY = -1;
    long zzWZ = -1;
    int zzXa = -1;
    int zzWW = -1;
    long zzXb = 0;
    private final Object zzrJ = new Object();
    int zzXc = 0;
    int zzXd = 0;

    public zzpf(String str) {
        this.zzWD = str;
    }

    public static boolean zzI(Context context) {
        int identifier = context.getResources().getIdentifier("Theme.Translucent", "style", a.ANDROID_CLIENT_TYPE);
        if (identifier == 0) {
            zzpk.zzbg("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
        try {
            if (identifier == context.getPackageManager().getActivityInfo(new ComponentName(context.getPackageName(), AdActivity.CLASS_NAME), 0).theme) {
                return true;
            }
            zzpk.zzbg("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        } catch (PackageManager.NameNotFoundException e) {
            zzpk.zzbh("Fail to fetch AdActivity theme");
            zzpk.zzbg("Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad.");
            return false;
        }
    }

    public void zzai(int i) {
        this.zzWW = i;
    }

    public void zzb(zzec zzecVar, long j) {
        synchronized (this.zzrJ) {
            long zzks = com.google.android.gms.ads.internal.zzw.zzcQ().zzks();
            long currentTimeMillis = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
            if (this.zzWZ == -1) {
                if (currentTimeMillis - zzks > zzgd.zzCR.get().longValue()) {
                    zzai(-1);
                } else {
                    zzai(com.google.android.gms.ads.internal.zzw.zzcQ().zzku());
                }
                this.zzWZ = j;
                this.zzWY = this.zzWZ;
            } else {
                this.zzWY = j;
            }
            if (zzecVar.extras == null || zzecVar.extras.getInt("gw", 2) != 1) {
                this.zzXa++;
                this.zzWW++;
                if (this.zzWW == 0) {
                    this.zzXb = 0L;
                    com.google.android.gms.ads.internal.zzw.zzcQ().zzp(currentTimeMillis);
                } else {
                    this.zzXb = currentTimeMillis - com.google.android.gms.ads.internal.zzw.zzcQ().zzkt();
                }
            }
        }
    }

    public void zzjV() {
        synchronized (this.zzrJ) {
            this.zzXd++;
        }
    }

    public void zzjW() {
        synchronized (this.zzrJ) {
            this.zzXc++;
        }
    }

    public long zzkE() {
        return this.zzWZ;
    }

    public int zzku() {
        return this.zzWW;
    }

    public Bundle zzo(Context context, String str) {
        Bundle bundle;
        synchronized (this.zzrJ) {
            bundle = new Bundle();
            bundle.putString("session_id", this.zzWD);
            bundle.putLong("basets", this.zzWZ);
            bundle.putLong("currts", this.zzWY);
            bundle.putString("seq_num", str);
            bundle.putInt("preqs", this.zzXa);
            bundle.putInt("preqs_in_session", this.zzWW);
            bundle.putLong("time_in_session", this.zzXb);
            bundle.putInt("pclick", this.zzXc);
            bundle.putInt("pimp", this.zzXd);
            bundle.putBoolean("support_transparent_background", zzI(context));
        }
        return bundle;
    }
}
