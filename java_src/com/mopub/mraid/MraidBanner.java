package com.mopub.mraid;

import android.content.Context;
import android.view.View;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdViewController;
import com.mopub.mobileads.CustomEventBanner;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.factories.MraidControllerFactory;
import com.mopub.mraid.MraidController;
import java.util.Map;
/* loaded from: classes3.dex */
class MraidBanner extends CustomEventBanner {

    /* renamed from: a  reason: collision with root package name */
    private MraidController f4538a;
    private CustomEventBanner.CustomEventBannerListener b;
    private MraidWebViewDebugListener c;

    MraidBanner() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventBanner
    public void a(Context context, CustomEventBanner.CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2) {
        this.b = customEventBannerListener;
        if (a(map2)) {
            String str = map2.get(DataKeys.HTML_RESPONSE_BODY_KEY);
            try {
                this.f4538a = MraidControllerFactory.create(context, (AdReport) map.get(DataKeys.AD_REPORT_KEY), PlacementType.INLINE);
                this.f4538a.setDebugListener(this.c);
                this.f4538a.setMraidListener(new MraidController.MraidListener() { // from class: com.mopub.mraid.MraidBanner.1
                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onLoaded(View view) {
                        AdViewController.setShouldHonorServerDimensions(view);
                        MraidBanner.this.b.onBannerLoaded(view);
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onFailedToLoad() {
                        MraidBanner.this.b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onExpand() {
                        MraidBanner.this.b.onBannerExpanded();
                        MraidBanner.this.b.onBannerClicked();
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onOpen() {
                        MraidBanner.this.b.onBannerClicked();
                    }

                    @Override // com.mopub.mraid.MraidController.MraidListener
                    public void onClose() {
                        MraidBanner.this.b.onBannerCollapsed();
                    }
                });
                this.f4538a.loadContent(str);
                return;
            } catch (ClassCastException e) {
                MoPubLog.w("MRAID banner creating failed:", e);
                this.b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
                return;
            }
        }
        this.b.onBannerFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.mobileads.CustomEventBanner
    public void a() {
        if (this.f4538a != null) {
            this.f4538a.setMraidListener(null);
            this.f4538a.destroy();
        }
    }

    private boolean a(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }

    @VisibleForTesting
    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.c = mraidWebViewDebugListener;
        if (this.f4538a != null) {
            this.f4538a.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
