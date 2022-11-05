package com.moat.analytics.mobile.aol;

import android.media.MediaPlayer;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.OnOffSwitch;
import java.util.Map;
/* loaded from: classes3.dex */
abstract class NoOp {
    NoOp() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class OnOffSwitch implements com.moat.analytics.mobile.aol.OnOffSwitch {
        @Override // com.moat.analytics.mobile.aol.OnOffSwitch
        public OnOffSwitch.OnOrOff getStatus() {
            return OnOffSwitch.OnOrOff.OFF;
        }

        @Override // com.moat.analytics.mobile.aol.OnOffSwitch
        public boolean isDebugActive() {
            return false;
        }

        @Override // com.moat.analytics.mobile.aol.OnOffSwitch
        public void register(OnOffSwitch.MoatOnOrOffListener moatOnOrOffListener) {
        }

        @Override // com.moat.analytics.mobile.aol.OnOffSwitch
        public void setDebugLogging(boolean z) {
        }

        @Override // com.moat.analytics.mobile.aol.OnOffSwitch
        public int getVWIntervalMillis() {
            return 200;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class WebAdTracker implements com.moat.analytics.mobile.aol.WebAdTracker {
        @Override // com.moat.analytics.mobile.aol.WebAdTracker
        public boolean track() {
            return false;
        }
    }

    /* loaded from: classes3.dex */
    static class NativeDisplayTracker implements com.moat.analytics.mobile.aol.NativeDisplayTracker {
        @Override // com.moat.analytics.mobile.aol.NativeDisplayTracker
        public boolean track(Map<String, String> map) {
            return false;
        }

        @Override // com.moat.analytics.mobile.aol.NativeDisplayTracker
        public void stopTracking() {
        }
    }

    /* loaded from: classes3.dex */
    static class NativeVideoTracker implements com.moat.analytics.mobile.aol.NativeVideoTracker {
        @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
        public void setDebug(boolean z) {
        }

        @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
        public void dispatchEvent(Map<String, Object> map) {
        }

        @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
        public void dispatchEvent(MoatAdEvent moatAdEvent) {
        }

        @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
        public boolean trackVideoAd(Map<String, String> map, MediaPlayer mediaPlayer, View view) {
            return false;
        }

        @Override // com.moat.analytics.mobile.aol.NativeVideoTracker
        public void changeTargetView(View view) {
        }
    }

    /* loaded from: classes3.dex */
    public static class MoatFactory extends com.moat.analytics.mobile.aol.MoatFactory {
        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.WebAdTracker createWebAdTracker(WebView webView) {
            return new WebAdTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
            return new WebAdTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.NativeDisplayTracker createNativeDisplayTracker(View view, String str) {
            return new NativeDisplayTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.NativeVideoTracker createNativeVideoTracker(String str) {
            return new NativeVideoTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.WebAdTracker createWebDisplayTracker(WebView webView) {
            return new WebAdTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public com.moat.analytics.mobile.aol.WebAdTracker createWebDisplayTracker(ViewGroup viewGroup) {
            return new WebAdTracker();
        }

        @Override // com.moat.analytics.mobile.aol.MoatFactory
        public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
            return null;
        }
    }
}
