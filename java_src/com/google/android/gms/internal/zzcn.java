package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzco;
import com.google.android.gms.internal.zzcp;
/* loaded from: classes2.dex */
public final class zzcn extends com.google.android.gms.dynamic.zzf<zzcp> {
    private static final zzcn zzrS = new zzcn();

    private zzcn() {
        super("com.google.android.gms.ads.adshield.AdShieldCreatorImpl");
    }

    public static zzco zzb(String str, Context context, boolean z) {
        zzco zzc;
        return (com.google.android.gms.common.zze.zzuY().isGooglePlayServicesAvailable(context) != 0 || (zzc = zzrS.zzc(str, context, z)) == null) ? new zzcm(str, context, z) : zzc;
    }

    private zzco zzc(String str, Context context, boolean z) {
        IObjectWrapper zzA = com.google.android.gms.dynamic.zzd.zzA(context);
        try {
            return zzco.zza.zzd(z ? zzbl(context).zza(str, zzA) : zzbl(context).zzb(str, zzA));
        } catch (RemoteException | zzf.zza e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzb */
    public zzcp zzc(IBinder iBinder) {
        return zzcp.zza.zze(iBinder);
    }
}
