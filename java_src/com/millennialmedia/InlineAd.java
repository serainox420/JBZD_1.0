package com.millennialmedia;

import android.app.Activity;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.ActivityListenerManager;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.adadapters.MMAdAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import java.lang.ref.WeakReference;
import java.util.Map;
/* loaded from: classes3.dex */
public class InlineAd extends AdPlacement {
    private static final String e = InlineAd.class.getSimpleName();
    private final WeakReference<ViewGroup> f;
    private InlineListener g;
    private InlineAdapter h;
    private InlineAbortListener i;
    private InlineAdMetadata j;
    private RelativeLayout k;
    private long l;
    private Integer m;
    private ThreadUtils.ScheduledRunnable n;
    private ThreadUtils.ScheduledRunnable o;
    private ThreadUtils.ScheduledRunnable p;
    private volatile ImpressionListener q;
    private volatile boolean r;
    private volatile boolean s;
    private volatile boolean t;
    private volatile boolean u;

    /* loaded from: classes3.dex */
    public interface InlineAbortListener {
        void onAbortFailed(InlineAd inlineAd);

        void onAborted(InlineAd inlineAd);
    }

    /* loaded from: classes3.dex */
    public interface InlineListener {
        void onAdLeftApplication(InlineAd inlineAd);

        void onClicked(InlineAd inlineAd);

        void onCollapsed(InlineAd inlineAd);

        void onExpanded(InlineAd inlineAd);

        void onRequestFailed(InlineAd inlineAd, InlineErrorStatus inlineErrorStatus);

        void onRequestSucceeded(InlineAd inlineAd);

        void onResize(InlineAd inlineAd, int i, int i2);

        void onResized(InlineAd inlineAd, int i, int i2, boolean z);
    }

    /* loaded from: classes3.dex */
    public static class InlineErrorStatus extends ErrorStatus {
        public InlineErrorStatus(int i) {
            super(i);
        }

        public InlineErrorStatus(int i, String str) {
            super(i, str);
        }
    }

    /* loaded from: classes3.dex */
    public static class InlineAdMetadata extends AdPlacementMetadata<InlineAdMetadata> {

        /* renamed from: a  reason: collision with root package name */
        private AdSize f4002a;

        public InlineAdMetadata() {
            super("inline");
        }

        public InlineAdMetadata setAdSize(AdSize adSize) {
            if (adSize == null) {
                MMLog.e(InlineAd.e, "Provided AdSize cannot be null");
            } else {
                this.f4002a = adSize;
            }
            return this;
        }

        public AdSize getAdSize() {
            return this.f4002a;
        }

        public int getWidth(InlineAd inlineAd) {
            if (this.f4002a == null || this.f4002a.width == 0) {
                ViewGroup viewGroup = (ViewGroup) inlineAd.f.get();
                if (viewGroup == null) {
                    return 0;
                }
                return ViewUtils.convertPixelsToDips(viewGroup.getWidth());
            }
            return this.f4002a.width;
        }

        public int getHeight(InlineAd inlineAd) {
            if (this.f4002a == null || this.f4002a.height == 0) {
                ViewGroup viewGroup = (ViewGroup) inlineAd.f.get();
                if (viewGroup == null) {
                    return 0;
                }
                return ViewUtils.convertPixelsToDips(viewGroup.getHeight());
            }
            return this.f4002a.height;
        }

        public int getWidthPixels(InlineAd inlineAd) {
            if (this.f4002a == null || this.f4002a.width == 0) {
                ViewGroup viewGroup = (ViewGroup) inlineAd.f.get();
                if (viewGroup == null) {
                    return 0;
                }
                return viewGroup.getWidth();
            }
            return (int) TypedValue.applyDimension(1, this.f4002a.width, EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics());
        }

        public int getHeightPixels(InlineAd inlineAd) {
            if (this.f4002a == null || this.f4002a.height == 0) {
                ViewGroup viewGroup = (ViewGroup) inlineAd.f.get();
                if (viewGroup == null) {
                    return 0;
                }
                return viewGroup.getHeight();
            }
            return (int) TypedValue.applyDimension(1, this.f4002a.height, EnvironmentUtils.getApplicationContext().getResources().getDisplayMetrics());
        }

