package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzbbu;
import com.google.android.gms.internal.zzbby;
import com.google.android.gms.internal.zzbcj;
import com.google.android.gms.tagmanager.zzbc;
@DynamiteApi
/* loaded from: classes.dex */
public class TagManagerApiImpl extends zzbc.zza {
    private zzbcj zzbIx;

    @Override // com.google.android.gms.tagmanager.zzbc
    public void initialize(IObjectWrapper iObjectWrapper, zzbb zzbbVar, zzay zzayVar) throws RemoteException {
        this.zzbIx = zzbcj.zza((Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper), zzbbVar, zzayVar);
        this.zzbIx.initialize();
    }

    @Override // com.google.android.gms.tagmanager.zzbc
    @Deprecated
    public void preview(Intent intent, IObjectWrapper iObjectWrapper) {
        zzbbu.zzbh("Deprecated. Please use previewIntent instead.");
    }

    @Override // com.google.android.gms.tagmanager.zzbc
    public void previewIntent(Intent intent, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, zzbb zzbbVar, zzay zzayVar) {
        Context context = (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper);
        this.zzbIx = zzbcj.zza(context, zzbbVar, zzayVar);
        new zzbby(intent, context, (Context) com.google.android.gms.dynamic.zzd.zzF(iObjectWrapper2), this.zzbIx).zzSf();
    }
}
