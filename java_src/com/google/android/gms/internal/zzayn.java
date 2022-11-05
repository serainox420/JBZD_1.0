package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.PublishCallback;
import com.google.android.gms.nearby.messages.internal.zzp;
/* loaded from: classes2.dex */
public class zzayn extends zzp.zza implements zzayj<PublishCallback> {
    private static final zzaym<PublishCallback> zzbBs = new zzaym<PublishCallback>() { // from class: com.google.android.gms.internal.zzayn.1
        @Override // com.google.android.gms.internal.zzabh.zzc
        /* renamed from: zza */
        public void zzs(PublishCallback publishCallback) {
            publishCallback.onExpired();
        }
    };
    private final zzabh<PublishCallback> zzbBp;

    public zzayn(zzabh<PublishCallback> zzabhVar) {
        this.zzbBp = zzabhVar;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzp
    public void onExpired() {
        this.zzbBp.zza(zzbBs);
    }

    @Override // com.google.android.gms.internal.zzayj
    public zzabh<PublishCallback> zzOP() {
        return this.zzbBp;
    }
}
