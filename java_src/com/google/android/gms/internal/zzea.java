package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzer;
import com.google.android.gms.internal.zzes;
@zzme
/* loaded from: classes.dex */
public final class zzea extends com.google.android.gms.dynamic.zzf<zzes> {
    public zzea() {
        super("com.google.android.gms.ads.AdLoaderBuilderCreatorImpl");
    }

    public zzer zza(Context context, String str, zzka zzkaVar) {
        try {
            return zzer.zza.zzo(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), str, zzkaVar, 10298000));
        } catch (RemoteException e) {
            zzqf.zzc("Could not create remote builder for AdLoader.", e);
            return null;
        } catch (zzf.zza e2) {
            zzqf.zzc("Could not create remote builder for AdLoader.", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzj */
    public zzes zzc(IBinder iBinder) {
        return zzes.zza.zzp(iBinder);
    }
}
