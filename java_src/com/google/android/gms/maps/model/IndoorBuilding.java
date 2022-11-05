package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.maps.model.internal.zze;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class IndoorBuilding {
    private final com.google.android.gms.maps.model.internal.zzd zzbpu;

    public IndoorBuilding(com.google.android.gms.maps.model.internal.zzd zzdVar) {
        this.zzbpu = (com.google.android.gms.maps.model.internal.zzd) zzac.zzw(zzdVar);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzbpu.zzb(((IndoorBuilding) obj).zzbpu);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getActiveLevelIndex() {
        try {
            return this.zzbpu.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int getDefaultLevelIndex() {
        try {
            return this.zzbpu.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public List<IndoorLevel> getLevels() {
        try {
            List<IBinder> levels = this.zzbpu.getLevels();
            ArrayList arrayList = new ArrayList(levels.size());
            for (IBinder iBinder : levels) {
                arrayList.add(new IndoorLevel(zze.zza.zzem(iBinder)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.zzbpu.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isUnderground() {
        try {
            return this.zzbpu.isUnderground();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
