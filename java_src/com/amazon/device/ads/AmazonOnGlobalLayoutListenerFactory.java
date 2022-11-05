package com.amazon.device.ads;

import android.view.ViewTreeObserver;
/* compiled from: ViewabilityObserver.java */
/* loaded from: classes.dex */
class AmazonOnGlobalLayoutListenerFactory {
    public ViewTreeObserver.OnGlobalLayoutListener buildAmazonOnGlobalLayoutListener(ViewabilityObserver viewabilityObserver) {
        return new AmazonOnGlobalLayoutListener(viewabilityObserver);
    }

    /* compiled from: ViewabilityObserver.java */
    /* loaded from: classes.dex */
    private class AmazonOnGlobalLayoutListener implements ViewTreeObserver.OnGlobalLayoutListener {
        private final ViewabilityObserver viewabilityObserver;

        public AmazonOnGlobalLayoutListener(ViewabilityObserver viewabilityObserver) {
            this.viewabilityObserver = viewabilityObserver;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.viewabilityObserver.addOnScrollChangedListenerIfNeeded();
            this.viewabilityObserver.fireViewableEvent(false);
        }
    }
}
