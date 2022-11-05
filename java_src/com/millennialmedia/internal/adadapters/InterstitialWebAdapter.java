package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adcontrollers.WebController;
/* loaded from: classes3.dex */
public class InterstitialWebAdapter extends InterstitialAdapter implements MMAdAdapter {
    private static final String f = InterstitialWebAdapter.class.getSimpleName();
    WebController d;
    WebController.WebControllerListener e = new WebController.WebControllerListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialWebAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initSucceeded() {
            InterstitialWebAdapter.this.c.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initFailed() {
            InterstitialWebAdapter.this.c.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachSucceeded() {
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachFailed() {
            InterstitialWebAdapter.this.c.showFailed(new InterstitialAd.InterstitialErrorStatus(7, "Unable to start interstitial activity"));
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onClicked() {
            InterstitialWebAdapter.this.c.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onAdLeftApplication() {
            InterstitialWebAdapter.this.c.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResize(int i, int i2) {
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResized(int i, int i2, boolean z) {
            if (z) {
                if (InterstitialWebAdapter.this.d != null) {
                    InterstitialWebAdapter.this.d.shutdown();
                }
                InterstitialWebAdapter.this.c.onClosed();
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onExpanded() {
            InterstitialWebAdapter.this.c.shown();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onCollapsed() {
            if (InterstitialWebAdapter.this.d != null) {
                InterstitialWebAdapter.this.d.shutdown();
            }
            InterstitialWebAdapter.this.c.onClosed();
        }
    };

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.c = interstitialAdapterListener;
        WebController.WebControllerOptions webControllerOptions = new WebController.WebControllerOptions(true, Handshake.isMoatEnabled(), a());
        this.d = new WebController(this.e);
        this.d.init(context, this.f4116a, this.b, webControllerOptions);
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, InterstitialAd.DisplayOptions displayOptions) {
        if (displayOptions == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f, "Display options not specified, using defaults.");
            }
            displayOptions = new InterstitialAd.DisplayOptions();
        }
        this.d.showExpanded(new MMActivity.MMActivityConfig().setImmersive(displayOptions.immersive).setTransitionAnimation(displayOptions.enterAnimationId, displayOptions.exitAnimationId).setTransparent(this.b != null && this.b.isTransparent()));
    }

    @Override // com.millennialmedia.internal.adadapters.MMAdAdapter
    public long getImpressionDelay() {
        return a() ? 0L : 1000L;
    }

    @Override // com.millennialmedia.internal.adadapters.MMAdAdapter
    public int getMinImpressionViewabilityPercentage() {
        return a() ? 0 : 50;
    }

    private boolean a() {
        return this.b.getBoolean(AdMetadata.ENHANCED_AD_CONTROL_ENABLED, false);
    }
}
