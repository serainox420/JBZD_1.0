package com.millennialmedia;

import android.content.Context;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.InterstitialAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.lang.ref.WeakReference;
/* loaded from: classes3.dex */
public class InterstitialAd extends AdPlacement {
    private static final String e = InterstitialAd.class.getSimpleName();
    private WeakReference<Context> f;
    private InterstitialListener g;
    private InterstitialAdapter h;
    private ThreadUtils.ScheduledRunnable i;
    private ThreadUtils.ScheduledRunnable j;
    private ThreadUtils.ScheduledRunnable k;

    /* loaded from: classes3.dex */
    public interface InterstitialListener {
        void onAdLeftApplication(InterstitialAd interstitialAd);

        void onClicked(InterstitialAd interstitialAd);

        void onClosed(InterstitialAd interstitialAd);

        void onExpired(InterstitialAd interstitialAd);

        void onLoadFailed(InterstitialAd interstitialAd, InterstitialErrorStatus interstitialErrorStatus);

        void onLoaded(InterstitialAd interstitialAd);

        void onShowFailed(InterstitialAd interstitialAd, InterstitialErrorStatus interstitialErrorStatus);

        void onShown(InterstitialAd interstitialAd);
    }

    /* loaded from: classes3.dex */
    public static class InterstitialErrorStatus extends ErrorStatus {
        public static final int ALREADY_LOADED = 203;
        public static final int EXPIRED = 201;
        public static final int NOT_LOADED = 202;

        static {
            f4055a.put(201, "EXPIRED");
            f4055a.put(202, "NOT_LOADED");
            f4055a.put(Integer.valueOf((int) ALREADY_LOADED), "ALREADY_LOADED");
        }

        public InterstitialErrorStatus(int i, String str) {
            super(i, str);
        }

        public InterstitialErrorStatus(int i) {
            super(i);
        }
    }

    /* loaded from: classes3.dex */
    public static class InterstitialAdMetadata extends AdPlacementMetadata<InterstitialAdMetadata> {
        public InterstitialAdMetadata() {
            super("interstitial");
        }
    }

    /* loaded from: classes3.dex */
    public static class DisplayOptions {
        public Integer enterAnimationId;
        public Integer exitAnimationId;
        public boolean immersive;

        public DisplayOptions setImmersive(boolean z) {
            this.immersive = z;
            return this;
        }

        public DisplayOptions setTransitionAnimation(int i, int i2) {
            this.enterAnimationId = Integer.valueOf(i);
            this.exitAnimationId = Integer.valueOf(i2);
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ExpirationRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<InterstitialAd> f4017a;
        WeakReference<AdPlacement.RequestState> b;

        ExpirationRunnable(InterstitialAd interstitialAd, AdPlacement.RequestState requestState) {
            this.f4017a = new WeakReference<>(interstitialAd);
            this.b = new WeakReference<>(requestState);
        }

        @Override // java.lang.Runnable
        public void run() {
            InterstitialAd interstitialAd = this.f4017a.get();
            if (interstitialAd == null) {
                MMLog.e(InterstitialAd.e, "InterstitialAd instance has been destroyed, aborting expiration state change");
                return;
            }
            interstitialAd.k = null;
            AdPlacement.RequestState requestState = this.b.get();
            if (requestState == null) {
                MMLog.e(InterstitialAd.e, "No valid RequestState is available, unable to trigger expired state change");
            } else {
                interstitialAd.j(requestState);
            }
        }
    }

    public static InterstitialAd createInstance(String str) throws MMException {
        if (!MMSDK.isInitialized()) {
            throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
        }
        return new InterstitialAd(str);
    }

    private InterstitialAd(String str) throws MMException {
        super(str);
    }

