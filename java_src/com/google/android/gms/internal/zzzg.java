package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzzi;
import com.google.android.gms.internal.zzzj;
/* loaded from: classes.dex */
public class zzzg extends com.google.android.gms.common.internal.zzl<zzzi> implements IBinder.DeathRecipient {
    private static final zzyz zzanA = new zzyz("CastRemoteDisplayClientImpl");
    private CastDevice zzani;
    private CastRemoteDisplay.CastRemoteDisplaySessionCallbacks zzaxl;
    private Bundle zzaxm;

    public zzzg(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, CastDevice castDevice, Bundle bundle, CastRemoteDisplay.CastRemoteDisplaySessionCallbacks castRemoteDisplaySessionCallbacks, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, 83, zzgVar, connectionCallbacks, onConnectionFailedListener);
        zzanA.zzb("instance created", new Object[0]);
        this.zzaxl = castRemoteDisplaySessionCallbacks;
        this.zzani = castDevice;
        this.zzaxm = bundle;
    }

    @Override // android.os.IBinder.DeathRecipient
    public void binderDied() {
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        zzanA.zzb("disconnect", new Object[0]);
        this.zzaxl = null;
        this.zzani = null;
        try {
            ((zzzi) zzxD()).disconnect();
            super.disconnect();
        } catch (RemoteException e) {
            super.disconnect();
        } catch (IllegalStateException e2) {
            super.disconnect();
        } catch (Throwable th) {
            super.disconnect();
            throw th;
        }
    }

    public void zza(zzzh zzzhVar) throws RemoteException {
        zzanA.zzb("stopRemoteDisplay", new Object[0]);
        ((zzzi) zzxD()).zza(zzzhVar);
    }

    public void zza(zzzh zzzhVar, int i) throws RemoteException {
        ((zzzi) zzxD()).zza(zzzhVar, i);
    }

    public void zza(zzzh zzzhVar, final zzzj zzzjVar, String str) throws RemoteException {
        zzanA.zzb("startRemoteDisplay", new Object[0]);
        ((zzzi) zzxD()).zza(zzzhVar, new zzzj.zza() { // from class: com.google.android.gms.internal.zzzg.1
            @Override // com.google.android.gms.internal.zzzj
            public void zzcp(int i) throws RemoteException {
                zzzg.zzanA.zzb("onRemoteDisplayEnded", new Object[0]);
                if (zzzjVar != null) {
                    zzzjVar.zzcp(i);
                }
                if (zzzg.this.zzaxl != null) {
                    zzzg.this.zzaxl.onRemoteDisplayEnded(new Status(i));
                }
            }
        }, this.zzani.getDeviceId(), str, this.zzaxm);
    }

    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbi */
    public zzzi zzh(IBinder iBinder) {
        return zzzi.zza.zzbk(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }
}
