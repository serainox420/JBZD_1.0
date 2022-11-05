package com.google.android.gms.internal;

import com.google.android.gms.internal.zzji;
import com.google.android.gms.internal.zzqp;
import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzcw implements zzcx {
    private final zzct zzwG;
    private zzji.zzc zzwM;
    private boolean zzwN;
    private final zzid zzwI = new zzid() { // from class: com.google.android.gms.internal.zzcw.5
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (!zzcw.this.zzwG.zzb(map)) {
                return;
            }
            zzcw.this.zzwG.zzb(zzqwVar, map);
        }
    };
    private final zzid zzwJ = new zzid() { // from class: com.google.android.gms.internal.zzcw.6
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (!zzcw.this.zzwG.zzb(map)) {
                return;
            }
            zzcw.this.zzwG.zza(zzcw.this, map);
        }
    };
    private final zzid zzwK = new zzid() { // from class: com.google.android.gms.internal.zzcw.7
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (!zzcw.this.zzwG.zzb(map)) {
                return;
            }
            zzcw.this.zzwG.zzc(map);
        }
    };
    private final zzid zzwO = new zzid() { // from class: com.google.android.gms.internal.zzcw.8
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            if (!zzcw.this.zzwG.zzb(map)) {
                return;
            }
            zzic.zzHS.zza(zzqwVar, map);
        }
    };

    public zzcw(zzct zzctVar, zzji zzjiVar) {
        this.zzwG = zzctVar;
        this.zzwM = zzjiVar.zzgO();
        this.zzwM.zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.internal.zzcw.1
            @Override // com.google.android.gms.internal.zzqp.zzc
            /* renamed from: zzb */
            public void zzd(zzjj zzjjVar) {
                zzcw.this.zzwN = true;
                zzcw.this.zzc(zzjjVar);
            }
        }, new zzqp.zza() { // from class: com.google.android.gms.internal.zzcw.2
            @Override // com.google.android.gms.internal.zzqp.zza
            public void run() {
                zzcw.this.zzwG.zzb(zzcw.this);
            }
        });
        String valueOf = String.valueOf(this.zzwG.zzdR().zzdC());
        zzpk.zzbf(valueOf.length() != 0 ? "Core JS tracking ad unit: ".concat(valueOf) : new String("Core JS tracking ad unit: "));
    }

    void zzc(zzjj zzjjVar) {
        zzjjVar.zza("/updateActiveView", this.zzwI);
        zzjjVar.zza("/untrackActiveViewUnit", this.zzwJ);
        zzjjVar.zza("/visibilityChanged", this.zzwK);
        if (com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
            zzjjVar.zza("/logScionEvent", this.zzwO);
        }
    }

    @Override // com.google.android.gms.internal.zzcx
    public void zzc(final JSONObject jSONObject, boolean z) {
        this.zzwM.zza(new zzqp.zzc<zzjj>(this) { // from class: com.google.android.gms.internal.zzcw.3
            @Override // com.google.android.gms.internal.zzqp.zzc
            /* renamed from: zzb */
            public void zzd(zzjj zzjjVar) {
                zzjjVar.zza("AFMA_updateActiveView", jSONObject);
            }
        }, new zzqp.zzb());
    }

    void zzd(zzjj zzjjVar) {
        zzjjVar.zzb("/visibilityChanged", this.zzwK);
        zzjjVar.zzb("/untrackActiveViewUnit", this.zzwJ);
        zzjjVar.zzb("/updateActiveView", this.zzwI);
        if (com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
            zzjjVar.zzb("/logScionEvent", this.zzwO);
        }
    }

    @Override // com.google.android.gms.internal.zzcx
    public boolean zzdV() {
        return this.zzwN;
    }

    @Override // com.google.android.gms.internal.zzcx
    public void zzdW() {
        this.zzwM.zza(new zzqp.zzc<zzjj>() { // from class: com.google.android.gms.internal.zzcw.4
            @Override // com.google.android.gms.internal.zzqp.zzc
            /* renamed from: zzb */
            public void zzd(zzjj zzjjVar) {
                zzcw.this.zzd(zzjjVar);
            }
        }, new zzqp.zzb());
        this.zzwM.release();
    }
}
