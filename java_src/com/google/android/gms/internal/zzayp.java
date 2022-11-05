package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.SubscribeCallback;
import com.google.android.gms.nearby.messages.internal.zzr;
/* loaded from: classes2.dex */
public class zzayp extends zzr.zza implements zzayj<SubscribeCallback> {
    private static final zzaym<SubscribeCallback> zzbBs = new zzaym<SubscribeCallback>() { // from class: com.google.android.gms.internal.zzayp.1
        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(SubscribeCallback subscribeCallback) {
            subscribeCallback.onExpired();
        }
    };
    private final zzabh<SubscribeCallback> zzbBp;

    public zzayp(zzabh<SubscribeCallback> zzabhVar) {
        this.zzbBp = zzabhVar;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzr
    public void onExpired() {
        this.zzbBp.zza(zzbBs);
    }

    @Override // com.google.android.gms.internal.zzayj
    public zzabh<SubscribeCallback> zzOP() {
        return this.zzbBp;
    }
}
