package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzet;
import com.google.android.gms.internal.zzeu;
@zzme
/* loaded from: classes.dex */
public class zzeb extends com.google.android.gms.dynamic.zzf<zzeu> {
    public zzeb() {
        super("com.google.android.gms.ads.AdManagerCreatorImpl");
    }

    public zzet zza(Context context, zzeg zzegVar, String str, zzka zzkaVar, int i) {
        try {
            return zzet.zza.zzq(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), zzegVar, str, zzkaVar, 10298000, i));
        } catch (RemoteException | zzf.zza e) {
            zzqf.zza("Could not create remote AdManager.", e);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzk */
    public zzeu zzc(IBinder iBinder) {
        return zzeu.zza.zzr(iBinder);
    }
}
