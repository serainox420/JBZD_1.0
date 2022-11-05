package com.amazon.device.ads;

import android.view.ViewTreeObserver;
/* compiled from: ViewabilityObserver.java */
/* loaded from: classes.dex */
class AmazonOnWindowFocusChangeListenerFactory {
    public ViewTreeObserver.OnWindowFocusChangeListener buildOnWindowFocusChangeListener(ViewabilityObserver viewabilityObserver) {
        return new AmazonOnWindowFocusChangeListener(viewabilityObserver);
    }

    /* compiled from: ViewabilityObserver.java */
    /* loaded from: classes.dex */
    private class AmazonOnWindowFocusChangeListener implements ViewTreeObserver.OnWindowFocusChangeListener {
        private final ViewabilityObserver viewabilityObserver;

        AmazonOnWindowFocusChangeListener(ViewabilityObserver viewabilityObserver) {
            this.viewabilityObserver = viewabilityObserver;
        }

        @Override // android.view.ViewTreeObserver.OnWindowFocusChangeListener
        public void onWindowFocusChanged(boolean z) {
            this.viewabilityObserver.fireViewableEvent(false);
        }
    }
}
