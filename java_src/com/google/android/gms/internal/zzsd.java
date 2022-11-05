package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.analytics.GoogleAnalytics;
/* loaded from: classes2.dex */
public class zzsd {
    private final Context zzaeg;
    private final Context zzwi;

    public zzsd(Context context) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        Context applicationContext = context.getApplicationContext();
        com.google.android.gms.common.internal.zzac.zzb(applicationContext, "Application context can't be null");
        this.zzwi = applicationContext;
        this.zzaeg = applicationContext;
    }

    public Context getApplicationContext() {
        return this.zzwi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzss zza(zzsc zzscVar) {
        return new zzss(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.android.gms.analytics.zzh zzao(Context context) {
        return com.google.android.gms.analytics.zzh.zzam(context);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsh zzb(zzsc zzscVar) {
        return new zzsh(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzrx zzc(zzsc zzscVar) {
        return new zzrx(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsk zzd(zzsc zzscVar) {
        return new zzsk(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zztn zze(zzsc zzscVar) {
        return new zztn(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zztd zzf(zzsc zzscVar) {
        return new zztd(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsp zzg(zzsc zzscVar) {
        return new zzsp(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.google.android.gms.common.util.zze zzh(zzsc zzscVar) {
        return com.google.android.gms.common.util.zzi.zzzc();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public GoogleAnalytics zzi(zzsc zzscVar) {
        return new GoogleAnalytics(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzsi zzj(zzsc zzscVar) {
        return new zzsi(zzscVar, this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzte zzk(zzsc zzscVar) {
        return new zzte(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzry zzl(zzsc zzscVar) {
        return new zzry(zzscVar, this);
    }

    public zzsg zzm(zzsc zzscVar) {
        return new zzsg(zzscVar);
    }

    public zztf zzn(zzsc zzscVar) {
        return new zztf(zzscVar);
    }

    public zzsf zzo(zzsc zzscVar) {
        return new zzsf(zzscVar);
    }

    public Context zzod() {
        return this.zzaeg;
    }

    public zzst zzp(zzsc zzscVar) {
        return new zzst(zzscVar);
    }

    public zztg zzq(zzsc zzscVar) {
        return new zztg(zzscVar);
    }
}
