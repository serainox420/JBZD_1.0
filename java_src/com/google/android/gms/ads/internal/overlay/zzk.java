package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqw;
@zzme
/* loaded from: classes.dex */
public abstract class zzk {
    public abstract zzj zza(Context context, zzqw zzqwVar, int i, boolean z, zzgl zzglVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzh(zzqw zzqwVar) {
        return zzqwVar.zzbC().zzzz;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean zzs(Context context) {
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        com.google.android.gms.common.util.zzt.zzzg();
        return applicationInfo == null || applicationInfo.targetSdkVersion >= 11;
    }
}
