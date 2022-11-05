package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.widget.RelativeLayout;
import com.millennialmedia.internal.AdMetadata;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adcontrollers.WebController;
/* loaded from: classes3.dex */
public class InlineWebAdapter extends InlineAdapter implements MMAdAdapter {
    WebController c;
    InlineAdapter.InlineAdapterListener d;
    WebController.WebControllerListener e = new WebController.WebControllerListener() { // from class: com.millennialmedia.internal.adadapters.InlineWebAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initSucceeded() {
            InlineWebAdapter.this.d.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void initFailed() {
            InlineWebAdapter.this.d.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachSucceeded() {
            InlineWebAdapter.this.d.displaySucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void attachFailed() {
            InlineWebAdapter.this.d.displayFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onClicked() {
            InlineWebAdapter.this.d.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onAdLeftApplication() {
            InlineWebAdapter.this.d.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResize(int i, int i2) {
            InlineWebAdapter.this.d.onResize(i, i2);
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onResized(int i, int i2, boolean z) {
            InlineWebAdapter.this.d.onResized(i, i2, z);
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onExpanded() {
            InlineWebAdapter.this.d.onExpanded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.WebController.WebControllerListener
        public void onCollapsed() {
            InlineWebAdapter.this.d.onCollapsed();
        }
    };

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener) {
        this.d = inlineAdapterListener;
        WebController.WebControllerOptions webControllerOptions = new WebController.WebControllerOptions(false, Handshake.isMoatEnabled(), a());
        this.c = new WebController(this.e);
        this.c.init(context, this.f4116a, this.b, webControllerOptions);
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(13);
        this.c.attach(relativeLayout, layoutParams);
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
