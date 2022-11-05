package com.google.android.gms.internal;

import com.google.android.gms.ads.VideoController;
import com.google.android.gms.internal.zzfb;
/* loaded from: classes2.dex */
public final class zzfs extends zzfb.zza {
    private final VideoController.VideoLifecycleCallbacks zzrL;

    public zzfs(VideoController.VideoLifecycleCallbacks videoLifecycleCallbacks) {
        this.zzrL = videoLifecycleCallbacks;
    }

    @Override // com.google.android.gms.internal.zzfb
    public void onVideoEnd() {
        this.zzrL.onVideoEnd();
    }

    @Override // com.google.android.gms.internal.zzfb
    public void zzeY() {
    }

    @Override // com.google.android.gms.internal.zzfb
    public void zzeZ() {
    }

    @Override // com.google.android.gms.internal.zzfb
    public void zzfa() {
    }
}
