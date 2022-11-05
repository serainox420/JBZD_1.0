package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzjf;
import com.google.android.gms.internal.zzqx;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzjh implements zzjf {
    private final zzqw zzIs;

    public zzjh(Context context, zzqh zzqhVar, zzaw zzawVar, com.google.android.gms.ads.internal.zze zzeVar) {
        this.zzIs = com.google.android.gms.ads.internal.zzw.zzcN().zza(context, new zzeg(), false, false, zzawVar, zzqhVar, null, null, zzeVar);
        this.zzIs.getWebView().setWillNotDraw(true);
    }

    private void runOnUiThread(Runnable runnable) {
        if (zzel.zzeT().zzlj()) {
            runnable.run();
        } else {
            zzpo.zzXC.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.zzjf
    public void destroy() {
        this.zzIs.destroy();
    }

    @Override // com.google.android.gms.internal.zzjf
    public void zza(zzdx zzdxVar, com.google.android.gms.ads.internal.overlay.zzh zzhVar, zzhz zzhzVar, com.google.android.gms.ads.internal.overlay.zzq zzqVar, boolean z, zzif zzifVar, zzih zzihVar, com.google.android.gms.ads.internal.zzf zzfVar, zzkx zzkxVar) {
        this.zzIs.zzlv().zza(zzdxVar, zzhVar, zzhzVar, zzqVar, z, zzifVar, zzihVar, new com.google.android.gms.ads.internal.zzf(this.zzIs.getContext(), false), zzkxVar, null);
    }

    @Override // com.google.android.gms.internal.zzjf
    public void zza(final zzjf.zza zzaVar) {
        this.zzIs.zzlv().zza(new zzqx.zza(this) { // from class: com.google.android.gms.internal.zzjh.6
            @Override // com.google.android.gms.internal.zzqx.zza
            public void zza(zzqw zzqwVar, boolean z) {
                zzaVar.zzgN();
            }
        });
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(String str, zzid zzidVar) {
        this.zzIs.zzlv().zza(str, zzidVar);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zza(final String str, final JSONObject jSONObject) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzjh.1
            @Override // java.lang.Runnable
            public void run() {
                zzjh.this.zzIs.zza(str, jSONObject);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzjf
    public void zzam(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzjh.3
            @Override // java.lang.Runnable
            public void run() {
                zzjh.this.zzIs.loadData(format, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.zzjf
    public void zzan(final String str) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzjh.5
            @Override // java.lang.Runnable
            public void run() {
                zzjh.this.zzIs.loadUrl(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzjf
    public void zzao(final String str) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzjh.4
            @Override // java.lang.Runnable
            public void run() {
                zzjh.this.zzIs.loadData(str, "text/html", "UTF-8");
            }
        });
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, zzid zzidVar) {
        this.zzIs.zzlv().zzb(str, zzidVar);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzb(String str, JSONObject jSONObject) {
        this.zzIs.zzb(str, jSONObject);
    }

    @Override // com.google.android.gms.internal.zzjf
    public zzjk zzgM() {
        return new zzjl(this);
    }

    @Override // com.google.android.gms.internal.zzjj
    public void zzj(final String str, final String str2) {
        runOnUiThread(new Runnable() { // from class: com.google.android.gms.internal.zzjh.2
            @Override // java.lang.Runnable
            public void run() {
                zzjh.this.zzIs.zzj(str, str2);
            }
        });
    }
}
