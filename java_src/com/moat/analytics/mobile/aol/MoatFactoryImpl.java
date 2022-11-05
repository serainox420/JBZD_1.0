package com.moat.analytics.mobile.aol;

import android.app.Activity;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.moat.analytics.mobile.aol.NativeDisplayTrackerImpl;
import com.moat.analytics.mobile.aol.NativeVideoTrackerImpl;
import com.moat.analytics.mobile.aol.NoOp;
import com.moat.analytics.mobile.aol.OnOffTrackerProxy;
import com.moat.analytics.mobile.aol.WebAdTrackerImpl;
import com.moat.analytics.mobile.aol.base.asserts.Asserts;
import com.moat.analytics.mobile.aol.base.exception.Exceptions;
import com.moat.analytics.mobile.aol.base.exception.MoatException;
import com.moat.analytics.mobile.aol.base.functional.Optional;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3.dex */
class MoatFactoryImpl extends MoatFactory {
    private static final String TAG = "MoatFactory";
    private static final AtomicReference<OnOffSwitch> onOffSwitch = new AtomicReference<>();
    private final ActivityState activityState;
    private final WebViewHound webViewHound;

    /* JADX INFO: Access modifiers changed from: package-private */
    public MoatFactoryImpl(Activity activity) throws MoatException {
        OnOffSwitch onOffSwitch2;
        this.webViewHound = new WebViewHoundImpl();
        if (onOffSwitch.get() == null) {
            NoOp.OnOffSwitch onOffSwitch3 = new NoOp.OnOffSwitch();
            try {
                onOffSwitch2 = new OnOffSwitchImpl(MoatNetImpl.instance);
            } catch (Exception e) {
                Exceptions.handleException(e);
                onOffSwitch2 = onOffSwitch3;
            }
            onOffSwitch.compareAndSet(null, onOffSwitch2);
        }
        this.activityState = new ActivityStateImpl(activity, onOffSwitch.get());
        this.activityState.listen();
    }

