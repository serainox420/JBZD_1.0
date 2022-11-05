package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzd;
import com.google.android.gms.flags.impl.zza;
import com.google.android.gms.internal.zzaqd;
@DynamiteApi
/* loaded from: classes2.dex */
public class FlagProviderImpl extends zzaqd.zza {
    private SharedPreferences zzBd;
    private boolean zztZ = false;

    @Override // com.google.android.gms.internal.zzaqd
    public boolean getBooleanFlagValue(String str, boolean z, int i) {
        return !this.zztZ ? z : zza.C0194zza.zza(this.zzBd, str, Boolean.valueOf(z)).booleanValue();
    }

    @Override // com.google.android.gms.internal.zzaqd
    public int getIntFlagValue(String str, int i, int i2) {
        return !this.zztZ ? i : zza.zzb.zza(this.zzBd, str, Integer.valueOf(i)).intValue();
    }

    @Override // com.google.android.gms.internal.zzaqd
    public long getLongFlagValue(String str, long j, int i) {
        return !this.zztZ ? j : zza.zzc.zza(this.zzBd, str, Long.valueOf(j)).longValue();
    }

    @Override // com.google.android.gms.internal.zzaqd
    public String getStringFlagValue(String str, String str2, int i) {
        return !this.zztZ ? str2 : zza.zzd.zza(this.zzBd, str, str2);
    }

    @Override // com.google.android.gms.internal.zzaqd
    public void init(IObjectWrapper iObjectWrapper) {
        Context context = (Context) zzd.zzF(iObjectWrapper);
        if (this.zztZ) {
            return;
        }
        try {
            this.zzBd = zzb.zzn(context.createPackageContext("com.google.android.gms", 0));
            this.zztZ = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }
}
