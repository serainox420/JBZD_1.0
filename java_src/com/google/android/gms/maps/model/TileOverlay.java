package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class TileOverlay {
    private final com.google.android.gms.maps.model.internal.zzh zzbpV;

    public TileOverlay(com.google.android.gms.maps.model.internal.zzh zzhVar) {
        this.zzbpV = (com.google.android.gms.maps.model.internal.zzh) zzac.zzw(zzhVar);
    }

    public void clearTileCache() {
        try {
            this.zzbpV.clearTileCache();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TileOverlay)) {
            return false;
        }
        try {
            return this.zzbpV.zza(((TileOverlay) obj).zzbpV);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean getFadeIn() {
        try {
            return this.zzbpV.getFadeIn();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public String getId() {
        try {
            return this.zzbpV.getId();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getTransparency() {
        try {
            return this.zzbpV.getTransparency();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public float getZIndex() {
        try {
            return this.zzbpV.getZIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public int hashCode() {
        try {
            return this.zzbpV.hashCodeRemote();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public boolean isVisible() {
        try {
            return this.zzbpV.isVisible();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void remove() {
        try {
            this.zzbpV.remove();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setFadeIn(boolean z) {
        try {
            this.zzbpV.setFadeIn(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setTransparency(float f) {
        try {
            this.zzbpV.setTransparency(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setVisible(boolean z) {
        try {
            this.zzbpV.setVisible(z);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public void setZIndex(float f) {
        try {
            this.zzbpV.setZIndex(f);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
