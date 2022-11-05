package com.google.android.gms.internal;

import android.os.RemoteException;
import android.support.v7.media.g;
/* loaded from: classes2.dex */
public class zzxd extends g.a {
    private static final zzyz zzapV = new zzyz("MediaRouterCallback");
    private final zzxa zzaqX;

    public zzxd(zzxa zzxaVar) {
        this.zzaqX = (zzxa) com.google.android.gms.common.internal.zzac.zzw(zzxaVar);
    }

    @Override // android.support.v7.media.g.a
    public void onRouteAdded(g gVar, g.C0043g c0043g) {
        try {
            this.zzaqX.zzc(c0043g.c(), c0043g.u());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onRouteAdded", zzxa.class.getSimpleName());
        }
    }

    @Override // android.support.v7.media.g.a
    public void onRouteChanged(g gVar, g.C0043g c0043g) {
        try {
            this.zzaqX.zzd(c0043g.c(), c0043g.u());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onRouteChanged", zzxa.class.getSimpleName());
        }
    }

    @Override // android.support.v7.media.g.a
    public void onRouteRemoved(g gVar, g.C0043g c0043g) {
        try {
            this.zzaqX.zze(c0043g.c(), c0043g.u());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onRouteRemoved", zzxa.class.getSimpleName());
        }
    }

    @Override // android.support.v7.media.g.a
    public void onRouteSelected(g gVar, g.C0043g c0043g) {
        try {
            this.zzaqX.zzf(c0043g.c(), c0043g.u());
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onRouteSelected", zzxa.class.getSimpleName());
        }
    }

    @Override // android.support.v7.media.g.a
    public void onRouteUnselected(g gVar, g.C0043g c0043g, int i) {
        try {
            this.zzaqX.zza(c0043g.c(), c0043g.u(), i);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onRouteUnselected", zzxa.class.getSimpleName());
        }
    }
}
