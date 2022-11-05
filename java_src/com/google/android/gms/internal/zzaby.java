package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2.dex */
public class zzaby {
    public static final Status zzaDu = new Status(8, "The connection to Google Play services was lost");
    private static final zzaaf<?>[] zzaDv = new zzaaf[0];
    private final Map<Api.zzc<?>, Api.zze> zzaBQ;
    final Set<zzaaf<?>> zzaDw = Collections.synchronizedSet(Collections.newSetFromMap(new WeakHashMap()));
    private final zzb zzaDx = new zzb() { // from class: com.google.android.gms.internal.zzaby.1
        @Override // com.google.android.gms.internal.zzaby.zzb
        public void zzc(zzaaf<?> zzaafVar) {
            zzaby.this.zzaDw.remove(zzaafVar);
            if (zzaafVar.zzvr() != null) {
                zzaby.zza(zzaby.this);
            }
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza implements IBinder.DeathRecipient, zzb {
        private final WeakReference<com.google.android.gms.common.api.zzf> zzaDA;
        private final WeakReference<IBinder> zzaDB;
        private final WeakReference<zzaaf<?>> zzaDz;

        private zza(zzaaf<?> zzaafVar, com.google.android.gms.common.api.zzf zzfVar, IBinder iBinder) {
            this.zzaDA = new WeakReference<>(zzfVar);
            this.zzaDz = new WeakReference<>(zzaafVar);
            this.zzaDB = new WeakReference<>(iBinder);
        }

        private void zzxe() {
            zzaaf<?> zzaafVar = this.zzaDz.get();
            com.google.android.gms.common.api.zzf zzfVar = this.zzaDA.get();
            if (zzfVar != null && zzaafVar != null) {
                zzfVar.remove(zzaafVar.zzvr().intValue());
            }
            IBinder iBinder = this.zzaDB.get();
            if (iBinder != null) {
                iBinder.unlinkToDeath(this, 0);
            }
        }

        @Override // android.os.IBinder.DeathRecipient
        public void binderDied() {
            zzxe();
        }

        @Override // com.google.android.gms.internal.zzaby.zzb
        public void zzc(zzaaf<?> zzaafVar) {
            zzxe();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzb {
        void zzc(zzaaf<?> zzaafVar);
    }

    public zzaby(Map<Api.zzc<?>, Api.zze> map) {
        this.zzaBQ = map;
    }

    static /* synthetic */ com.google.android.gms.common.api.zzf zza(zzaby zzabyVar) {
        return null;
    }

    private static void zza(zzaaf<?> zzaafVar, com.google.android.gms.common.api.zzf zzfVar, IBinder iBinder) {
        if (zzaafVar.isReady()) {
            zzaafVar.zza(new zza(zzaafVar, zzfVar, iBinder));
        } else if (iBinder == null || !iBinder.isBinderAlive()) {
            zzaafVar.zza((zzb) null);
            zzaafVar.cancel();
            zzfVar.remove(zzaafVar.zzvr().intValue());
        } else {
            zza zzaVar = new zza(zzaafVar, zzfVar, iBinder);
            zzaafVar.zza(zzaVar);
            try {
                iBinder.linkToDeath(zzaVar, 0);
            } catch (RemoteException e) {
                zzaafVar.cancel();
                zzfVar.remove(zzaafVar.zzvr().intValue());
            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.append(" mUnconsumedApiCalls.size()=").println(this.zzaDw.size());
    }

    public void release() {
        zzaaf[] zzaafVarArr;
        for (zzaaf zzaafVar : (zzaaf[]) this.zzaDw.toArray(zzaDv)) {
            zzaafVar.zza((zzb) null);
            if (zzaafVar.zzvr() != null) {
                zzaafVar.zzvH();
                zza(zzaafVar, null, this.zzaBQ.get(((zzaad.zza) zzaafVar).zzvg()).zzvi());
                this.zzaDw.remove(zzaafVar);
            } else if (zzaafVar.zzvF()) {
                this.zzaDw.remove(zzaafVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzaaf<? extends Result> zzaafVar) {
        this.zzaDw.add(zzaafVar);
        zzaafVar.zza(this.zzaDx);
    }

    public void zzxd() {
        for (zzaaf zzaafVar : (zzaaf[]) this.zzaDw.toArray(zzaDv)) {
            zzaafVar.zzC(zzaDu);
        }
    }
}
