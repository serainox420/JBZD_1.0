package com.google.android.gms.internal;

import com.google.android.gms.auth.api.proxy.ProxyApi;
import com.google.android.gms.auth.api.proxy.ProxyResponse;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
class zzvu implements ProxyApi.ProxyResult {
    private Status zzair;
    private ProxyResponse zzajY;

    public zzvu(ProxyResponse proxyResponse) {
        this.zzajY = proxyResponse;
        this.zzair = Status.zzazx;
    }

    public zzvu(Status status) {
        this.zzair = status;
    }

    @Override // com.google.android.gms.auth.api.proxy.ProxyApi.ProxyResult
    public ProxyResponse getResponse() {
        return this.zzajY;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }
}
