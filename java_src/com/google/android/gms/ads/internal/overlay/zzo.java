package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import com.google.android.gms.internal.zzgl;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzqw;
@zzme
/* loaded from: classes.dex */
public class zzo extends zzk {
    @Override // com.google.android.gms.ads.internal.overlay.zzk
    public zzj zza(Context context, zzqw zzqwVar, int i, boolean z, zzgl zzglVar) {
        if (!zzs(context)) {
            return null;
        }
        return new zzd(context, z, zzh(zzqwVar), new zzz(context, zzqwVar.zzly(), zzqwVar.getRequestId(), zzglVar, zzqwVar.zzlE()));
    }
}
