package com.millennialmedia.internal.adadapters;

import android.content.Context;
import com.millennialmedia.InterstitialAd;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.adcontrollers.VASTVideoController;
/* loaded from: classes3.dex */
public class InterstitialVASTVideoAdapter extends InterstitialAdapter {
    private static final String e = InterstitialVASTVideoAdapter.class.getSimpleName();
    VASTVideoController.VASTVideoControllerListener d = new VASTVideoController.VASTVideoControllerListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialVASTVideoAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void initSucceeded() {
            InterstitialVASTVideoAdapter.this.c.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void initFailed() {
            InterstitialVASTVideoAdapter.this.c.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void attachSucceeded() {
            if (!InterstitialVASTVideoAdapter.this.h) {
                InterstitialVASTVideoAdapter.this.h = true;
                InterstitialVASTVideoAdapter.this.c.shown();
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void attachFailed() {
            if (!InterstitialVASTVideoAdapter.this.h) {
                InterstitialVASTVideoAdapter.this.c.showFailed(new InterstitialAd.InterstitialErrorStatus(7));
            }
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void onClick() {
            InterstitialVASTVideoAdapter.this.c.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
            InterstitialVASTVideoAdapter.this.c.onIncentiveEarned(xIncentiveEvent);
        }

        @Override // com.millennialmedia.internal.adcontrollers.VASTVideoController.VASTVideoControllerListener
        public void close() {
            if (InterstitialVASTVideoAdapter.this.g != null) {
                InterstitialVASTVideoAdapter.this.g.finish();
            }
        }
    };
    private VASTVideoController f;
    private MMActivity g;
    private volatile boolean h;

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void init(Context context, InterstitialAdapter.InterstitialAdapterListener interstitialAdapterListener) {
        this.c = interstitialAdapterListener;
        this.f = new VASTVideoController(this.d);
        this.f.init(context, this.f4116a);
    }

    @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter
    public void show(Context context, InterstitialAd.DisplayOptions displayOptions) {
        if (displayOptions == null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(e, "Display options not specified, using defaults.");
            }
            displayOptions = new InterstitialAd.DisplayOptions().setImmersive(true);
        }
        MMActivity.launch(context, new MMActivity.MMActivityConfig().setImmersive(displayOptions.immersive), new MMActivity.MMActivityListener() { // from class: com.millennialmedia.internal.adadapters.InterstitialVASTVideoAdapter.2
            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public void onCreate(MMActivity mMActivity) {
                InterstitialVASTVideoAdapter.this.g = mMActivity;
                InterstitialVASTVideoAdapter.this.f.attach(mMActivity);
            }

            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public void onDestroy(MMActivity mMActivity) {
                if (mMActivity.isFinishing()) {
                    InterstitialVASTVideoAdapter.this.f.shutdown();
                    InterstitialVASTVideoAdapter.this.c.onClosed();
                    InterstitialVASTVideoAdapter.this.g = null;
                }
            }

            @Override // com.millennialmedia.internal.MMActivity.MMActivityListener
            public boolean onBackPressed() {
                return InterstitialVASTVideoAdapter.this.f.onBackPressed();
            }
        });
    }
}
