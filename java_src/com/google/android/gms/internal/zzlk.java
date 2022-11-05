package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzlf;
import com.google.android.gms.internal.zzlg;
@zzme
/* loaded from: classes.dex */
public final class zzlk extends com.google.android.gms.dynamic.zzf<zzlg> {
    public zzlk() {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzac */
    public zzlg zzc(IBinder iBinder) {
        return zzlg.zza.zzZ(iBinder);
    }

    public zzlf zzg(Activity activity) {
        try {
            return zzlf.zza.zzY(zzbl(activity).zzq(com.google.android.gms.dynamic.zzd.zzA(activity)));
        } catch (RemoteException e) {
            zzqf.zzc("Could not create remote InAppPurchaseManager.", e);
            return null;
        } catch (zzf.zza e2) {
            zzqf.zzc("Could not create remote InAppPurchaseManager.", e2);
            return null;
        }
    }
}
