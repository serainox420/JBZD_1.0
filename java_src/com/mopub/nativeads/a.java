package com.mopub.nativeads;

import android.os.Handler;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
/* compiled from: ClientPositioningSource.java */
/* loaded from: classes3.dex */
class a implements PositioningSource {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f4624a = new Handler();
    private final MoPubNativeAdPositioning.MoPubClientPositioning b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        this.b = MoPubNativeAdPositioning.a(moPubClientPositioning);
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, final PositioningSource.PositioningListener positioningListener) {
        this.f4624a.post(new Runnable() { // from class: com.mopub.nativeads.a.1
            @Override // java.lang.Runnable
            public void run() {
                positioningListener.onLoad(a.this.b);
            }
        });
    }
}
