package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class IndoorLevel {
    private final com.google.android.gms.maps.model.internal.zze zzbpv;

    public IndoorLevel(com.google.android.gms.maps.model.internal.zze zzeVar) {
        this.zzbpv = (com.google.android.gms.maps.model.internal.zze) zzac.zzw(zzeVar);
    }

    public void activate() {
        try {
            this.zzbpv.activate();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            return this.zzbpv.zza(((IndoorLevel) obj).zzbpv);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getName() {
        try {
            return this.zzbpv.getName();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getShortName() {
        try {
            return this.zzbpv.getShortName();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.zzbpv.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
