package com.google.android.gms.internal;
@zzme
/* loaded from: classes.dex */
public class zziq extends zzpj {
    final zzqw zzIs;
    final zzis zzIw;
    private final String zzIx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zziq(zzqw zzqwVar, zzis zzisVar, String str) {
        this.zzIs = zzqwVar;
        this.zzIw = zzisVar;
        this.zzIx = str;
        com.google.android.gms.ads.internal.zzw.zzdj().zza(this);
    }

    @Override // com.google.android.gms.internal.zzpj
    public void onStop() {
        this.zzIw.abort();
    }

    @Override // com.google.android.gms.internal.zzpj
    public void zzco() {
        try {
            this.zzIw.zzad(this.zzIx);
        } finally {
            zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zziq.1
                @Override // java.lang.Runnable
                public void run() {
                    com.google.android.gms.ads.internal.zzw.zzdj().zzb(zziq.this);
                }
            });
        }
    }
}
