package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zznu;
import com.google.android.gms.internal.zznv;
@zzme
/* loaded from: classes.dex */
public class zzny extends com.google.android.gms.dynamic.zzf<zznv> {
    public zzny() {
        super("com.google.android.gms.ads.reward.RewardedVideoAdCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzak */
    public zznv zzc(IBinder iBinder) {
        return zznv.zza.zzai(iBinder);
    }

    public zznu zzb(Context context, zzka zzkaVar) {
        try {
            return zznu.zza.zzah(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), zzkaVar, 10298000));
        } catch (RemoteException | zzf.zza e) {
            zzqf.zzc("Could not get remote RewardedVideoAd.", e);
            return null;
        }
    }
}
