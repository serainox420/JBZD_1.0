package com.google.android.gms.internal;

import com.google.android.gms.internal.zzji;
import java.util.Map;
import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public final class zzne {
    private String zzOV;
    private String zzTK;
    zzji.zzc zzTM;
    private final Object zzrJ = new Object();
    private zzqj<zznh> zzTL = new zzqj<>();
    public final zzid zzTN = new zzid() { // from class: com.google.android.gms.internal.zzne.1
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            synchronized (zzne.this.zzrJ) {
                if (zzne.this.zzTL.isDone()) {
                    return;
                }
                if (!zzne.this.zzOV.equals(map.get("request_id"))) {
                    return;
                }
                zznh zznhVar = new zznh(1, map);
                String valueOf = String.valueOf(zznhVar.getType());
                String valueOf2 = String.valueOf(zznhVar.zzjx());
                zzpk.zzbh(new StringBuilder(String.valueOf(valueOf).length() + 24 + String.valueOf(valueOf2).length()).append("Invalid ").append(valueOf).append(" request error: ").append(valueOf2).toString());
                zzne.this.zzTL.zzh(zznhVar);
            }
        }
    };
    public final zzid zzTO = new zzid() { // from class: com.google.android.gms.internal.zzne.2
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            synchronized (zzne.this.zzrJ) {
                if (zzne.this.zzTL.isDone()) {
                    return;
                }
                zznh zznhVar = new zznh(-2, map);
                if (!zzne.this.zzOV.equals(zznhVar.getRequestId())) {
                    return;
                }
                String url = zznhVar.getUrl();
                if (url == null) {
                    zzpk.zzbh("URL missing in loadAdUrl GMSG.");
                    return;
                }
                if (url.contains("%40mediation_adapters%40")) {
                    String replaceAll = url.replaceAll("%40mediation_adapters%40", zzpi.zzc(zzqwVar.getContext(), map.get("check_adapters"), zzne.this.zzTK));
                    zznhVar.setUrl(replaceAll);
                    String valueOf = String.valueOf(replaceAll);
                    zzpk.v(valueOf.length() != 0 ? "Ad request URL modified to ".concat(valueOf) : new String("Ad request URL modified to "));
                }
                zzne.this.zzTL.zzh(zznhVar);
            }
        }
    };
    public final zzid zzTP = new zzid() { // from class: com.google.android.gms.internal.zzne.3
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            synchronized (zzne.this.zzrJ) {
                if (zzne.this.zzTL.isDone()) {
                    return;
                }
                zznh zznhVar = new zznh(-2, map);
                if (!zzne.this.zzOV.equals(zznhVar.getRequestId())) {
                    return;
                }
                zzne.this.zzTL.zzh(zznhVar);
            }
        }
    };

    public zzne(String str, String str2) {
        this.zzTK = str2;
        this.zzOV = str;
    }

    public void zzb(zzji.zzc zzcVar) {
        this.zzTM = zzcVar;
    }

    public zzji.zzc zzjv() {
        return this.zzTM;
    }

    public Future<zznh> zzjw() {
        return this.zzTL;
    }
}
