package com.moat.analytics.mobile.aol;

import android.util.Log;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.OnOffTrackerProxy;
import com.moat.analytics.mobile.aol.base.annotation.Nullable;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.lang.reflect.Method;
/* loaded from: classes3.dex */
class WebAdTrackerImpl implements WebAdTracker {
    private static final String TAG = "MoatWebAdTracker";
    private final OnOffSwitch onOffSwitch;
    private final Optional<? extends ViewTracker> viewTracker;

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebAdTrackerImpl(@Nullable WebView webView, ActivityState activityState, OnOffSwitch onOffSwitch) {
        this.onOffSwitch = onOffSwitch;
        if (onOffSwitch.isDebugActive()) {
            Log.d(TAG, "In initialization method.");
        }
        if (webView == null) {
            if (onOffSwitch.isDebugActive()) {
                Log.e(TAG, "WebView is null. Will not track.");
            }
            this.viewTracker = Optional.empty();
            return;
        }
        this.viewTracker = Optional.of(new ViewTrackerImpl(webView, webView, false, activityState, onOffSwitch));
    }

    @Override // com.moat.analytics.mobile.aol.WebAdTracker
    public boolean track() {
        boolean track;
        boolean isDebugActive = this.onOffSwitch.isDebugActive();
        boolean z = false;
        if (isDebugActive) {
            try {
                Log.d(TAG, "In track method.");
            } catch (Exception e) {
                Exceptions.handleException(e);
            }
        }
        if (!this.viewTracker.isPresent()) {
            if (!isDebugActive) {
                track = false;
            } else {
                Log.e(TAG, "Internal tracker not available. Not tracking.");
                track = false;
            }
        } else {
            track = this.viewTracker.get().track();
        }
        z = track;
        if (isDebugActive) {
            Log.d(TAG, "Attempt to start tracking ad was " + (z ? "" : "un") + "successful.");
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class Postponer implements OnOffTrackerProxy.Postponer<WebAdTracker> {
        private static final Optional<Method> track;

        static {
            Optional<Method> empty = Optional.empty();
            try {
                empty = Optional.of(WebAdTracker.class.getMethod("track", new Class[0]));
            } catch (NoSuchMethodException e) {
                Exceptions.handleException(e);
            }
            track = empty;
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public boolean isQueueable(Method method) {
            return track.equals(Optional.of(method));
        }

        @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Postponer
        public Class<WebAdTracker> getMethodsOwner() {
            return WebAdTracker.class;
        }
    }
}
