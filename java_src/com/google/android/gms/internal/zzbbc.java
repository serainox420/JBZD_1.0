package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
public class zzbbc {
    private final Context mContext;
    private final ExecutorService zzFB;
    private final zzbib zzbJi;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final ScheduledExecutorService zzbJt;
    private final com.google.android.gms.tagmanager.zzay zzbJu;

    public zzbbc(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar) {
        this(context, zzbbVar, zzayVar, new zzbib(context), zzbcl.zzcg(context), zzbcl.zzSw());
    }

    zzbbc(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar, zzbib zzbibVar, ExecutorService executorService, ScheduledExecutorService scheduledExecutorService) {
        this.mContext = ((Context) com.google.android.gms.common.internal.zzac.zzw(context)).getApplicationContext();
        this.zzbJl = (com.google.android.gms.tagmanager.zzbb) com.google.android.gms.common.internal.zzac.zzw(zzbbVar);
        this.zzbJu = (com.google.android.gms.tagmanager.zzay) com.google.android.gms.common.internal.zzac.zzw(zzayVar);
        this.zzbJi = (zzbib) com.google.android.gms.common.internal.zzac.zzw(zzbibVar);
        this.zzFB = (ExecutorService) com.google.android.gms.common.internal.zzac.zzw(executorService);
        this.zzbJt = (ScheduledExecutorService) com.google.android.gms.common.internal.zzac.zzw(scheduledExecutorService);
    }

    public zzbbb zzq(String str, String str2, String str3) {
        return new zzbbb(this.mContext, str, str2, str3, new zzbcc(this.mContext, this.zzbJl, this.zzbJu, str), this.zzbJi, this.zzFB, this.zzbJt, this.zzbJl, com.google.android.gms.common.util.zzi.zzzc(), new zzbbd(this.mContext, str));
    }
}