        public Map<String, Object> toMap(InlineAd inlineAd) {
            Map<String, Object> map = super.toMap((AdPlacement) inlineAd);
            Utils.injectIfNotNull(map, "width", Integer.valueOf(getWidth(inlineAd)));
            Utils.injectIfNotNull(map, "height", Integer.valueOf(getHeight(inlineAd)));
            Utils.injectIfNotNull(map, "refreshRate", inlineAd.a());
            return map;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ImpressionListener {

        /* renamed from: a  reason: collision with root package name */
        ViewUtils.ViewabilityWatcher f3999a;
        int b;
        volatile ThreadUtils.ScheduledRunnable c;
        volatile boolean d = false;
        WeakReference<InlineAd> e;

        ImpressionListener(InlineAd inlineAd, View view, final long j, int i) {
            this.b = i;
            this.e = new WeakReference<>(inlineAd);
            this.f3999a = new ViewUtils.ViewabilityWatcher(view, new ViewUtils.ViewabilityListener() { // from class: com.millennialmedia.InlineAd.ImpressionListener.1
                @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
                public void onViewableChanged(View view2, boolean z) {
                    synchronized (ImpressionListener.this) {
                        if (z) {
                            if (ImpressionListener.this.c == null && !ImpressionListener.this.d) {
                                ImpressionListener.this.c = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.ImpressionListener.1.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        int i2 = 1;
                                        InlineAd inlineAd2 = ImpressionListener.this.e.get();
                                        if (inlineAd2 != null) {
                                            synchronized (ImpressionListener.this) {
                                                ImpressionListener.this.c = null;
                                                if (ImpressionListener.this.f3999a.viewable && !ImpressionListener.this.d) {
                                                    ImpressionListener.this.d = true;
                                                    if (j == 0) {
                                                        i2 = 0;
                                                    }
                                                    inlineAd2.a(i2);
                                                    ImpressionListener.this.f3999a.stopWatching();
                                                    inlineAd2.q = null;
                                                }
                                            }
                                        }
                                    }
                                }, j);
                            }
                        }
                        if (!z && ImpressionListener.this.c != null) {
                            ImpressionListener.this.c.cancel();
                            ImpressionListener.this.c = null;
                        }
                    }
                }
            });
        }

        protected void a() {
            if (this.f3999a != null) {
                this.f3999a.setMinViewabilityPercent(this.b);
                this.f3999a.startWatching();
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class AdSize {
        public static final int AUTO_HEIGHT = 0;
        public static final int AUTO_WIDTH = 0;
        public static final AdSize BANNER = new AdSize(320, 50);
        public static final AdSize FULL_BANNER = new AdSize(468, 60);
        public static final AdSize LARGE_BANNER = new AdSize(320, 100);
        public static final AdSize LEADERBOARD = new AdSize(728, 90);
        public static final AdSize MEDIUM_RECTANGLE = new AdSize(300, 250);
        public static final AdSize SMART_BANNER = new AdSize(0, 0);
        public final int height;
        public final int width;

        public AdSize(int i, int i2) {
            this.width = i <= 0 ? 0 : i;
            this.height = i2 <= 0 ? 0 : i2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            if (!(obj instanceof AdSize)) {
                return false;
            }
            AdSize adSize = (AdSize) obj;
            return this.width == adSize.width && this.height == adSize.height;
        }

        public int hashCode() {
            return (this.width * 31) + this.height;
        }

        public String toString() {
            return "Inline ad of size " + this.width + " by " + this.height;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class RefreshRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<InlineAd> f4003a;

        RefreshRunnable(InlineAd inlineAd) {
            this.f4003a = new WeakReference<>(inlineAd);
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean z = false;
            final InlineAd inlineAd = this.f4003a.get();
            if (inlineAd == null) {
                MMLog.e(InlineAd.e, "InlineAd instance has been destroyed, shutting down refresh behavior");
                return;
            }
            ViewGroup viewGroup = (ViewGroup) inlineAd.f.get();
            if (viewGroup == null) {
                MMLog.e(InlineAd.e, "InlineAd container has been destroyed, shutting down refresh behavior");
            } else if (!inlineAd.b()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(InlineAd.e, "Inline refresh disabled, aborting refresh behavior");
                }
                inlineAd.p = null;
            } else {
                Activity activityForView = ViewUtils.getActivityForView(viewGroup);
                if (activityForView == null) {
                    MMLog.e(InlineAd.e, "Unable to find valid activity context for placement container, aborting refresh");
                    return;
                }
                boolean z2 = ActivityListenerManager.getLifecycleState(activityForView) == ActivityListenerManager.LifecycleState.RESUMED;
                if (inlineAd.q == null || inlineAd.q.d) {
                    z = true;
                }
                if (viewGroup.isShown() && !inlineAd.s && !inlineAd.t && z2 && z) {
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.InlineAd.RefreshRunnable.1
                        @Override // java.lang.Runnable
                        public void run() {
                            inlineAd.d();
                        }
                    });
                }
                inlineAd.p = ThreadUtils.runOnWorkerThreadDelayed(this, inlineAd.a().intValue());
            }
        }
    }

