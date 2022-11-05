package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzmk;
import com.google.android.gms.internal.zzpb;
@zzme
/* loaded from: classes.dex */
public class zzmf {

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzpb.zza zzaVar);
    }

    public zzpj zza(Context context, zzmk.zza zzaVar, zza zzaVar2) {
        zzpj zzmxVar = zzaVar.zzRy.extras.getBundle("sdk_less_server_data") != null ? new zzmx(context, zzaVar, zzaVar2) : new zzmg(context, zzaVar, zzaVar2);
        zzmxVar.zziP();
        return zzmxVar;
    }
}
