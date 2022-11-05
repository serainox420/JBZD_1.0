package com.google.android.gms.common.api;

import android.support.v4.f.a;
import android.text.TextUtils;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzzz;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb extends Exception {
    private final a<zzzz<?>, ConnectionResult> zzayL;

    public zzb(a<zzzz<?>, ConnectionResult> aVar) {
        this.zzayL = aVar;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z = true;
        for (zzzz<?> zzzzVar : this.zzayL.keySet()) {
            ConnectionResult connectionResult = this.zzayL.get(zzzzVar);
            if (connectionResult.isSuccess()) {
                z = false;
            }
            String valueOf = String.valueOf(zzzzVar.zzvw());
            String valueOf2 = String.valueOf(connectionResult);
            arrayList.add(new StringBuilder(String.valueOf(valueOf).length() + 2 + String.valueOf(valueOf2).length()).append(valueOf).append(": ").append(valueOf2).toString());
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append("None of the queried APIs are available. ");
        } else {
            sb.append("Some of the queried APIs are unavailable. ");
        }
        sb.append(TextUtils.join("; ", arrayList));
        return sb.toString();
    }

    public ConnectionResult zza(zzc<? extends Api.ApiOptions> zzcVar) {
        zzzz<? extends Api.ApiOptions> apiKey = zzcVar.getApiKey();
        zzac.zzb(this.zzayL.get(apiKey) != null, "The given API was not part of the availability request.");
        return this.zzayL.get(apiKey);
    }

    public a<zzzz<?>, ConnectionResult> zzvj() {
        return this.zzayL;
    }
}
