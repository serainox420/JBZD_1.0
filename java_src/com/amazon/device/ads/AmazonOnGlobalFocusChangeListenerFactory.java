package com.amazon.device.ads;

import android.view.View;
import android.view.ViewTreeObserver;
/* compiled from: ViewabilityObserver.java */
/* loaded from: classes.dex */
class AmazonOnGlobalFocusChangeListenerFactory {
    public ViewTreeObserver.OnGlobalFocusChangeListener buildAmazonOnGlobalFocusChangedListener(ViewabilityObserver viewabilityObserver) {
        return new AmazonOnGlobalFocusChangeListener(viewabilityObserver);
    }

    /* compiled from: ViewabilityObserver.java */
    /* loaded from: classes.dex */
    private class AmazonOnGlobalFocusChangeListener implements ViewTreeObserver.OnGlobalFocusChangeListener {
        private final ViewabilityObserver viewabilityObserver;

        public AmazonOnGlobalFocusChangeListener(ViewabilityObserver viewabilityObserver) {
            this.viewabilityObserver = viewabilityObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
        public void onGlobalFocusChanged(View view, View view2) {
            this.viewabilityObserver.fireViewableEvent(false);
        }
    }
}
