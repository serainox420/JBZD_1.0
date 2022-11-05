package com.google.android.gms.internal;

import android.content.Context;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class zzvd<R extends Result> extends zzaad.zza<R, zzvf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvd(GoogleApiClient googleApiClient) {
        super(Auth.CREDENTIALS_API, googleApiClient);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
    public /* synthetic */ void setResult(Object obj) {
        super.zzb((zzvd<R>) ((Result) obj));
    }

    protected abstract void zza(Context context, zzvl zzvlVar) throws DeadObjectException, RemoteException;

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaad.zza
    public final void zza(zzvf zzvfVar) throws DeadObjectException, RemoteException {
        zza(zzvfVar.getContext(), (zzvl) zzvfVar.zzxD());
    }
}
