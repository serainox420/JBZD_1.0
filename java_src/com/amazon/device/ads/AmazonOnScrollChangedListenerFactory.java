package com.amazon.device.ads;

import android.view.ViewTreeObserver;
/* compiled from: ViewabilityObserver.java */
/* loaded from: classes.dex */
class AmazonOnScrollChangedListenerFactory {
    public ViewTreeObserver.OnScrollChangedListener buildAmazonOnScrollChangedListenerFactory(ViewabilityObserver viewabilityObserver) {
        return new AmazonOnScrollChangedListener(viewabilityObserver);
    }

    /* compiled from: ViewabilityObserver.java */
    /* loaded from: classes.dex */
    private class AmazonOnScrollChangedListener implements ViewTreeObserver.OnScrollChangedListener {
        private final ViewabilityObserver viewabilityObserver;

        public AmazonOnScrollChangedListener(ViewabilityObserver viewabilityObserver) {
            this.viewabilityObserver = viewabilityObserver;
        }

        @Override // android.view.ViewTreeObserver.OnScrollChangedListener
        public void onScrollChanged() {
            this.viewabilityObserver.fireViewableEvent(true);
        }
    }
}
