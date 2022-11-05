package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzbkv;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;
/* loaded from: classes2.dex */
public class zzbkz extends com.google.android.gms.dynamic.zzf<zzbkv> {
    private static zzbkz zzbSt;

    protected zzbkz() {
        super("com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl");
    }

    private static zzbkz zzUb() {
        if (zzbSt == null) {
            zzbSt = new zzbkz();
        }
        return zzbSt;
    }

    public static zzbks zza(Activity activity, com.google.android.gms.dynamic.zzc zzcVar, WalletFragmentOptions walletFragmentOptions, zzbkt zzbktVar) throws GooglePlayServicesNotAvailableException {
        int isGooglePlayServicesAvailable = GooglePlayServicesUtil.isGooglePlayServicesAvailable(activity);
        if (isGooglePlayServicesAvailable != 0) {
            throw new GooglePlayServicesNotAvailableException(isGooglePlayServicesAvailable);
        }
        try {
            return zzUb().zzbl(activity).zza(com.google.android.gms.dynamic.zzd.zzA(activity), zzcVar, walletFragmentOptions, zzbktVar);
        } catch (RemoteException e) {
            throw new RuntimeException(e);
        } catch (zzf.zza e2) {
            throw new RuntimeException(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzfz */
    public zzbkv zzc(IBinder iBinder) {
        return zzbkv.zza.zzfw(iBinder);
    }
}
