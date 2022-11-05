package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzabr extends zzbam implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
    private static Api.zza<? extends zzbai, zzbaj> zzaDg = zzbah.zzaie;
    private final Context mContext;
    private final Handler mHandler;
    private com.google.android.gms.common.internal.zzg zzaAL;
    private zzbai zzaBs;
    private final boolean zzaDh;
    private zza zzaDi;
    private Set<Scope> zzakq;
    private final Api.zza<? extends zzbai, zzbaj> zzayH;

    /* loaded from: classes2.dex */
    public interface zza {
        void zzb(com.google.android.gms.common.internal.zzr zzrVar, Set<Scope> set);

        void zzi(ConnectionResult connectionResult);
    }

    public zzabr(Context context, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
        this.zzayH = zzaDg;
        this.zzaDh = true;
    }

    public zzabr(Context context, Handler handler, com.google.android.gms.common.internal.zzg zzgVar, Api.zza<? extends zzbai, zzbaj> zzaVar) {
        this.mContext = context;
        this.mHandler = handler;
        this.zzaAL = zzgVar;
        this.zzakq = zzgVar.zzxL();
        this.zzayH = zzaVar;
        this.zzaDh = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzc(zzbaw zzbawVar) {
        ConnectionResult zzyh = zzbawVar.zzyh();
        if (zzyh.isSuccess()) {
            com.google.android.gms.common.internal.zzaf zzPU = zzbawVar.zzPU();
            ConnectionResult zzyh2 = zzPU.zzyh();
            if (!zzyh2.isSuccess()) {
                String valueOf = String.valueOf(zzyh2);
                Log.wtf("SignInCoordinator", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
                this.zzaDi.zzi(zzyh2);
                this.zzaBs.disconnect();
                return;
            }
            this.zzaDi.zzb(zzPU.zzyg(), this.zzakq);
        } else {
            this.zzaDi.zzi(zzyh);
        }
        this.zzaBs.disconnect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.zzaBs.zza(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
    public void onConnectionFailed(ConnectionResult connectionResult) {
        this.zzaDi.zzi(connectionResult);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        this.zzaBs.disconnect();
    }

    public void zza(zza zzaVar) {
        if (this.zzaBs != null) {
            this.zzaBs.disconnect();
        }
        if (this.zzaDh) {
            GoogleSignInOptions zzrC = com.google.android.gms.auth.api.signin.internal.zzn.zzas(this.mContext).zzrC();
            this.zzakq = zzrC == null ? new HashSet() : new HashSet(zzrC.zzrj());
            this.zzaAL = new com.google.android.gms.common.internal.zzg(null, this.zzakq, null, 0, null, null, null, zzbaj.zzbEi);
        }
        this.zzaBs = this.zzayH.zza(this.mContext, this.mHandler.getLooper(), this.zzaAL, this.zzaAL.zzxR(), this, this);
        this.zzaDi = zzaVar;
        this.zzaBs.connect();
    }

    @Override // com.google.android.gms.internal.zzbam, com.google.android.gms.internal.zzbap
    public void zzb(final zzbaw zzbawVar) {
        this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzabr.1
            @Override // java.lang.Runnable
            public void run() {
                zzabr.this.zzc(zzbawVar);
            }
        });
    }

    public zzbai zzwO() {
        return this.zzaBs;
    }

    public void zzwY() {
        this.zzaBs.disconnect();
    }
}
