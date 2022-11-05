package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IInterface;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzm;
import java.util.Set;
/* loaded from: classes.dex */
public abstract class zzl<T extends IInterface> extends zzf<T> implements Api.zze, zzm.zza {
    private final zzg zzaAL;
    private final Account zzahh;
    private final Set<Scope> zzakq;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzl(Context context, Looper looper, int i, zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this(context, looper, zzn.zzaU(context), GoogleApiAvailability.getInstance(), i, zzgVar, (GoogleApiClient.ConnectionCallbacks) zzac.zzw(connectionCallbacks), (GoogleApiClient.OnConnectionFailedListener) zzac.zzw(onConnectionFailedListener));
    }

    protected zzl(Context context, Looper looper, zzn zznVar, GoogleApiAvailability googleApiAvailability, int i, zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        super(context, looper, zznVar, googleApiAvailability, i, zza(connectionCallbacks), zza(onConnectionFailedListener), zzgVar.zzxP());
        this.zzaAL = zzgVar;
        this.zzahh = zzgVar.getAccount();
        this.zzakq = zzb(zzgVar.zzxM());
    }

    private static zzf.zzb zza(final GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        if (connectionCallbacks == null) {
            return null;
        }
        return new zzf.zzb() { // from class: com.google.android.gms.common.internal.zzl.1
            @Override // com.google.android.gms.common.internal.zzf.zzb
            public void onConnected(Bundle bundle) {
                GoogleApiClient.ConnectionCallbacks.this.onConnected(bundle);
            }

            @Override // com.google.android.gms.common.internal.zzf.zzb
            public void onConnectionSuspended(int i) {
                GoogleApiClient.ConnectionCallbacks.this.onConnectionSuspended(i);
            }
        };
    }

    private static zzf.zzc zza(final GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        if (onConnectionFailedListener == null) {
            return null;
        }
        return new zzf.zzc() { // from class: com.google.android.gms.common.internal.zzl.2
            @Override // com.google.android.gms.common.internal.zzf.zzc
            public void onConnectionFailed(ConnectionResult connectionResult) {
                GoogleApiClient.OnConnectionFailedListener.this.onConnectionFailed(connectionResult);
            }
        };
    }

    private Set<Scope> zzb(Set<Scope> set) {
        Set<Scope> zzc = zzc(set);
        for (Scope scope : zzc) {
            if (!set.contains(scope)) {
                throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
            }
        }
        return zzc;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public final Account getAccount() {
        return this.zzahh;
    }

    protected Set<Scope> zzc(Set<Scope> set) {
        return set;
    }

    @Override // com.google.android.gms.common.internal.zzf
    public com.google.android.gms.common.zzc[] zzxA() {
        return new com.google.android.gms.common.zzc[0];
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected final Set<Scope> zzxF() {
        return this.zzakq;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzg zzxW() {
        return this.zzaAL;
    }
}
