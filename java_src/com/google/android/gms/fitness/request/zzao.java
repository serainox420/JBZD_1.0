package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.zzs;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzao extends zzs.zza {
    private final OnDataPointListener zzaWe;

    /* loaded from: classes2.dex */
    public static class zza {
        private static final zza zzaWf = new zza();
        private final Map<OnDataPointListener, zzao> zzaWg = new HashMap();

        private zza() {
        }

        public static zza zzDa() {
            return zzaWf;
        }

        public zzao zza(OnDataPointListener onDataPointListener) {
            zzao zzaoVar;
            synchronized (this.zzaWg) {
                zzaoVar = this.zzaWg.get(onDataPointListener);
                if (zzaoVar == null) {
                    zzaoVar = new zzao(onDataPointListener);
                    this.zzaWg.put(onDataPointListener, zzaoVar);
                }
            }
            return zzaoVar;
        }

        public zzao zzb(OnDataPointListener onDataPointListener) {
            zzao zzaoVar;
            synchronized (this.zzaWg) {
                zzaoVar = this.zzaWg.get(onDataPointListener);
            }
            return zzaoVar;
        }

        public zzao zzc(OnDataPointListener onDataPointListener) {
            zzao remove;
            synchronized (this.zzaWg) {
                remove = this.zzaWg.remove(onDataPointListener);
                if (remove == null) {
                    remove = new zzao(onDataPointListener);
                }
            }
            return remove;
        }
    }

    private zzao(OnDataPointListener onDataPointListener) {
        this.zzaWe = (OnDataPointListener) com.google.android.gms.common.internal.zzac.zzw(onDataPointListener);
    }

    @Override // com.google.android.gms.fitness.data.zzs
    public void zzf(DataPoint dataPoint) throws RemoteException {
        this.zzaWe.onDataPoint(dataPoint);
    }
}
