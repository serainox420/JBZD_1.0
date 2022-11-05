package com.intentsoftware.addapptr.c;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.ViewTreeObserver;
/* compiled from: NativeAdViewImpressionTracker.java */
/* loaded from: classes2.dex */
public class d implements ViewTreeObserver.OnPreDrawListener {
    private static final int VISIBILITY_CHECK_DELAY = 100;
    private a listener;
    private int passedVisibilityChecks;
    private boolean reportedImpression;
    private final int requiredPassedVisibilityChecks;
    private final int requiredPercentage;
    private View view;
    private boolean visibilityCheckScheduled = false;
    private final Handler handler = new Handler();
    private final Runnable checkVisibilityRunnable = new Runnable() { // from class: com.intentsoftware.addapptr.c.d.1
        @Override // java.lang.Runnable
        public void run() {
            d.this.visibilityCheckScheduled = false;
            d.this.checkImpression();
        }
    };

    /* compiled from: NativeAdViewImpressionTracker.java */
    /* loaded from: classes2.dex */
    public interface a {
        void onImpressionDetected();
    }

    public d(int i, int i2, a aVar) {
        this.listener = aVar;
        this.requiredPercentage = i2;
        this.requiredPassedVisibilityChecks = i / 100;
    }

    public void attachToView(View view) {
        this.view = view;
        view.getViewTreeObserver().addOnPreDrawListener(this);
    }

    public void pause() {
        cancelVisibilityCheck();
        if (this.view != null) {
            this.view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
    }

    public void resume() {
        if (!this.reportedImpression && this.view != null) {
            this.view.getViewTreeObserver().addOnPreDrawListener(this);
        }
    }

    public void destroy() {
        cancelVisibilityCheck();
        if (this.view != null) {
            this.view.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.view = null;
        this.listener = null;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (!this.reportedImpression) {
            scheduleVisibilityCheck();
            return true;
        }
        return true;
    }

    private void scheduleVisibilityCheck() {
        if (!this.visibilityCheckScheduled) {
            this.visibilityCheckScheduled = true;
            this.handler.postDelayed(this.checkVisibilityRunnable, 100L);
        }
    }

    private void cancelVisibilityCheck() {
        this.handler.removeCallbacks(this.checkVisibilityRunnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void checkImpression() {
        int visiblePercentage = visiblePercentage(this.view);
        if (visiblePercentage > this.requiredPercentage) {
            this.passedVisibilityChecks++;
            if (this.passedVisibilityChecks >= this.requiredPassedVisibilityChecks && !this.reportedImpression) {
                this.reportedImpression = true;
                if (this.listener != null) {
                    this.listener.onImpressionDetected();
                }
            }
        } else {
            this.passedVisibilityChecks = 0;
        }
        if (visiblePercentage > 0 && !this.reportedImpression) {
            scheduleVisibilityCheck();
        }
    }

    private int visiblePercentage(View view) {
        Rect rect = new Rect();
        if (view == null || view.getVisibility() != 0 || !view.getGlobalVisibleRect(rect)) {
            return 0;
        }
        long height = rect.height() * rect.width();
        long height2 = view.getHeight() * view.getWidth();
        if (height2 <= 0) {
            return 0;
        }
        return Long.valueOf((100 * height) / height2).intValue();
    }
}
