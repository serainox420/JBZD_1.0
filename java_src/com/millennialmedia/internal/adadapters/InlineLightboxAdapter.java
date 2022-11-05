package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.widget.RelativeLayout;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adcontrollers.LightboxController;
/* loaded from: classes3.dex */
public class InlineLightboxAdapter extends InlineAdapter {
    private LightboxController c;
    private InlineAdapter.InlineAdapterListener d;
    private LightboxController.LightboxControllerListener e = new LightboxController.LightboxControllerListener() { // from class: com.millennialmedia.internal.adadapters.InlineLightboxAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void initSucceeded() {
            InlineLightboxAdapter.this.d.initSucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void initFailed() {
            InlineLightboxAdapter.this.d.initFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void attachSucceeded() {
            InlineLightboxAdapter.this.d.displaySucceeded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void attachFailed() {
            InlineLightboxAdapter.this.d.displayFailed();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onClicked() {
            InlineLightboxAdapter.this.d.onClicked();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onAdLeftApplication() {
            InlineLightboxAdapter.this.d.onAdLeftApplication();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onExpanded() {
            InlineLightboxAdapter.this.d.onExpanded();
        }

        @Override // com.millennialmedia.internal.adcontrollers.LightboxController.LightboxControllerListener
        public void onCollapsed() {
            InlineLightboxAdapter.this.d.onCollapsed();
        }
    };

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener) {
        this.d = inlineAdapterListener;
        this.c = new LightboxController(this.e);
        this.c.init(context, this.f4116a);
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(13);
        this.c.attach(relativeLayout, layoutParams);
    }
}
