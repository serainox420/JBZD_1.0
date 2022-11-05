package com.google.android.gms.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.zzf;
import com.google.android.gms.internal.zzhh;
import com.google.android.gms.internal.zzhi;
@zzme
/* loaded from: classes.dex */
public class zzht extends com.google.android.gms.dynamic.zzf<zzhi> {
    public zzht() {
        super("com.google.android.gms.ads.NativeAdViewDelegateCreatorImpl");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.dynamic.zzf
    /* renamed from: zzL */
    public zzhi zzc(IBinder iBinder) {
        return zzhi.zza.zzD(iBinder);
    }

    public zzhh zzb(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        try {
            return zzhh.zza.zzC(zzbl(context).zza(com.google.android.gms.dynamic.zzd.zzA(context), com.google.android.gms.dynamic.zzd.zzA(frameLayout), com.google.android.gms.dynamic.zzd.zzA(frameLayout2), 10298000));
        } catch (RemoteException | zzf.zza e) {
            zzqf.zzc("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }
}