    public static InlineAd createInstance(String str, ViewGroup viewGroup) throws MMException {
        if (!MMSDK.isInitialized()) {
            throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
        }
        if (viewGroup == null) {
            throw new MMException("Unable to create instance, ad container cannot be null");
        }
        if (viewGroup.getContext() == null) {
            throw new MMException("Unable to create instance, ad container must have an associated context");
        }
        return new InlineAd(str, viewGroup);
    }

    private InlineAd(String str, ViewGroup viewGroup) throws MMException {
        super(str);
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.f = new WeakReference<>(viewGroup);
    }

    public void request(InlineAdMetadata inlineAdMetadata) {
        MMLog.i(e, "Requesting playlist for placement ID: " + this.placementId);
        this.j = inlineAdMetadata;
        this.r = true;
        d();
        e();
    }

    public void abort(InlineAbortListener inlineAbortListener) {
        MMLog.i(e, "Attempting to abort playlist request for placement ID: " + this.placementId);
        this.i = inlineAbortListener;
        synchronized (this) {
            if (h()) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "Aborting playlist request for placement ID: " + this.placementId);
                }
                this.u = true;
                return;
            }
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.s || this.t) {
            MMLog.w(e, "Inline ad is resized or expanded, unable to request new ad");
        } else if (System.currentTimeMillis() < this.l + Handshake.getMinInlineRefreshRate()) {
            MMLog.e(e, "Too soon since last inline ad request, unable to request ad");
        } else {
            synchronized (this) {
                if (!h()) {
                    this.u = false;
                    this.i = null;
                    this.f4046a = "loading_play_list";
                    this.b = null;
                    this.l = System.currentTimeMillis();
                    if (this.j == null) {
                        this.j = new InlineAdMetadata();
                    }
                    final AdPlacement.RequestState requestState = getRequestState();
                    if (this.n != null) {
                        this.n.cancel();
                    }
                    int inlineTimeout = Handshake.getInlineTimeout();
                    this.n = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(InlineAd.e, "Play list load timed out");
                            }
                            InlineAd.this.c(requestState);
                        }
                    }, inlineTimeout);
                    final String impressionGroup = this.j.getImpressionGroup();
                    PlayListServer.loadPlayList(this.j.toMap(this), new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.InlineAd.2
                        @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                        public void onLoaded(PlayList playList) {
                            synchronized (InlineAd.this) {
                                if (InlineAd.this.c.compareRequest(requestState) && InlineAd.this.f4046a.equals("loading_play_list")) {
                                    InlineAd.this.f4046a = "play_list_loaded";
                                    InlineAd.this.b = playList;
                                    requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                                    InlineAd.this.c = requestState;
                                    InlineAd.this.a(requestState);
                                }
                            }
                        }

                        @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                        public void onLoadFailed(Throwable th) {
                            if (MMLog.isDebugEnabled()) {
                                MMLog.d(InlineAd.e, "Play list load failed");
                            }
                            InlineAd.this.c(requestState);
                        }
                    }, inlineTimeout);
                }
            }
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
                    c(copy);
                } else if (this.u) {
                    h(copy);
                } else {
                    final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                    final InlineAdapter inlineAdapter = (InlineAdapter) this.b.getNextAdAdapter(this, playListItemReporter);
                    ViewGroup viewGroup = this.f.get();
                    if (inlineAdapter != null && viewGroup != null) {
                        this.h = inlineAdapter;
                        int i = inlineAdapter.requestTimeout;
                        if (i > 0) {
                            if (this.o != null) {
                                this.o.cancel();
                            }
                            this.o = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.InlineAd.3
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (MMLog.isDebugEnabled()) {
                                        MMLog.d(InlineAd.e, "Ad adapter load timed out");
                                    }
                                    AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                                    InlineAd.this.b(copy);
                                }
                            }, i);
                        }
                        inlineAdapter.init(viewGroup.getContext(), new InlineAdapter.InlineAdapterListener() { // from class: com.millennialmedia.InlineAd.4
                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void initSucceeded() {
                                synchronized (InlineAd.this) {
                                    if (InlineAd.this.c.compare(copy)) {
                                        final ViewGroup viewGroup2 = (ViewGroup) InlineAd.this.f.get();
                                        if (viewGroup2 == null) {
                                            displayFailed();
                                            return;
                                        } else {
                                            ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.4.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    if (InlineAd.this.k != null) {
                                                        viewGroup2.removeView(InlineAd.this.k);
                                                    }
                                                    InlineAd.this.k = new RelativeLayout(viewGroup2.getContext());
                                                    viewGroup2.addView(InlineAd.this.k, new ViewGroup.LayoutParams(-1, -1));
                                                    inlineAdapter.display(InlineAd.this.k, InlineAd.this.j.getWidthPixels(InlineAd.this), InlineAd.this.j.getHeightPixels(InlineAd.this));
                                                }
                                            });
                                            return;
                                        }
                                    }
                                    if (MMLog.isDebugEnabled()) {
                                        MMLog.d(InlineAd.e, "initSucceeded called but request state is not valid");
                                    }
                                }
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void initFailed() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(InlineAd.e, "Ad adapter init failed");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                                InlineAd.this.b(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void displaySucceeded() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(InlineAd.e, "Display succeeded");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                                InlineAd.this.a(copy, inlineAdapter);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void displayFailed() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(InlineAd.e, "Ad adapter display failed");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -3);
                                InlineAd.this.b(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onResize(int i2, int i3) {
                                InlineAd.this.a(copy, i2, i3);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onResized(int i2, int i3, boolean z) {
                                InlineAd.this.a(copy, i2, i3, z);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onExpanded() {
                                InlineAd.this.e(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onCollapsed() {
                                InlineAd.this.f(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onClicked() {
                                InlineAd.this.d(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onAdLeftApplication() {
                                InlineAd.this.g(copy);
                            }

                            @Override // com.millennialmedia.internal.adadapters.InlineAdapter.InlineAdapterListener
                            public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                                InlineAd.this.a(xIncentiveEvent);
                            }
                        });
                        return;
                    }
                    AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                    b(copy);
                }
            }
        }
    }

    public void setListener(InlineListener inlineListener) {
        this.g = inlineListener;
    }

    public void setRefreshInterval(int i) {
        this.m = Integer.valueOf(Math.max(0, i));
        if (this.r) {
            e();
        }
    }

    Integer a() {
        return b() ? Integer.valueOf(Math.max(this.m.intValue(), Handshake.getMinInlineRefreshRate())) : this.m;
    }

    private void e() {
        synchronized (this) {
            if (!b() || this.p != null) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "Refresh disabled or already started, returning");
                }
                return;
            }
            this.p = ThreadUtils.runOnWorkerThreadDelayed(new RefreshRunnable(this), a().intValue());
        }
    }

    boolean b() {
        return this.m != null && this.m.intValue() > 0;
    }

    private void f() {
        if (this.n != null) {
            this.n.cancel();
            this.n = null;
        }
        if (this.o != null) {
            this.o.cancel();
            this.o = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        AdPlacementReporter.setDisplayed(this.c.getAdPlacementReporter(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAdAdapterLoadFailed called but request state is not valid");
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
    public void a(AdPlacement.RequestState requestState, InlineAdapter inlineAdapter) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onRequestSucceeded called but request state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onRequestSucceeded called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "loaded";
                MMLog.i(e, "Request succeeded");
                f();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                this.q = new ImpressionListener(this, this.k, a(inlineAdapter), b(inlineAdapter));
                this.q.a();
                final InlineListener inlineListener = this.g;
                if (inlineListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.5
                        @Override // java.lang.Runnable
                        public void run() {
                            inlineListener.onRequestSucceeded(InlineAd.this);
                            if (InlineAd.this.u) {
                                InlineAd.this.g();
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compareRequest(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onRequestFailed called but request state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter") && !this.f4046a.equals("loading_play_list")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onRequestFailed called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "load_failed";
                MMLog.w(e, "Request failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                f();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InlineListener inlineListener = this.g;
                if (inlineListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.6
                        @Override // java.lang.Runnable
                        public void run() {
                            inlineListener.onRequestFailed(InlineAd.this, new InlineErrorStatus(5));
                            if (InlineAd.this.u) {
                                InlineAd.this.g();
                            }
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(AdPlacement.RequestState requestState) {
        MMLog.i(e, "Ad clicked");
        AdPlacementReporter.setClicked(requestState.getAdPlacementReporter());
        final InlineListener inlineListener = this.g;
        if (inlineListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.7
                @Override // java.lang.Runnable
                public void run() {
                    inlineListener.onClicked(InlineAd.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdPlacement.RequestState requestState, final int i, final int i2) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onResize called but request state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad resizing");
            this.s = true;
            final InlineListener inlineListener = this.g;
            if (inlineListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.8
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onResize(InlineAd.this, i, i2);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdPlacement.RequestState requestState, final int i, final int i2, final boolean z) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onResized called but request state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad resized, is closed: " + z);
            if (z) {
                this.s = false;
            }
            final InlineListener inlineListener = this.g;
            if (inlineListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.9
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onResized(InlineAd.this, i, i2, z);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onExpanded called but request state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad expanded");
            this.t = true;
            this.s = false;
            final InlineListener inlineListener = this.g;
            if (inlineListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.10
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onExpanded(InlineAd.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onCollapsed called but request state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad collapsed");
            this.t = false;
            final InlineListener inlineListener = this.g;
            if (inlineListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.11
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onCollapsed(InlineAd.this);
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAdLeftApplication called but request state is not valid");
                }
                return;
            }
            MMLog.i(e, "Ad left application");
            final InlineListener inlineListener = this.g;
            if (inlineListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.12
                    @Override // java.lang.Runnable
                    public void run() {
                        inlineListener.onAdLeftApplication(InlineAd.this);
                    }
                });
            }
        }
    }

    private void h(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAborted called but request state is not valid");
                }
            } else if (!this.f4046a.equals("loading_ad_adapter")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onAborted called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "aborted";
                MMLog.i(e, "Ad aborted");
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final InlineAbortListener inlineAbortListener = this.i;
                if (inlineAbortListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.13
                        @Override // java.lang.Runnable
                        public void run() {
                            inlineAbortListener.onAborted(InlineAd.this);
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        MMLog.i(e, "Ad abort failed");
        final InlineAbortListener inlineAbortListener = this.i;
        if (inlineAbortListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.InlineAd.14
                @Override // java.lang.Runnable
                public void run() {
                    inlineAbortListener.onAbortFailed(InlineAd.this);
                }
            });
        }
    }

    private boolean h() {
        return !this.f4046a.equals("idle") && !this.f4046a.equals("load_failed") && !this.f4046a.equals("loaded") && !this.f4046a.equals("aborted");
    }

    private static long a(AdAdapter adAdapter) {
        if (!(adAdapter instanceof MMAdAdapter)) {
            return 1000L;
        }
        return ((MMAdAdapter) adAdapter).getImpressionDelay();
    }

    private static int b(AdAdapter adAdapter) {
        if (!(adAdapter instanceof MMAdAdapter)) {
            return 50;
        }
        return ((MMAdAdapter) adAdapter).getMinImpressionViewabilityPercentage();
    }
}