    MoatFactoryImpl(WebViewHound webViewHound, ActivityState activityState, OnOffSwitch onOffSwitch2) {
        Asserts.checkNotNull(webViewHound);
        Asserts.checkNotNull(activityState);
        Asserts.checkNotNull(onOffSwitch2);
        this.activityState = activityState;
        this.webViewHound = webViewHound;
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public WebAdTracker createWebAdTracker(WebView webView) {
        try {
            return createWebAdTrackerUnsafe(webView);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return new NoOp.WebAdTracker();
        }
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public WebAdTracker createWebAdTracker(ViewGroup viewGroup) {
        try {
            return createWebAdTrackerUnsafe(viewGroup);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return new NoOp.WebAdTracker();
        }
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public NativeDisplayTracker createNativeDisplayTracker(View view, String str) {
        try {
            return createNativeDisplayTrackerUnsafe(view, str);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return new NoOp.NativeDisplayTracker();
        }
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public NativeVideoTracker createNativeVideoTracker(String str) {
        try {
            return createNativeVideoTrackerUnsafe(str);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return new NoOp.NativeVideoTracker();
        }
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public <T> T createCustomTracker(MoatPlugin<T> moatPlugin) {
        try {
            return (T) createCustomTrackerUnsafe(moatPlugin);
        } catch (Exception e) {
            Exceptions.handleException(e);
            return moatPlugin.createNoOp();
        }
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public WebAdTracker createWebDisplayTracker(WebView webView) {
        return createWebAdTracker(webView);
    }

    @Override // com.moat.analytics.mobile.aol.MoatFactory
    public WebAdTracker createWebDisplayTracker(ViewGroup viewGroup) {
        return createWebAdTracker(viewGroup);
    }

    private WebAdTracker createWebAdTrackerUnsafe(WebView webView) throws MoatException {
        Asserts.checkNotNull(webView);
        final WeakReference weakReference = new WeakReference(webView);
        final OnOffSwitch onOffSwitch2 = onOffSwitch.get();
        return (WebAdTracker) OnOffTrackerProxy.create(onOffSwitch2, new OnOffTrackerProxy.Instantiator<WebAdTracker>() { // from class: com.moat.analytics.mobile.aol.MoatFactoryImpl.1
            @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Instantiator
            public Optional<WebAdTracker> create() {
                WebView webView2 = (WebView) weakReference.get();
                boolean isDebugActive = onOffSwitch2.isDebugActive();
                if (webView2 == null) {
                    if (isDebugActive) {
                        Log.e(MoatFactoryImpl.TAG, "Target ViewGroup is null. Not creating WebAdTracker.");
                    }
                    return Optional.empty();
                }
                if (isDebugActive) {
                    Log.d(MoatFactoryImpl.TAG, "Creating WebAdTracker for " + webView2.getClass().getSimpleName() + "@" + webView2.hashCode());
                }
                return Optional.of(new WebAdTrackerImpl(webView2, MoatFactoryImpl.this.activityState, onOffSwitch2));
            }
        }, new WebAdTrackerImpl.Postponer());
    }

    private WebAdTracker createWebAdTrackerUnsafe(ViewGroup viewGroup) throws MoatException {
        Asserts.checkNotNull(viewGroup);
        final OnOffSwitch onOffSwitch2 = onOffSwitch.get();
        final WeakReference weakReference = new WeakReference(viewGroup);
        return (WebAdTracker) OnOffTrackerProxy.create(onOffSwitch2, new OnOffTrackerProxy.Instantiator<WebAdTracker>() { // from class: com.moat.analytics.mobile.aol.MoatFactoryImpl.2
            @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Instantiator
            public Optional<WebAdTracker> create() throws MoatException {
                ViewGroup viewGroup2 = (ViewGroup) weakReference.get();
                boolean isDebugActive = onOffSwitch2.isDebugActive();
                if (viewGroup2 == null) {
                    if (isDebugActive) {
                        Log.e(MoatFactoryImpl.TAG, "Target ViewGroup is null. Not creating WebAdTracker.");
                    }
                    return Optional.empty();
                }
                if (isDebugActive) {
                    Log.d(MoatFactoryImpl.TAG, "Creating WebAdTracker for " + viewGroup2.getClass().getSimpleName() + "@" + viewGroup2.hashCode());
                }
                Optional<WebView> sniff = MoatFactoryImpl.this.webViewHound.sniff(viewGroup2);
                boolean isPresent = sniff.isPresent();
                if (isDebugActive) {
                    Log.e(MoatFactoryImpl.TAG, "WebView " + (isPresent ? "" : "not ") + "found inside of ad container.");
                }
                return Optional.of(new WebAdTrackerImpl(sniff.orElse(null), MoatFactoryImpl.this.activityState, onOffSwitch2));
            }
        }, new WebAdTrackerImpl.Postponer());
    }

    private NativeDisplayTracker createNativeDisplayTrackerUnsafe(View view, final String str) throws MoatException {
        Asserts.checkNotNull(view);
        final OnOffSwitch onOffSwitch2 = onOffSwitch.get();
        final WeakReference weakReference = new WeakReference(view);
        return (NativeDisplayTracker) OnOffTrackerProxy.create(onOffSwitch2, new OnOffTrackerProxy.Instantiator<NativeDisplayTracker>() { // from class: com.moat.analytics.mobile.aol.MoatFactoryImpl.3
            @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Instantiator
            public Optional<NativeDisplayTracker> create() {
                View view2 = (View) weakReference.get();
                if (view2 == null) {
                    if (onOffSwitch2.isDebugActive()) {
                        Log.e(MoatFactoryImpl.TAG, "Target view is null. Not creating NativeDisplayTracker.");
                    }
                    return Optional.empty();
                }
                if (onOffSwitch2.isDebugActive()) {
                    Log.d(MoatFactoryImpl.TAG, "Creating NativeDisplayTracker for " + view2.getClass().getSimpleName() + "@" + view2.hashCode());
                }
                return Optional.of(new NativeDisplayTrackerImpl(view2, str, MoatFactoryImpl.this.activityState, onOffSwitch2));
            }
        }, new NativeDisplayTrackerImpl.Postponer());
    }

    private NativeVideoTracker createNativeVideoTrackerUnsafe(final String str) throws MoatException {
        final OnOffSwitch onOffSwitch2 = onOffSwitch.get();
        return (NativeVideoTracker) OnOffTrackerProxy.create(onOffSwitch2, new OnOffTrackerProxy.Instantiator<NativeVideoTracker>() { // from class: com.moat.analytics.mobile.aol.MoatFactoryImpl.4
            @Override // com.moat.analytics.mobile.aol.OnOffTrackerProxy.Instantiator
            public Optional<NativeVideoTracker> create() {
                if (onOffSwitch2.isDebugActive()) {
                    Log.d(MoatFactoryImpl.TAG, "Creating NativeVideo tracker.");
                }
                return Optional.of(new NativeVideoTrackerImpl(str, MoatFactoryImpl.this.activityState, onOffSwitch2));
            }
        }, new NativeVideoTrackerImpl.Postponer());
    }

    public <T> T createCustomTrackerUnsafe(MoatPlugin<T> moatPlugin) throws MoatException {
        return moatPlugin.create(this.activityState, onOffSwitch.get());
    }
}
