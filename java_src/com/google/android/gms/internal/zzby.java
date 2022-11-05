package com.google.android.gms.internal;

import android.view.View;
import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzby extends zzca {
    private final View zzrb;

    public zzby(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2, View view) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
        this.zzrb = view;
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        if (this.zzrb != null) {
            zzbg zzbgVar = new zzbg((String) this.zzre.invoke(null, this.zzrb));
            synchronized (this.zzqV) {
                this.zzqV.zzbU = new zzag.zza.zzb();
                this.zzqV.zzbU.zzcn = zzbgVar.zzqQ;
            }
        }
    }
}
