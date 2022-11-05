package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzu extends zzam {
    private final zza zzbFA;
    private static final String ID = com.google.android.gms.internal.zzah.FUNCTION_CALL.toString();
    private static final String zzbFz = com.google.android.gms.internal.zzai.FUNCTION_CALL_NAME.toString();
    private static final String zzbEO = com.google.android.gms.internal.zzai.ADDITIONAL_PARAMS.toString();

    /* loaded from: classes2.dex */
    public interface zza {
        Object zze(String str, Map<String, Object> map);
    }

    public zzu(zza zzaVar) {
        super(ID, zzbFz);
        this.zzbFA = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String zze = zzdl.zze(map.get(zzbFz));
        HashMap hashMap = new HashMap();
        zzak.zza zzaVar = map.get(zzbEO);
        if (zzaVar != null) {
            Object zzj = zzdl.zzj(zzaVar);
            if (!(zzj instanceof Map)) {
                zzbo.zzbh("FunctionCallMacro: expected ADDITIONAL_PARAMS to be a map.");
                return zzdl.zzRR();
            }
            for (Map.Entry entry : ((Map) zzj).entrySet()) {
                hashMap.put(entry.getKey().toString(), entry.getValue());
            }
        }
        try {
            return zzdl.zzR(this.zzbFA.zze(zze, hashMap));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            zzbo.zzbh(new StringBuilder(String.valueOf(zze).length() + 34 + String.valueOf(valueOf).length()).append("Custom macro/tag ").append(zze).append(" threw exception ").append(valueOf).toString());
            return zzdl.zzRR();
        }
    }
}
