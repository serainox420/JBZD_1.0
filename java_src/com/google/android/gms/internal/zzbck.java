package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbbs;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
/* loaded from: classes2.dex */
public final class zzbck extends zzbbs.zza {
    private final Context mContext;
    private final ExecutorService zzbJj;
    private final com.google.android.gms.tagmanager.zzbb zzbJl;
    private final Map<String, zzbbb> zzbLc;
    private final zzbbc zzbLd;

    zzbck(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, zzbbc zzbbcVar, ExecutorService executorService) {
        this.zzbLc = new HashMap(1);
        com.google.android.gms.common.internal.zzac.zzw(zzbbVar);
        this.zzbJl = zzbbVar;
        this.zzbLd = zzbbcVar;
        this.zzbJj = executorService;
        this.mContext = context;
    }

    public zzbck(Context context, com.google.android.gms.tagmanager.zzbb zzbbVar, com.google.android.gms.tagmanager.zzay zzayVar) {
        this(context, zzbbVar, new zzbbc(context, zzbbVar, zzayVar), zzbcl.zzcg(context));
    }

    @Override // com.google.android.gms.internal.zzbbs
    public void dispatch() {
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbck.3
            @Override // java.lang.Runnable
            public void run() {
                if (zzbck.this.zzbLc.isEmpty()) {
                    zzbbu.zzbh("TagManagerBackend dispatch called without loaded container.");
                    return;
                }
                for (zzbbb zzbbbVar : zzbck.this.zzbLc.values()) {
                    zzbbbVar.dispatch();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbbs
    public void zzSb() throws RemoteException {
        this.zzbLc.clear();
    }

    @Override // com.google.android.gms.internal.zzbbs
    public void zza(String str, Bundle bundle, String str2, long j, boolean z) throws RemoteException {
        final zzbbi zzbbiVar = new zzbbi(str, bundle, str2, new Date(j), z, this.zzbJl);
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbck.2
            @Override // java.lang.Runnable
            public void run() {
                if (zzbck.this.zzbLc.isEmpty()) {
                    zzbbu.e("TagManagerBackend emit called without loaded container.");
                    return;
                }
                for (zzbbb zzbbbVar : zzbck.this.zzbLc.values()) {
                    zzbbbVar.zza(zzbbiVar);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbbs
    public void zza(final String str, final String str2, final String str3, final zzbbr zzbbrVar) throws RemoteException {
        this.zzbJj.execute(new Runnable() { // from class: com.google.android.gms.internal.zzbck.1
            @Override // java.lang.Runnable
            public void run() {
                boolean z = true;
                try {
                    if (!zzbck.this.zzbLc.containsKey(str)) {
                        zzbck.this.zzbLc.put(str, zzbck.this.zzbLd.zzq(str, str2, str3));
                    }
                } catch (Throwable th) {
                    zzbbe.zza("Fail to load container: ", th, zzbck.this.mContext);
                    z = false;
                }
                try {
                    if (zzbbrVar == null) {
                        return;
                    }
                    zzbbrVar.zza(z, str);
                } catch (RemoteException e) {
                    zzbbe.zza("Error relaying callback: ", e, zzbck.this.mContext);
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbbs
    public void zzr(String str, String str2, String str3) throws RemoteException {
        zza(str, str2, str3, null);
    }
}
