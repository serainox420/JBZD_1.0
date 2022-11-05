package com.google.android.gms.internal;

import java.util.Map;
import org.json.JSONObject;
@zzme
/* loaded from: classes.dex */
public class zzcv implements zzcx {
    private final zzct zzwG;
    private final zzjj zzwH;
    private final zzid zzwI = new zzid() { // from class: com.google.android.gms.internal.zzcv.1
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzcv.this.zzwG.zzb(zzqwVar, map);
        }
    };
    private final zzid zzwJ = new zzid() { // from class: com.google.android.gms.internal.zzcv.2
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzcv.this.zzwG.zza(zzcv.this, map);
        }
    };
    private final zzid zzwK = new zzid() { // from class: com.google.android.gms.internal.zzcv.3
        @Override // com.google.android.gms.internal.zzid
        public void zza(zzqw zzqwVar, Map<String, String> map) {
            zzcv.this.zzwG.zzc(map);
        }
    };

    public zzcv(zzct zzctVar, zzjj zzjjVar) {
        this.zzwG = zzctVar;
        this.zzwH = zzjjVar;
        zzc(this.zzwH);
        String valueOf = String.valueOf(this.zzwG.zzdR().zzdC());
        zzpk.zzbf(valueOf.length() != 0 ? "Custom JS tracking ad unit: ".concat(valueOf) : new String("Custom JS tracking ad unit: "));
    }

    void zzc(zzjj zzjjVar) {
        zzjjVar.zza("/updateActiveView", this.zzwI);
        zzjjVar.zza("/untrackActiveViewUnit", this.zzwJ);
        zzjjVar.zza("/visibilityChanged", this.zzwK);
    }

    @Override // com.google.android.gms.internal.zzcx
    public void zzc(JSONObject jSONObject, boolean z) {
        if (!z) {
            this.zzwH.zza("AFMA_updateActiveView", jSONObject);
        } else {
            this.zzwG.zzb(this);
        }
    }

    void zzd(zzjj zzjjVar) {
        zzjjVar.zzb("/visibilityChanged", this.zzwK);
        zzjjVar.zzb("/untrackActiveViewUnit", this.zzwJ);
        zzjjVar.zzb("/updateActiveView", this.zzwI);
    }

    @Override // com.google.android.gms.internal.zzcx
    public boolean zzdV() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzcx
    public void zzdW() {
        zzd(this.zzwH);
    }
}
