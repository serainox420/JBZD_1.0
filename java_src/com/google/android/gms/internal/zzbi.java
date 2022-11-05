package com.google.android.gms.internal;

import android.provider.Settings;
import com.google.android.gms.internal.zzag;
import java.lang.reflect.InvocationTargetException;
/* loaded from: classes2.dex */
public class zzbi extends zzca {
    public zzbi(zzbd zzbdVar, String str, String str2, zzag.zza zzaVar, int i, int i2) {
        super(zzbdVar, str, str2, zzaVar, i, i2);
    }

    @Override // com.google.android.gms.internal.zzca
    protected void zzbd() throws IllegalAccessException, InvocationTargetException {
        this.zzqV.zzbL = 2;
        try {
            this.zzqV.zzbL = Integer.valueOf(((Boolean) this.zzre.invoke(null, this.zzpz.getApplicationContext())).booleanValue() ? 1 : 0);
        } catch (InvocationTargetException e) {
            if (e.getTargetException() instanceof Settings.SettingNotFoundException) {
                return;
            }
            throw e;
        }
    }
}
