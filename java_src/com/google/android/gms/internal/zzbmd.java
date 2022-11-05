package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbly;
import com.google.firebase.a;
import com.google.firebase.auth.d;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzbmd<SuccessT, CallbackT> {
    private boolean zzbNF;
    protected a zzbXF;
    protected final int zzbYh;
    protected final zza zzbYi = new zza();
    protected d zzbYj;
    protected zzblz zzbYk;
    protected CallbackT zzbYl;
    protected zzbmc<SuccessT> zzbYm;
    protected zzbmn zzbYn;
    protected zzbmj zzbYo;
    protected zzbmh zzbYp;
    protected zzbmt zzbYq;
    protected String zzbYr;
    boolean zzbYs;
    SuccessT zzbYt;
    Status zzbYu;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza extends zzbly.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzbly
        public void onFailure(Status status) throws RemoteException {
            zzbmd.this.zzcf(status);
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zzVR() throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 5, new StringBuilder(36).append("Unexpected response type ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zzVS() throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 6, new StringBuilder(36).append("Unexpected response type ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zza(zzbmh zzbmhVar) throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 3, new StringBuilder(36).append("Unexpected response type ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzbYp = zzbmhVar;
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zza(zzbmn zzbmnVar, zzbmj zzbmjVar) throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 2, new StringBuilder(37).append("Unexpected response type: ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzbYn = zzbmnVar;
            zzbmd.this.zzbYo = zzbmjVar;
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zza(zzbmt zzbmtVar) throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 4, new StringBuilder(36).append("Unexpected response type ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzbYq = zzbmtVar;
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zzb(zzbmn zzbmnVar) throws RemoteException {
            boolean z = true;
            if (zzbmd.this.zzbYh != 1) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, new StringBuilder(37).append("Unexpected response type: ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzbYn = zzbmnVar;
            zzbmd.this.zzVV();
        }

        @Override // com.google.android.gms.internal.zzbly
        public void zzix(String str) throws RemoteException {
            com.google.android.gms.common.internal.zzac.zza(zzbmd.this.zzbYh == 7, new StringBuilder(36).append("Unexpected response type ").append(zzbmd.this.zzbYh).toString());
            zzbmd.this.zzbYr = str;
            zzbmd.this.zzVV();
        }
    }

    public zzbmd(int i) {
        this.zzbYh = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzVV() {
        zzVO();
        com.google.android.gms.common.internal.zzac.zza(this.zzbNF, "no success or failure set on method implementation");
    }

    protected abstract void dispatch() throws RemoteException;

    public abstract void zzVO();

    public void zzVU() {
        zzae(null);
    }

    public zzbmd<SuccessT, CallbackT> zza(zzbmc<SuccessT> zzbmcVar) {
        this.zzbYm = zzbmcVar;
        return this;
    }

    public void zza(zzblz zzblzVar) throws RemoteException {
        this.zzbYk = zzblzVar;
        dispatch();
    }

    public zzbmd<SuccessT, CallbackT> zzad(CallbackT callbackt) {
        this.zzbYl = (CallbackT) com.google.android.gms.common.internal.zzac.zzb(callbackt, "external callback cannot be null");
        return this;
    }

    public void zzae(SuccessT successt) {
        this.zzbNF = true;
        this.zzbYs = true;
        this.zzbYt = successt;
        this.zzbYm.zza(successt, null);
    }

    public void zzcf(Status status) {
        this.zzbNF = true;
        this.zzbYs = false;
        this.zzbYu = status;
        this.zzbYm.zza(null, status);
    }

    public zzbmd<SuccessT, CallbackT> zze(a aVar) {
        this.zzbXF = (a) com.google.android.gms.common.internal.zzac.zzb(aVar, "firebaseApp cannot be null");
        return this;
    }

    public zzbmd<SuccessT, CallbackT> zze(d dVar) {
        this.zzbYj = (d) com.google.android.gms.common.internal.zzac.zzb(dVar, "firebaseUser cannot be null");
        return this;
    }
}
