package com.google.android.gms.tagmanager;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbbs;
import com.google.android.gms.internal.zzbck;
import com.google.android.gms.tagmanager.zzbd;
@DynamiteApi
/* loaded from: classes2.dex */
public class TagManagerServiceProviderImpl extends zzbd.zza {
    private static volatile zzbck zzbIy;

    @Override // com.google.android.gms.tagmanager.zzbd
    public zzbbs getService(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException {
        zzbck zzbckVar = zzbIy;
        if (zzbckVar == null) {
            synchronized (TagManagerServiceProviderImpl.class) {
                zzbckVar = zzbIy;
                if (zzbckVar == null) {
                    zzbck zzbckVar2 = new zzbck((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zzbbVar, zzayVar);
                    zzbIy = zzbckVar2;
                    zzbckVar = zzbckVar2;
                }
            }
        }
        return zzbckVar;
    }
}
