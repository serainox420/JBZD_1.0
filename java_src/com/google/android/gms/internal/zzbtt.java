package com.google.android.gms.internal;

import android.app.Activity;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbtt {
    private static final zzbtt zzcox = new zzbtt();
    private final Map<Object, zza> zzcoy = new HashMap();
    private final Object zzcoz = new Object();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza {
        private final Activity mActivity;
        private final Object zzcoA;
        private final Runnable zzw;

        public zza(Activity activity, Runnable runnable, Object obj) {
            this.mActivity = activity;
            this.zzw = runnable;
            this.zzcoA = obj;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof zza)) {
                return false;
            }
            zza zzaVar = (zza) obj;
            return zzaVar.zzcoA.equals(this.zzcoA) && zzaVar.zzw == this.zzw && zzaVar.mActivity == this.mActivity;
        }

        public Activity getActivity() {
            return this.mActivity;
        }

        public int hashCode() {
            return this.zzcoA.hashCode();
        }

        public Runnable zzUL() {
            return this.zzw;
        }

        public Object zzacU() {
            return this.zzcoA;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzabe {
        private final List<zza> mListeners;

        private zzb(zzabf zzabfVar) {
            super(zzabfVar);
            this.mListeners = new ArrayList();
            this.zzaCR.zza("StorageOnStopCallback", this);
        }

        public static zzb zzx(Activity activity) {
            zzabf zzc = zzc(new zzabd(activity));
            zzb zzbVar = (zzb) zzc.zza("StorageOnStopCallback", zzb.class);
            return zzbVar == null ? new zzb(zzc) : zzbVar;
        }

        @Override // com.google.android.gms.internal.zzabe
        public void onStop() {
            ArrayList arrayList;
            synchronized (this.mListeners) {
                arrayList = new ArrayList(this.mListeners);
                this.mListeners.clear();
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                zza zzaVar = (zza) it.next();
                if (zzaVar != null) {
                    Log.d("StorageOnStopCallback", "removing subscription from activity.");
                    zzaVar.zzUL().run();
                    zzbtt.zzacT().zzaK(zzaVar.zzacU());
                }
            }
        }

        public void zza(zza zzaVar) {
            synchronized (this.mListeners) {
                this.mListeners.add(zzaVar);
            }
        }

        public void zzb(zza zzaVar) {
            synchronized (this.mListeners) {
                this.mListeners.remove(zzaVar);
            }
        }
    }

    private zzbtt() {
    }

    public static zzbtt zzacT() {
        return zzcox;
    }

    public void zza(Activity activity, Object obj, Runnable runnable) {
        synchronized (this.zzcoz) {
            zza zzaVar = new zza(activity, runnable, obj);
            zzb.zzx(activity).zza(zzaVar);
            this.zzcoy.put(obj, zzaVar);
        }
    }

    public void zzaK(Object obj) {
        synchronized (this.zzcoz) {
            zza zzaVar = this.zzcoy.get(obj);
            if (zzaVar != null) {
                zzb.zzx(zzaVar.getActivity()).zzb(zzaVar);
            }
        }
    }
}
