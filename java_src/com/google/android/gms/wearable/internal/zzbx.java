package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.wearable.internal.zzbw;
import com.google.android.gms.wearable.internal.zzcw;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzbx<T> {
    private final Map<T, zzcy<T>> zzaWg = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza<T> extends zzcw.zzb<Status> {
        private WeakReference<Map<T, zzcy<T>>> zzbUE;
        private WeakReference<T> zzbUF;

        zza(Map<T, zzcy<T>> map, T t, zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
            this.zzbUE = new WeakReference<>(map);
            this.zzbUF = new WeakReference<>(t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(Status status) {
            Map<T, zzcy<T>> map = this.zzbUE.get();
            T t = this.zzbUF.get();
            if (!status.getStatus().isSuccess() && map != null && t != null) {
                synchronized (map) {
                    zzcy<T> remove = map.remove(t);
                    if (remove != null) {
                        remove.clear();
                    }
                }
            }
            zzaa(status);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb<T> extends zzcw.zzb<Status> {
        private WeakReference<Map<T, zzcy<T>>> zzbUE;
        private WeakReference<T> zzbUF;

        zzb(Map<T, zzcy<T>> map, T t, zzaad.zzb<Status> zzbVar) {
            super(zzbVar);
            this.zzbUE = new WeakReference<>(map);
            this.zzbUF = new WeakReference<>(t);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.wearable.internal.zza, com.google.android.gms.wearable.internal.zzbu
        public void zza(Status status) {
            Map<T, zzcy<T>> map = this.zzbUE.get();
            T t = this.zzbUF.get();
            if (status.getStatus().getStatusCode() == 4002 && map != null && t != null) {
                synchronized (map) {
                    zzcy<T> remove = map.remove(t);
                    if (remove != null) {
                        remove.clear();
                    }
                }
            }
            zzaa(status);
        }
    }

    public void zza(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, T t) throws RemoteException {
        synchronized (this.zzaWg) {
            zzcy<T> remove = this.zzaWg.remove(t);
            if (remove == null) {
                zzbVar.setResult(new Status(4002));
                return;
            }
            remove.clear();
            ((zzbw) zzcxVar.zzxD()).zza(new zzb(this.zzaWg, t, zzbVar), new zzck(remove));
        }
    }

    public void zza(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, T t, zzcy<T> zzcyVar) throws RemoteException {
        synchronized (this.zzaWg) {
            if (this.zzaWg.get(t) != null) {
                zzbVar.setResult(new Status(4001));
                return;
            }
            this.zzaWg.put(t, zzcyVar);
            try {
                ((zzbw) zzcxVar.zzxD()).zza(new zza(this.zzaWg, t, zzbVar), new zzc(zzcyVar));
            } catch (RemoteException e) {
                this.zzaWg.remove(t);
                throw e;
            }
        }
    }

    public void zzfE(IBinder iBinder) {
        synchronized (this.zzaWg) {
            zzbw zzfD = zzbw.zza.zzfD(iBinder);
            zzcw.zzo zzoVar = new zzcw.zzo();
            for (Map.Entry<T, zzcy<T>> entry : this.zzaWg.entrySet()) {
                zzcy<T> value = entry.getValue();
                try {
                    zzfD.zza(zzoVar, new zzc(value));
                    if (Log.isLoggable("WearableClient", 2)) {
                        String valueOf = String.valueOf(entry.getKey());
                        String valueOf2 = String.valueOf(value);
                        Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf).length() + 27 + String.valueOf(valueOf2).length()).append("onPostInitHandler: added: ").append(valueOf).append("/").append(valueOf2).toString());
                    }
                } catch (RemoteException e) {
                    String valueOf3 = String.valueOf(entry.getKey());
                    String valueOf4 = String.valueOf(value);
                    Log.d("WearableClient", new StringBuilder(String.valueOf(valueOf3).length() + 32 + String.valueOf(valueOf4).length()).append("onPostInitHandler: Didn't add: ").append(valueOf3).append("/").append(valueOf4).toString());
                }
            }
        }
    }
}
