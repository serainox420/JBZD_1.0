package com.google.android.gms.fitness.request;

import android.os.RemoteException;
import com.google.android.gms.fitness.data.BleDevice;
import com.google.android.gms.fitness.request.zzai;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zza extends zzai.zza {
    private final BleScanCallback zzaVo;

    /* renamed from: com.google.android.gms.fitness.request.zza$zza  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static class C0191zza {
        private static final C0191zza zzaVp = new C0191zza();
        private final Map<BleScanCallback, zza> zzaVq = new HashMap();

        private C0191zza() {
        }

        public static C0191zza zzCL() {
            return zzaVp;
        }

        public zza zza(BleScanCallback bleScanCallback) {
            zza zzaVar;
            synchronized (this.zzaVq) {
                zzaVar = this.zzaVq.get(bleScanCallback);
                if (zzaVar == null) {
                    zzaVar = new zza(bleScanCallback);
                    this.zzaVq.put(bleScanCallback, zzaVar);
                }
            }
            return zzaVar;
        }

        public zza zzb(BleScanCallback bleScanCallback) {
            zza zzaVar;
            synchronized (this.zzaVq) {
                zzaVar = this.zzaVq.get(bleScanCallback);
                if (zzaVar == null) {
                    zzaVar = new zza(bleScanCallback);
                }
            }
            return zzaVar;
        }
    }

    private zza(BleScanCallback bleScanCallback) {
        this.zzaVo = (BleScanCallback) com.google.android.gms.common.internal.zzac.zzw(bleScanCallback);
    }

    @Override // com.google.android.gms.fitness.request.zzai
    public void onDeviceFound(BleDevice bleDevice) throws RemoteException {
        this.zzaVo.onDeviceFound(bleDevice);
    }

    @Override // com.google.android.gms.fitness.request.zzai
    public void onScanStopped() throws RemoteException {
        this.zzaVo.onScanStopped();
    }
}
