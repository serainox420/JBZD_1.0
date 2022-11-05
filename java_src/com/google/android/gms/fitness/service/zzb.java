package com.google.android.gms.fitness.service;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.fitness.data.DataPoint;
import com.google.android.gms.fitness.data.zzs;
import java.util.List;
/* loaded from: classes2.dex */
class zzb implements SensorEventDispatcher {
    private final zzs zzaWo;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(zzs zzsVar) {
        this.zzaWo = (zzs) zzac.zzw(zzsVar);
    }

    @Override // com.google.android.gms.fitness.service.SensorEventDispatcher
    public void publish(DataPoint dataPoint) throws RemoteException {
        dataPoint.zzCe();
        this.zzaWo.zzf(dataPoint);
    }

    @Override // com.google.android.gms.fitness.service.SensorEventDispatcher
    public void publish(List<DataPoint> list) throws RemoteException {
        for (DataPoint dataPoint : list) {
            publish(dataPoint);
        }
    }
}
