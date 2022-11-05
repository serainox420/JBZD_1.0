package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.internal.zzku;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzkv extends zzkw implements zzid {
    private final Context mContext;
    private final zzqw zzIs;
    private int zzMA;
    int zzMB;
    int zzMC;
    int zzMD;
    int zzME;
    private final zzfv zzMw;
    private float zzMx;
    int zzMy;
    int zzMz;
    DisplayMetrics zzwY;
    private final WindowManager zzwo;

    public zzkv(zzqw zzqwVar, Context context, zzfv zzfvVar) {
        super(zzqwVar);
        this.zzMy = -1;
        this.zzMz = -1;
        this.zzMB = -1;
        this.zzMC = -1;
        this.zzMD = -1;
        this.zzME = -1;
        this.zzIs = zzqwVar;
        this.mContext = context;
        this.zzMw = zzfvVar;
        this.zzwo = (WindowManager) context.getSystemService("window");
    }

    private void zzhp() {
        this.zzwY = new DisplayMetrics();
        Display defaultDisplay = this.zzwo.getDefaultDisplay();
        defaultDisplay.getMetrics(this.zzwY);
        this.zzMx = this.zzwY.density;
        this.zzMA = defaultDisplay.getRotation();
    }

    private void zzhu() {
        int[] iArr = new int[2];
        this.zzIs.getLocationOnScreen(iArr);
        zzf(zzel.zzeT().zzc(this.mContext, iArr[0]), zzel.zzeT().zzc(this.mContext, iArr[1]));
    }

    private zzku zzhx() {
        return new zzku.zza().zzu(this.zzMw.zzfl()).zzt(this.zzMw.zzfm()).zzv(this.zzMw.zzfp()).zzw(this.zzMw.zzfn()).zzx(true).zzho();
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        zzhs();
    }

    public void zzf(int i, int i2) {
        int i3 = this.mContext instanceof Activity ? com.google.android.gms.ads.internal.zzw.zzcM().zzk((Activity) this.mContext)[0] : 0;
        if (this.zzIs.zzbC() == null || !this.zzIs.zzbC().zzzz) {
            this.zzMD = zzel.zzeT().zzc(this.mContext, this.zzIs.getMeasuredWidth());
            this.zzME = zzel.zzeT().zzc(this.mContext, this.zzIs.getMeasuredHeight());
        }
        zzc(i, i2 - i3, this.zzMD, this.zzME);
        this.zzIs.zzlv().zze(i, i2);
    }

    void zzhq() {
        this.zzMy = zzel.zzeT().zzb(this.zzwY, this.zzwY.widthPixels);
        this.zzMz = zzel.zzeT().zzb(this.zzwY, this.zzwY.heightPixels);
        Activity zzlr = this.zzIs.zzlr();
        if (zzlr == null || zzlr.getWindow() == null) {
            this.zzMB = this.zzMy;
            this.zzMC = this.zzMz;
            return;
        }
        int[] zzh = com.google.android.gms.ads.internal.zzw.zzcM().zzh(zzlr);
        this.zzMB = zzel.zzeT().zzb(this.zzwY, zzh[0]);
        this.zzMC = zzel.zzeT().zzb(this.zzwY, zzh[1]);
    }

    void zzhr() {
        if (!this.zzIs.zzbC().zzzz) {
            this.zzIs.measure(0, 0);
            return;
        }
        this.zzMD = this.zzMy;
        this.zzME = this.zzMz;
    }

    public void zzhs() {
        zzhp();
        zzhq();
        zzhr();
        zzhv();
        zzhw();
        zzhu();
        zzht();
    }

    void zzht() {
        if (zzpk.zzak(2)) {
            zzpk.zzbg("Dispatching Ready Event.");
        }
        zzaA(this.zzIs.zzly().zzba);
    }

    void zzhv() {
        zza(this.zzMy, this.zzMz, this.zzMB, this.zzMC, this.zzMx, this.zzMA);
    }

    void zzhw() {
        this.zzIs.zzb("onDeviceFeaturesReceived", zzhx().toJson());
    }
}