    public void load(Context context, InterstitialAdMetadata interstitialAdMetadata) {
        MMLog.i(e, "Loading playlist for placement ID: " + this.placementId);
        this.f = new WeakReference<>(context);
        synchronized (this) {
            if (!this.f4046a.equals("idle") && !this.f4046a.equals("load_failed") && !this.f4046a.equals("expired") && !this.f4046a.equals("show_failed")) {
                MMLog.w(e, "Unable to load interstitial ad, state is invalid: " + this.f4046a);
                return;
            }
            this.f4046a = "loading_play_list";
            this.b = null;
            if (interstitialAdMetadata == null) {
                interstitialAdMetadata = new InterstitialAdMetadata();
            }
            final AdPlacement.RequestState requestState = getRequestState();
            if (this.i != null) {
                this.i.cancel();
            }
            int interstitialTimeout = Handshake.getInterstitialTimeout();
            this.i = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InterstitialAd.1
                @Override // java.lang.Runnable
                public void run() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(InterstitialAd.e, "Play list load timed out");
                    }
                    InterstitialAd.this.e(requestState);
                }
            }, interstitialTimeout);
            final String impressionGroup = interstitialAdMetadata.getImpressionGroup();
            PlayListServer.loadPlayList(interstitialAdMetadata.toMap(this), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.InterstitialAd.2
                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoaded(PlayList playList) {
                    synchronized (InterstitialAd.this) {
                        if (InterstitialAd.this.c.compareRequest(requestState)) {
                            InterstitialAd.this.f4046a = "play_list_loaded";
                            InterstitialAd.this.b = playList;
                            requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                            InterstitialAd.this.c = requestState;
                            InterstitialAd.this.a(requestState);
                        }
                    }
                }

                @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                public void onLoadFailed(Throwable th) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(InterstitialAd.e, "Play list load failed");
                    }
                    InterstitialAd.this.e(requestState);
                }
            }, interstitialTimeout);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdPlacement.RequestState requestState) {
        final AdPlacement.RequestState copy = requestState.copy();
        synchronized (this) {
            if (this.c.compareRequest(copy) && (this.f4046a.equals("play_list_loaded") || this.f4046a.equals("ad_adapter_load_failed"))) {
                this.f4046a = "loading_ad_adapter";
                copy.getItemHash();
                this.c = copy;
                if (!this.b.hasNext()) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(e, "Unable to find ad adapter in play list");
                    }
                    e(copy);
                    return;
                }
                final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                InterstitialAdapter interstitialAdapter = (InterstitialAdapter) this.b.getNextAdAdapter(this, playListItemReporter);
                Context context = this.f.get();
                if (interstitialAdapter != null && context != null) {
                    this.h = interstitialAdapter;
                    int i = interstitialAdapter.requestTimeout;
                    if (i > 0) {
                        if (this.j != null) {
                            this.j.cancel();
                        }
                        this.j = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InterstitialAd.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(InterstitialAd.e, "Ad adapter load timed out");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                                InterstitialAd.this.c(copy);
                            }
                        }, i);
                    }
                    interstitialAdapter.init(context, new InterstitialAdapter.InterstitialAdapterListener() { // from class: com.millennialmedia.InterstitialAd.4
                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void initSucceeded() {
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                            InterstitialAd.this.d(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void initFailed() {
                            AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                            InterstitialAd.this.c(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void shown() {
                            InterstitialAd.this.f(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void showFailed(InterstitialErrorStatus interstitialErrorStatus) {
                            synchronized (InterstitialAd.this) {
                                if (InterstitialAd.this.c.compare(copy)) {
                                    InterstitialAd.this.a(interstitialErrorStatus);
                                    return;
                                }
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(InterstitialAd.e, "show failed but load state is not valid");
                                }
                            }
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void onClosed() {
                            InterstitialAd.this.g(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void onClicked() {
                            InterstitialAd.this.h(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void onExpired() {
                            InterstitialAd.this.j(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void onAdLeftApplication() {
                            InterstitialAd.this.i(copy);
                        }

                        @Override // com.millennialmedia.internal.adadapters.InterstitialAdapter.InterstitialAdapterListener
                        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                            InterstitialAd.this.a(xIncentiveEvent);
                        }
                    });
                    return;
                }
                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                c(copy);
            }
        }
    }

    public void show(Context context) throws MMException {
        show(context, null);
    }

    public void show(Context context, DisplayOptions displayOptions) throws MMException {
        String str = null;
        if (context == null) {
            throw new MMException("Unable to show interstitial, specified context cannot be null");
        }
        synchronized (this) {
            if (!this.f4046a.equals("loaded")) {
                str = "Unable to show interstitial ad, state is not valid: " + this.f4046a;
            }
        }
        if (str != null) {
            a(new InterstitialErrorStatus(4, str));
            return;
        }
        c();
        this.h.show(context, displayOptions);
    }

    public void setListener(InterstitialListener interstitialListener) {
        this.g = interstitialListener;
    }

    public boolean isReady() {
        return this.f4046a.equals("loaded");
    }

    public boolean hasExpired() {
        return this.f4046a.equals("expired");
    }

    private void b() {
        if (this.i != null) {
            this.i.cancel();
        }
        if (this.j != null) {
            this.j.cancel();
        }
    }

    private void b(AdPlacement.RequestState requestState) {
        c();
        int interstitialExpirationDuration = Handshake.getInterstitialExpirationDuration();
        if (interstitialExpirationDuration > 0) {
            this.k = ThreadUtils.runOnWorkerThreadDelayed(new ExpirationRunnable(this, requestState), interstitialExpirationDuration);
        }
    }

    private void c() {
        if (this.k != null) {
            this.k.cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAdAdapterLoadFailed called but load state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAdAdapterLoadFailed called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "ad_adapter_load_failed";
                a(requestState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onLoadSucceeded called but load state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onLoadSucceeded called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "loaded";
                MMLog.i(e, "Load succeeded");
                b();
                b(requestState);
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InterstitialListener interstitialListener = this.g;
                if (interstitialListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.5
                        @Override // java.lang.Runnable
                        public void run() {
                            interstitialListener.onLoaded(InterstitialAd.this);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compareRequest(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onLoadFailed called but load state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter") && !this.f4046a.equals("loading_play_list")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onLoadFailed called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "load_failed";
                b();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                MMLog.w(e, "Load failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                final InterstitialListener interstitialListener = this.g;
                if (interstitialListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.6
                        @Override // java.lang.Runnable
                        public void run() {
                            interstitialListener.onLoadFailed(InterstitialAd.this, new InterstitialErrorStatus(5));
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onShown called but load state is not valid");
                }
                return;
            }
            this.f4046a = "shown";
            AdPlacementReporter.setDisplayed(requestState.getAdPlacementReporter(), 0);
            MMLog.i(e, "Ad shown");
            final InterstitialListener interstitialListener = this.g;
            if (interstitialListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.7
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onShown(InterstitialAd.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final InterstitialErrorStatus interstitialErrorStatus) {
        synchronized (this) {
            if (this.f4046a == "loaded") {
                this.f4046a = "show_failed";
            }
        }
        MMLog.i(e, "Ad show failed");
        final InterstitialListener interstitialListener = this.g;
        if (interstitialListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.8
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onShowFailed(InterstitialAd.this, interstitialErrorStatus);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onClosed called but load state is not valid");
                }
                return;
            }
            this.f4046a = "idle";
            MMLog.i(e, "Ad closed");
            final InterstitialListener interstitialListener = this.g;
            if (interstitialListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.9
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onClosed(InterstitialAd.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(AdPlacement.RequestState requestState) {
        MMLog.i(e, "Ad clicked");
        AdPlacementReporter.setClicked(requestState.getAdPlacementReporter());
        final InterstitialListener interstitialListener = this.g;
        if (interstitialListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.10
                @Override // java.lang.Runnable
                public void run() {
                    interstitialListener.onClicked(InterstitialAd.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAdLeftApplication called but load state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad left application");
            final InterstitialListener interstitialListener = this.g;
            if (interstitialListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.11
                    @Override // java.lang.Runnable
                    public void run() {
                        interstitialListener.onAdLeftApplication(InterstitialAd.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onExpired called but load state is not valid");
                }
            } else if (!this.f4046a.equals("loaded") && !this.f4046a.equals("show_failed")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onExpired called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "expired";
                MMLog.i(e, "Ad expired");
                final InterstitialListener interstitialListener = this.g;
                if (interstitialListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InterstitialAd.12
                        @Override // java.lang.Runnable
                        public void run() {
                            interstitialListener.onExpired(InterstitialAd.this);
                        }
                    });
                }
            }
        }
    }
}
