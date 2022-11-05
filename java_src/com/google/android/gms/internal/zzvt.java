package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyRequest;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
/* loaded from: classes2.dex */
public class zzvt implements ProxyApi {
    @Override // com.google.android.gms.auth.api.proxy.ProxyApi
    public PendingResult<ProxyApi.ProxyResult> performProxyRequest(GoogleApiClient googleApiClient, final ProxyRequest proxyRequest) {
        com.google.android.gms.common.internal.zzac.zzw(googleApiClient);
        com.google.android.gms.common.internal.zzac.zzw(proxyRequest);
        return googleApiClient.zzb((GoogleApiClient) new zzvs(this, googleApiClient) { // from class: com.google.android.gms.internal.zzvt.1
            @Override // com.google.android.gms.internal.zzvs
            protected void zza(Context context, zzvr zzvrVar) throws RemoteException {
                zzvrVar.zza(new zzvo() { // from class: com.google.android.gms.internal.zzvt.1.1
                    @Override // com.google.android.gms.internal.zzvo, com.google.android.gms.internal.zzvq
                    public void zza(ProxyResponse proxyResponse) {
                        zzb((AnonymousClass1) new zzvu(proxyResponse));
                    }
                }, proxyRequest);
            }
        });
    }
}
