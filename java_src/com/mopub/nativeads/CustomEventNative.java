package com.mopub.nativeads;

import android.content.Context;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class CustomEventNative {

    /* loaded from: classes3.dex */
    public interface CustomEventNativeListener {
        void onNativeAdFailed(NativeErrorCode nativeErrorCode);

        void onNativeAdLoaded(BaseNativeAd baseNativeAd);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Context context, CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2);
}
