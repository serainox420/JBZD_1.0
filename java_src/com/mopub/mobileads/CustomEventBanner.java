package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class CustomEventBanner {

    /* loaded from: classes3.dex */
    public interface CustomEventBannerListener {
        void onBannerClicked();

        void onBannerCollapsed();

        void onBannerExpanded();

        void onBannerFailed(MoPubErrorCode moPubErrorCode);

        void onBannerLoaded(View view);

        void onLeaveApplication();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void a(Context context, CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2);
}
