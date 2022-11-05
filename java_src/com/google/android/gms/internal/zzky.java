package com.google.android.gms.internal;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzkz;
import com.google.android.gms.internal.zzla;
@zzme
/* loaded from: classes.dex */
public final class zzky extends com.google.android.gms.dynamic.zzf<zzla> {
    public zzky() {
        super("com.google.android.gms.ads.AdOverlayCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzS */
    public zzla zzc(IBinder iBinder) {
        return zzla.zza.zzU(iBinder);
    }

    public zzkz zzf(Activity activity) {
        try {
            return zzkz.zza.zzT(zzbl(activity).zzp(com.google.android.gms.dynamic.zzd.zzA(activity)));
        } catch (RemoteException e) {
            zzqf.zzc("Could not create remote AdOverlay.", e);
            return null;
        } catch (zzf.zza e2) {
            zzqf.zzc("Could not create remote AdOverlay.", e2);
            return null;
        }
    }
}
