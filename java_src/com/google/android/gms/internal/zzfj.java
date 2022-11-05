package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzey;
import com.google.android.gms.internal.zzez;
@zzme
/* loaded from: classes.dex */
public class zzfj extends com.google.android.gms.dynamic.zzf<zzez> {
    public zzfj() {
        super("com.google.android.gms.ads.MobileAdsSettingManagerCreatorImpl");
    }

    public zzey zzm(Context context) {
        try {
            return zzey.zza.zzu(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), 10298000));
        } catch (RemoteException e) {
            zzqf.zzc("Could not get remote MobileAdsSettingManager.", e);
            return null;
        } catch (zzf.zza e2) {
            zzqf.zzc("Could not get remote MobileAdsSettingManager.", e2);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzy */
    public zzez zzc(IBinder iBinder) {
        return zzez.zza.zzv(iBinder);
    }
}
