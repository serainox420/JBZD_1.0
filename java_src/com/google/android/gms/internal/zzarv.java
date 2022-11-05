package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.internal.zzase;
/* loaded from: classes2.dex */
public class zzarv extends com.google.android.gms.common.internal.zzl<zzase> {
    private final String zzbks;
    protected final zzaso<zzase> zzbkt;

    public zzarv(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, looper, 23, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzbkt = new zzaso<zzase>() { // from class: com.google.android.gms.internal.zzarv.1
            @Override // com.google.android.gms.internal.zzaso
            /* renamed from: zzIn */
            public zzase zzxD() throws DeadObjectException {
                return (zzase) zzarv.this.zzxD();
            }

            @Override // com.google.android.gms.internal.zzaso
            public void zzxC() {
                zzarv.this.zzxC();
            }
        };
        this.zzbks = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzdf */
    public zzase zzh(IBinder iBinder) {
        return zzase.zza.zzdi(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.location.internal.IGoogleLocationManagerService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.location.internal.GoogleLocationManagerService.START";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    public Bundle zzqL() {
        Bundle bundle = new Bundle();
        bundle.putString("client_name", this.zzbks);
        return bundle;
    }
}
