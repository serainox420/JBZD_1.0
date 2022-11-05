package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
@zzme
/* loaded from: classes.dex */
public class zzqv {
    private final Context mContext;
    private final zzqw zzIs;
    private com.google.android.gms.ads.internal.overlay.zzl zzPi;
    private final ViewGroup zzZu;

    public zzqv(Context context, ViewGroup viewGroup, zzqw zzqwVar) {
        this(context, viewGroup, zzqwVar, null);
    }

    zzqv(Context context, ViewGroup viewGroup, zzqw zzqwVar, com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.mContext = context;
        this.zzZu = viewGroup;
        this.zzIs = zzqwVar;
        this.zzPi = zzlVar;
    }

    public void onDestroy() {
        com.google.android.gms.common.internal.zzac.zzdj("onDestroy must be called from the UI thread.");
        if (this.zzPi != null) {
            this.zzPi.destroy();
            this.zzZu.removeView(this.zzPi);
            this.zzPi = null;
        }
    }

    public void onPause() {
        com.google.android.gms.common.internal.zzac.zzdj("onPause must be called from the UI thread.");
        if (this.zzPi != null) {
            this.zzPi.pause();
        }
    }

    public void zza(int i, int i2, int i3, int i4, int i5, boolean z) {
        if (this.zzPi != null) {
            return;
        }
        zzgh.zza(this.zzIs.zzlF().zzfA(), this.zzIs.zzlE(), "vpr2");
        this.zzPi = new com.google.android.gms.ads.internal.overlay.zzl(this.mContext, this.zzIs, i5, z, this.zzIs.zzlF().zzfA());
        this.zzZu.addView(this.zzPi, 0, new ViewGroup.LayoutParams(-1, -1));
        this.zzPi.zzd(i, i2, i3, i4);
        this.zzIs.zzlv().zzO(false);
    }

    public void zze(int i, int i2, int i3, int i4) {
        com.google.android.gms.common.internal.zzac.zzdj("The underlay may only be modified from the UI thread.");
        if (this.zzPi != null) {
            this.zzPi.zzd(i, i2, i3, i4);
        }
    }

    public com.google.android.gms.ads.internal.overlay.zzl zzlo() {
        com.google.android.gms.common.internal.zzac.zzdj("getAdVideoUnderlay must be called from the UI thread.");
        return this.zzPi;
    }
}
