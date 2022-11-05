package com.google.android.gms.internal;

import com.google.android.gms.internal.zzn;
import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class zzac extends zzl<String> {
    private final zzn.zzb<String> zzaG;

    public zzac(int i, String str, zzn.zzb<String> zzbVar, zzn.zza zzaVar) {
        super(i, str, zzaVar);
        this.zzaG = zzbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzl
    public zzn<String> zza(zzj zzjVar) {
        String str;
        try {
            str = new String(zzjVar.data, zzy.zza(zzjVar.zzz));
        } catch (UnsupportedEncodingException e) {
            str = new String(zzjVar.data);
        }
        return zzn.zza(str, zzy.zzb(zzjVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzl
    /* renamed from: zzi */
    public void zza(String str) {
        this.zzaG.zzb(str);
    }
}
