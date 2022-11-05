package com.millennialmedia;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.net.Uri;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.AdPlacementMetadata;
import com.millennialmedia.internal.AdPlacementReporter;
import com.millennialmedia.internal.ErrorStatus;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.PlayList;
import com.millennialmedia.internal.adadapters.AdAdapter;
import com.millennialmedia.internal.adadapters.MMAdAdapter;
import com.millennialmedia.internal.adadapters.NativeAdapter;
import com.millennialmedia.internal.playlistserver.PlayListServer;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import io.fabric.sdk.android.services.b.b;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes3.dex */
public class NativeAd extends AdPlacement {
    public static final String COMPONENT_ID_BODY = "body";
    public static final String COMPONENT_ID_CALL_TO_ACTION = "callToAction";
    public static final String COMPONENT_ID_DISCLAIMER = "disclaimer";
    public static final String COMPONENT_ID_ICON_IMAGE = "iconImage";
    public static final String COMPONENT_ID_MAIN_IMAGE = "mainImage";
    public static final String COMPONENT_ID_RATING = "rating";
    public static final String COMPONENT_ID_TITLE = "title";
    public static final String NATIVE_TYPE_INLINE = "inline";
    private static final String e = NativeAd.class.getSimpleName();
    private WeakReference<Context> f;
    private NativeListener g;
    private NativeAdapter h;
    private boolean i;
    private ThreadUtils.ScheduledRunnable j;
    private ThreadUtils.ScheduledRunnable k;
    private ThreadUtils.ScheduledRunnable l;
    public Map<String, List<Object>> loadedComponents;
    private ImpressionReporter m;
    private boolean n;
    private Handshake.NativeTypeDefinition o;
    private List<String> p;
    private Map<String, Set<Integer>> q;
    private List<NativeAdapter.TextComponentInfo> r;
    private List<NativeAdapter.TextComponentInfo> s;
    private List<NativeAdapter.TextComponentInfo> t;
    private List<NativeAdapter.TextComponentInfo> u;
    private List<NativeAdapter.TextComponentInfo> v;
    private List<NativeAdapter.ImageComponentInfo> w;
    private List<NativeAdapter.ImageComponentInfo> x;

    /* loaded from: classes3.dex */
    public enum ComponentName {
        TITLE,
        BODY,
        ICON_IMAGE,
        MAIN_IMAGE,
        CALL_TO_ACTION,
        RATING,
        DISCLAIMER
    }

    /* loaded from: classes3.dex */
    public interface NativeListener {
        void onAdLeftApplication(NativeAd nativeAd);

        void onClicked(NativeAd nativeAd, ComponentName componentName, int i);

        void onExpired(NativeAd nativeAd);

        void onLoadFailed(NativeAd nativeAd, NativeErrorStatus nativeErrorStatus);

        void onLoaded(NativeAd nativeAd);
    }

    /* loaded from: classes3.dex */
    public static class NativeErrorStatus extends ErrorStatus {
        public static final int EXPIRED = 301;

        static {
            f4055a.put(Integer.valueOf((int) EXPIRED), "EXPIRED");
        }

        public NativeErrorStatus(int i) {
            super(i);
        }

        public NativeErrorStatus(int i, String str, Throwable th) {
            super(i, str, th);
        }
    }

    /* loaded from: classes3.dex */
    public static class NativeAdMetadata extends AdPlacementMetadata<NativeAdMetadata> {
        public NativeAdMetadata() {
            super("native");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class ImpressionReporter implements ViewUtils.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        ViewUtils.ViewabilityWatcher f4034a;
        volatile ThreadUtils.ScheduledRunnable b;
        final NativeAd c;
        final View d;
        final long e;

        ImpressionReporter(NativeAd nativeAd, View view, long j) {
            this.c = nativeAd;
            this.d = view;
            this.e = j;
        }

        protected void a() {
            if (this.f4034a == null) {
                this.f4034a = new ViewUtils.ViewabilityWatcher(this.d, this);
            }
            this.f4034a.setMinViewabilityPercent(50);
            this.f4034a.startWatching();
        }

        public void cancel() {
            synchronized (this) {
                b();
                if (this.f4034a != null) {
                    MMLog.d(NativeAd.e, "Stopping previous impression viewability watcher");
                    this.f4034a.stopWatching();
                    this.f4034a = null;
                }
            }
        }

        @Override // com.millennialmedia.internal.utils.ViewUtils.ViewabilityListener
        public void onViewableChanged(View view, boolean z) {
            synchronized (this) {
                if (z) {
                    if (!c() && !this.c.n) {
                        a(this.c);
                    }
                }
                if (!z) {
                    b();
                }
            }
        }

        private void a(final NativeAd nativeAd) {
            this.b = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.ImpressionReporter.1
                @Override // java.lang.Runnable
                public void run() {
                    MMLog.d(NativeAd.e, "Preparing impression timer runnable");
                    synchronized (ImpressionReporter.this) {
                        if (ImpressionReporter.this.f4034a.viewable) {
                            int i = 1;
                            if (ImpressionReporter.this.e == 0) {
                                i = 0;
                            }
                            nativeAd.a(nativeAd.c.getAdPlacementReporter(), i);
                        }
                        ImpressionReporter.this.cancel();
                    }
                }
            }, this.e);
        }

        private void b() {
            if (this.b != null) {
                MMLog.d(NativeAd.e, "Cancelling previous impression timer runnable");
                this.b.cancel();
                this.b = null;
            }
        }

        private boolean c() {
            return this.b != null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class ExpirationRunnable implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<NativeAd> f4033a;
        WeakReference<AdPlacement.RequestState> b;

        ExpirationRunnable(NativeAd nativeAd, AdPlacement.RequestState requestState) {
            this.f4033a = new WeakReference<>(nativeAd);
            this.b = new WeakReference<>(requestState);
        }

        @Override // java.lang.Runnable
        public void run() {
            NativeAd nativeAd = this.f4033a.get();
            if (nativeAd == null) {
                MMLog.e(NativeAd.e, "NativeAd instance has been destroyed, aborting expiration state change");
                return;
            }
            nativeAd.l = null;
            AdPlacement.RequestState requestState = this.b.get();
            if (requestState == null) {
                MMLog.e(NativeAd.e, "No valid RequestStateComponents is available, unable to trigger expired state change");
            } else {
                nativeAd.f(requestState);
            }
        }
    }

    public static NativeAd createInstance(String str, String str2) throws MMException {
        return createInstance(str, new String[]{str2});
    }

    public static NativeAd createInstance(String str, String[] strArr) throws MMException {
        if (!MMSDK.isInitialized()) {
            throw new MMInitializationException("Unable to create instance, SDK must be initialized first");
        }
        return new NativeAd(str, strArr);
    }

    private NativeAd(String str, String[] strArr) throws MMException {
        super(str);
        String str2;
        this.i = false;
        this.n = false;
        this.q = new HashMap();
        this.loadedComponents = new HashMap();
        if (strArr == null || strArr.length == 0 || strArr[0] == null || strArr[0].isEmpty()) {
            throw new MMException("Unable to create native ad, nativeTypes is required");
        }
        ArrayList arrayList = new ArrayList();
        Map<String, Handshake.NativeTypeDefinition> nativeTypeDefinitions = Handshake.getNativeTypeDefinitions();
        for (String str3 : strArr) {
            Iterator<Map.Entry<String, Handshake.NativeTypeDefinition>> it = nativeTypeDefinitions.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    str2 = null;
                    break;
                }
                Map.Entry<String, Handshake.NativeTypeDefinition> next = it.next();
                str2 = next.getKey();
                if (str3.equals(next.getValue().typeName)) {
                    break;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            } else {
                throw new MMException("Unable to load native ad, specified native type <" + str3 + "> is not recognized");
            }
        }
        this.p = arrayList;
    }

    public void load(Context context, NativeAdMetadata nativeAdMetadata) throws MMException {
        MMLog.i(e, "Loading playlist for placement ID: " + this.placementId);
        if (context == null) {
            throw new MMException("Unable to load native, specified context cannot be null");
        }
        this.f = new WeakReference<>(context);
        synchronized (this) {
            if (this.f4046a.equals("idle") || this.f4046a.equals("load_failed") || this.f4046a.equals("loaded")) {
                this.f4046a = "loading_play_list";
                this.b = null;
                this.q.clear();
                this.loadedComponents.clear();
                this.i = false;
                if (nativeAdMetadata == null) {
                    nativeAdMetadata = new NativeAdMetadata();
                }
                final AdPlacement.RequestState requestState = getRequestState();
                if (this.j != null) {
                    this.j.cancel();
                }
                int nativeTimeout = Handshake.getNativeTimeout();
                this.j = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(NativeAd.e, "Play list load timed out");
                        }
                        NativeAd.this.e(requestState);
                    }
                }, nativeTimeout);
                Map<String, Object> map = nativeAdMetadata.toMap(this);
                map.put(AdPlacementMetadata.METADATA_KEY_NATIVE_TYPES, this.p);
                final String impressionGroup = nativeAdMetadata.getImpressionGroup();
                PlayListServer.loadPlayList(map, new PlayListServer.PlayListLoadListener() { // from class: com.millennialmedia.NativeAd.2
                    @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                    public void onLoaded(PlayList playList) {
                        synchronized (NativeAd.this) {
                            if (NativeAd.this.c.compareRequest(requestState)) {
                                NativeAd.this.f4046a = "play_list_loaded";
                                NativeAd.this.b = playList;
                                requestState.setAdPlacementReporter(AdPlacementReporter.getPlayListReporter(playList, impressionGroup));
                                NativeAd.this.c = requestState;
                                NativeAd.this.n = false;
                                NativeAd.this.a(requestState);
                            }
                        }
                    }

                    @Override // com.millennialmedia.internal.playlistserver.PlayListServer.PlayListLoadListener
                    public void onLoadFailed(Throwable th) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(NativeAd.e, "Play list load failed");
                        }
                        NativeAd.this.e(requestState);
                    }
                }, nativeTimeout);
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
                    e(copy);
                    return;
                }
                final AdPlacementReporter.PlayListItemReporter playListItemReporter = AdPlacementReporter.getPlayListItemReporter(requestState.getAdPlacementReporter());
                NativeAdapter nativeAdapter = (NativeAdapter) this.b.getNextAdAdapter(this, playListItemReporter);
                Context context = this.f.get();
                if (nativeAdapter != null && context != null) {
                    this.h = nativeAdapter;
                    int i = nativeAdapter.requestTimeout;
                    if (i > 0) {
                        if (this.k != null) {
                            this.k.cancel();
                        }
                        this.k = ThreadUtils.runOnWorkerThreadDelayed(new Runnable() { // from class: com.millennialmedia.NativeAd.3
                            @Override // java.lang.Runnable
                            public void run() {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(NativeAd.e, "Ad adapter load timed out");
                                }
                                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter, -2);
                                NativeAd.this.c(copy);
                            }
                        }, i);
                    }
                    nativeAdapter.init(new AnonymousClass4(copy, nativeAdapter, playListItemReporter));
                    return;
                }
                AdPlacementReporter.reportPlayListItem(copy.getAdPlacementReporter(), playListItemReporter);
                c(copy);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.millennialmedia.NativeAd$4  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass4 implements NativeAdapter.NativeAdapterListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ AdPlacement.RequestState f4023a;
        final /* synthetic */ NativeAdapter b;
        final /* synthetic */ AdPlacementReporter.PlayListItemReporter c;

        AnonymousClass4(AdPlacement.RequestState requestState, NativeAdapter nativeAdapter, AdPlacementReporter.PlayListItemReporter playListItemReporter) {
            this.f4023a = requestState;
            this.b = nativeAdapter;
            this.c = playListItemReporter;
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void initSucceeded() {
            synchronized (NativeAd.this) {
                if (NativeAd.this.c.compare(this.f4023a)) {
                    ThreadUtils.runOnUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            final boolean a2 = NativeAd.this.a(AnonymousClass4.this.b);
                            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.NativeAd.4.1.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    if (a2) {
                                        AdPlacementReporter.reportPlayListItem(AnonymousClass4.this.f4023a.getAdPlacementReporter(), AnonymousClass4.this.c);
                                        NativeAd.this.d(AnonymousClass4.this.f4023a);
                                        return;
                                    }
                                    AdPlacementReporter.reportPlayListItem(AnonymousClass4.this.f4023a.getAdPlacementReporter(), AnonymousClass4.this.c, -3);
                                    NativeAd.this.c(AnonymousClass4.this.f4023a);
                                }
                            });
                        }
                    });
                }
            }
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void initFailed(Throwable th) {
            AdPlacementReporter.reportPlayListItem(this.f4023a.getAdPlacementReporter(), this.c, -3);
            NativeAd.this.c(this.f4023a);
        }

        @Override // com.millennialmedia.internal.adadapters.NativeAdapter.NativeAdapterListener
        public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
            NativeAd.this.a(xIncentiveEvent);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(NativeAdapter nativeAdapter) {
        String type = nativeAdapter.getType();
        if (type == null) {
            MMLog.e(e, "Unable to load components, native type is not set");
            return false;
        } else if (!this.p.contains(type)) {
            MMLog.e(e, "Unable to load components, native type <" + type + "> is not a requested native type");
            return false;
        } else {
            this.o = Handshake.getNativeTypeDefinition(type);
            if (this.o == null) {
                MMLog.e(e, "Unable to load components, unable to find list of required components for native type <" + type + ">");
                return false;
            }
            this.u = nativeAdapter.getTitleList();
            a("title", ComponentName.TITLE, this.u);
            this.r = nativeAdapter.getBodyList();
            a(COMPONENT_ID_BODY, ComponentName.BODY, this.r);
            this.w = nativeAdapter.getIconImageList();
            b(COMPONENT_ID_ICON_IMAGE, ComponentName.ICON_IMAGE, this.w);
            this.x = nativeAdapter.getMainImageList();
            b(COMPONENT_ID_MAIN_IMAGE, ComponentName.MAIN_IMAGE, this.x);
            this.v = nativeAdapter.getCallToActionList();
            c(COMPONENT_ID_CALL_TO_ACTION, ComponentName.CALL_TO_ACTION, this.v);
            this.t = nativeAdapter.getRatingList();
            a(COMPONENT_ID_RATING, ComponentName.RATING, this.t);
            this.s = nativeAdapter.getDisclaimerList();
            if (this.s.isEmpty()) {
                NativeAdapter.TextComponentInfo textComponentInfo = new NativeAdapter.TextComponentInfo();
                textComponentInfo.value = "Sponsored";
                this.s.add(textComponentInfo);
            }
            a(COMPONENT_ID_DISCLAIMER, ComponentName.DISCLAIMER, this.s);
            return a(type);
        }
    }

    private boolean a(String str) {
        ArrayList arrayList = new ArrayList();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.o.componentDefinitions) {
            if (componentDefinition != null) {
                int i = componentDefinition.adverstiserRequired;
                List<Object> list = this.loadedComponents.get(componentDefinition.componentId);
                if (list == null || list.size() < i) {
                    arrayList.add(componentDefinition.componentId);
                }
            } else {
                MMLog.e(e, String.format("Missing configuration data for native type: %s.", str));
                return false;
            }
        }
        if (arrayList.size() > 0) {
            MMLog.e(e, "Unable to load required components <" + TextUtils.join(", ", arrayList) + "> for native type <" + str + ">");
            return false;
        }
        return true;
    }

    private void a(String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f.get();
        if (context != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                NativeAdapter.TextComponentInfo textComponentInfo = list.get(i2);
                if (textComponentInfo != null) {
                    TextView textView = new TextView(context);
                    textView.setText(textComponentInfo.value);
                    a(textView, componentName, i2, textComponentInfo);
                    arrayList.add(textView);
                }
                i = i2 + 1;
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    private void b(String str, ComponentName componentName, List<NativeAdapter.ImageComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f.get();
        if (context != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                NativeAdapter.ImageComponentInfo imageComponentInfo = list.get(i2);
                if (imageComponentInfo != null) {
                    BitmapDrawable bitmapDrawable = new BitmapDrawable(imageComponentInfo.bitmap);
                    ImageView imageView = new ImageView(context);
                    imageView.setImageDrawable(bitmapDrawable);
                    a(imageView, componentName, i2, imageComponentInfo);
                    arrayList.add(imageView);
                }
                i = i2 + 1;
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    private void c(String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list) {
        ArrayList arrayList = new ArrayList();
        Context context = this.f.get();
        if (context != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= list.size()) {
                    break;
                }
                NativeAdapter.TextComponentInfo textComponentInfo = list.get(i2);
                if (textComponentInfo != null) {
                    Button button = new Button(context);
                    button.setText(textComponentInfo.value);
                    a(button, componentName, i2, textComponentInfo);
                    arrayList.add(button);
                }
                i = i2 + 1;
            }
        }
        this.loadedComponents.put(str, arrayList);
    }

    public void setListener(NativeListener nativeListener) {
        this.g = nativeListener;
    }

    public boolean isReady() {
        return this.f4046a.equals("loaded");
    }

    public boolean hasExpired() {
        return this.f4046a.equals("expired");
    }

    public void invokeDefaultAction() {
        if (!isReady()) {
            MMLog.e(e, "Unable to invoke default action, ad not loaded");
        } else if (this.h != null) {
            a(this.c.getAdPlacementReporter(), (NativeAdapter.ComponentInfo) null);
            a("default", this.h.getDefaultAction());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str, String str2) {
        if (str2 == null) {
            MMLog.e(e, "Unable to invoke " + str + " action, url is null");
            return;
        }
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str2));
        Context context = this.f.get();
        if (context != null && Utils.startActivity(context, intent)) {
            e();
        }
    }

    public void fireImpression() throws MMException {
        if (!isReady()) {
            Utils.logAndFireMMException(e, "Native ad is not in a loaded state, you must load before showing");
        } else if (this.i) {
            MMLog.w(e, "Impression firing is disabled when using a managed layout.");
        } else {
            b();
            MMLog.i(e, "All required components have been accessed, firing impression");
            a(this.c.getAdPlacementReporter(), -1);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdPlacementReporter adPlacementReporter, int i) {
        if (!this.n) {
            this.n = true;
            AdPlacementReporter.setDisplayed(adPlacementReporter, i);
            a(this.h.getImpressionTrackers());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AdPlacementReporter adPlacementReporter, NativeAdapter.ComponentInfo componentInfo) {
        List<String> clickTrackers;
        a(adPlacementReporter, 2);
        AdPlacementReporter.setClicked(adPlacementReporter);
        if (componentInfo == null || componentInfo.clickTrackerUrls == null) {
            clickTrackers = this.h.getClickTrackers();
        } else {
            clickTrackers = componentInfo.clickTrackerUrls;
        }
        a(clickTrackers);
    }

    private void a(final List<String> list) {
        if (list != null) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.NativeAd.5
                @Override // java.lang.Runnable
                public void run() {
                    for (String str : list) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.d(NativeAd.e, "Firing tracking url = " + str);
                        }
                        HttpUtils.getContentFromGetRequest(str);
                    }
                }
            });
        }
    }

    public String getNativeType() {
        if (!isReady()) {
            MMLog.e(e, "Unable to get native type, ad not loaded");
            return null;
        } else if (this.h == null) {
            return null;
        } else {
            return this.o.typeName;
        }
    }

    public TextView getTitle() {
        return getTitle(1);
    }

    public TextView getTitle(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get title, ad not loaded");
            return null;
        }
        return (TextView) a(i, "title", "title");
    }

    public TextView getBody() {
        return getBody(1);
    }

    public TextView getBody(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get body, ad not loaded");
            return null;
        }
        return (TextView) a(i, COMPONENT_ID_BODY, COMPONENT_ID_BODY);
    }

    public ImageView getIconImage() {
        return getIconImage(1);
    }

    public ImageView getIconImage(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get icon image, ad not loaded");
            return null;
        }
        return (ImageView) a(i, COMPONENT_ID_ICON_IMAGE, "icon image");
    }

    public ImageView getMainImage() {
        return getMainImage(1);
    }

    public ImageView getMainImage(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get main image, ad not loaded");
            return null;
        }
        return (ImageView) a(i, COMPONENT_ID_MAIN_IMAGE, "main image");
    }

    public Button getCallToActionButton() {
        return getCallToActionButton(1);
    }

    public Button getCallToActionButton(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get call to action button, ad not loaded");
            return null;
        }
        return (Button) a(i, COMPONENT_ID_CALL_TO_ACTION, "call to action");
    }

    public TextView getRating() {
        return getRating(1);
    }

    public TextView getRating(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get rating, ad not loaded");
            return null;
        }
        return (TextView) a(i, COMPONENT_ID_RATING, COMPONENT_ID_RATING);
    }

    public TextView getDisclaimer() {
        return getDisclaimer(1);
    }

    public TextView getDisclaimer(int i) {
        if (!isReady()) {
            MMLog.e(e, "Unable to get disclaimer, ad not loaded");
            return null;
        }
        return (TextView) a(i, COMPONENT_ID_DISCLAIMER, COMPONENT_ID_DISCLAIMER);
    }

    public void fireCallToActionClicked() {
        NativeAdapter.ComponentInfo a2 = a(ComponentName.CALL_TO_ACTION, 1);
        if (a2 == null) {
            MMLog.e(e, "Unable to fire clicked, found component info is null");
        } else {
            a(this.c.getAdPlacementReporter(), a2);
        }
    }

    public String getCallToActionUrl() {
        NativeAdapter.ComponentInfo a2 = a(ComponentName.CALL_TO_ACTION, 1);
        if (a2 == null) {
            MMLog.e(e, "Unable to get call to action url, found component info is not for a call to action component");
            return null;
        }
        return a2.clickUrl;
    }

    public String getImageUrl(ComponentName componentName, int i) {
        NativeAdapter.ComponentInfo a2 = a(componentName, i);
        if (!(a2 instanceof NativeAdapter.ImageComponentInfo)) {
            MMLog.e(e, "Unable to get image url, found component info is not for a image component");
            return null;
        }
        return ((NativeAdapter.ImageComponentInfo) a2).bitmapUrl;
    }

    private NativeAdapter.ComponentInfo a(ComponentName componentName, int i) {
        List list;
        if (componentName == ComponentName.CALL_TO_ACTION) {
            list = this.v;
        } else if (componentName == ComponentName.ICON_IMAGE) {
            list = this.w;
        } else {
            list = componentName == ComponentName.MAIN_IMAGE ? this.x : null;
        }
        if (list == null) {
            MMLog.e(e, "Unable to get component info for component name <" + componentName + "> and instance id <" + i + ">, did not find component info list");
            return null;
        } else if (i < 1) {
            MMLog.e(e, "Unable to get component info for component name <" + componentName + "> and instance id <" + i + ">, instance id must be greater than 0");
            return null;
        } else if (list.size() < i) {
            MMLog.e(e, "Unable to get component info for component name <" + componentName + "> and instance id <" + i + ">, only <" + list.size() + "> instances found");
            return null;
        } else {
            int i2 = i - 1;
            NativeAdapter.ComponentInfo componentInfo = (NativeAdapter.ComponentInfo) list.get(i2);
            if (componentInfo == null) {
                MMLog.e(e, "Unable to get component info for component name <" + componentName + "> and instance id <" + i2 + ">, found value is null");
                return null;
            }
            return componentInfo;
        }
    }

    private Object a(int i, String str, String str2) {
        if (i < 1) {
            MMLog.e(e, "Unable to retrieve the requested <" + str2 + "> instance, instance value must be 1 or greater");
            return null;
        }
        List<Object> list = this.loadedComponents.get(str);
        if (list.size() < i) {
            MMLog.e(e, "Unable to retrieve the requested <" + str2 + "> instance <" + i + ">, only <" + list.size() + "> instances available");
            return null;
        }
        a(str, i);
        return list.get(i - 1);
    }

    private void a(View view, final ComponentName componentName, final int i, final NativeAdapter.ComponentInfo componentInfo) {
        final AdPlacementReporter adPlacementReporter = this.c.getAdPlacementReporter();
        view.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.NativeAd.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view2) {
                MMLog.i(NativeAd.e, "Ad clicked");
                NativeAd.this.a(adPlacementReporter, componentInfo);
                try {
                    NativeAd.this.h.getClass().getDeclaredMethod("onAdClicked", new Class[0]).invoke(NativeAd.this.h, new Object[0]);
                } catch (Exception e2) {
                }
                final NativeListener nativeListener = NativeAd.this.g;
                if (nativeListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.6.1
                        @Override // java.lang.Runnable
                        public void run() {
                            nativeListener.onClicked(NativeAd.this, componentName, i);
                        }
                    });
                }
                NativeAd.this.a("click", componentInfo.clickUrl);
            }
        });
    }

    private void a(String str, int i) {
        Set<Integer> set = this.q.get(str);
        if (set == null) {
            set = new HashSet<>();
            this.q.put(str, set);
        }
        set.add(Integer.valueOf(i));
    }

    private void b() throws MMException {
        ArrayList arrayList = new ArrayList();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.o.componentDefinitions) {
            Set<Integer> set = this.q.get(componentDefinition.componentId);
            int size = set != null ? set.size() : 0;
            if (size < componentDefinition.publisherRequired) {
                arrayList.add(String.format("Component: %s, required: %d, accessed: %d", componentDefinition.componentId, Integer.valueOf(componentDefinition.publisherRequired), Integer.valueOf(size)));
            }
        }
        if (!arrayList.isEmpty()) {
            String str = "Unable to validate that all required native components have been accessed:\n" + arrayList.toString();
            MMLog.e(e, str);
            throw new MMException(str);
        }
    }

    public void updateLayout(View view) throws MMException {
        if (!ThreadUtils.isUiThread()) {
            MMLog.e(e, "NativeAd.updateLayout must be called on the UI thread.");
        } else if (view == null) {
            MMLog.e(e, "Unable to updated; the provided layout was null.");
        } else if (!isReady()) {
            MMLog.e(e, "Cannot update the layout. The NativeAd is not loaded.");
        } else {
            a(view, false, true);
        }
    }

    public View inflateLayout(Context context, int[] iArr) throws MMException {
        View view;
        if (!ThreadUtils.isUiThread()) {
            MMLog.e(e, "NativeAd.inflateLayout must be called on the UI thread.");
            return null;
        } else if (context == null) {
            MMLog.e(e, "Unable to inflate a layout because the provided Context is null.");
            return null;
        } else if (iArr == null || iArr.length == 0) {
            MMLog.e(e, "Unable to inflate a layout because the layoutIds are null or empty.");
            return null;
        } else if (!isReady()) {
            MMLog.e(e, "Cannot inflate a layout. The NativeAd is not loaded.");
            return null;
        } else {
            LayoutInflater from = LayoutInflater.from(context);
            int i = 0;
            while (true) {
                if (i >= iArr.length) {
                    view = null;
                    break;
                }
                View inflate = from.inflate(iArr[i], (ViewGroup) null);
                if (a(inflate, i < iArr.length + (-1), false)) {
                    view = inflate;
                    break;
                }
                i++;
            }
            return view;
        }
    }

    private boolean a(View view, boolean z, boolean z2) throws MMException {
        boolean z3 = true;
        HashMap hashMap = new HashMap();
        for (Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition : this.o.componentDefinitions) {
            hashMap.put(componentDefinition.componentId, componentDefinition);
        }
        List<TextView> a2 = a(view, COMPONENT_ID_BODY);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition2 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_BODY);
        if (componentDefinition2 != null && a2.size() < componentDefinition2.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the body component.");
            z3 = false;
        }
        List<TextView> a3 = a(view, COMPONENT_ID_CALL_TO_ACTION);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition3 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_CALL_TO_ACTION);
        if (componentDefinition3 != null && a3.size() < componentDefinition3.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the 'Call To Action' component.");
            z3 = false;
        }
        List<TextView> a4 = a(view, COMPONENT_ID_DISCLAIMER);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition4 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_DISCLAIMER);
        if (componentDefinition4 != null && a4.size() < componentDefinition4.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the Disclaimer component.");
            z3 = false;
        }
        List<ImageView> b = b(view, COMPONENT_ID_ICON_IMAGE);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition5 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_ICON_IMAGE);
        if (componentDefinition5 != null && b.size() < componentDefinition5.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the 'Icon Image' component.");
            z3 = false;
        }
        List<ImageView> b2 = b(view, COMPONENT_ID_MAIN_IMAGE);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition6 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_MAIN_IMAGE);
        if (componentDefinition6 != null && b2.size() < componentDefinition6.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the 'Main Image' component.");
            z3 = false;
        }
        List<TextView> a5 = a(view, COMPONENT_ID_RATING);
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition7 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get(COMPONENT_ID_RATING);
        if (componentDefinition7 != null && a5.size() < componentDefinition7.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the Rating component.");
            z3 = false;
        }
        List<TextView> a6 = a(view, "title");
        Handshake.NativeTypeDefinition.ComponentDefinition componentDefinition8 = (Handshake.NativeTypeDefinition.ComponentDefinition) hashMap.get("title");
        if (componentDefinition8 != null && a6.size() < componentDefinition8.publisherRequired) {
            MMLog.e(e, "Layout does not contain the required number of Views for the Title component.");
            z3 = false;
        }
        if (z3) {
            if ((a2.size() <= this.r.size() && a4.size() <= this.s.size() && a5.size() <= this.t.size() && a6.size() <= this.u.size() && a3.size() <= this.v.size() && b.size() <= this.w.size() && b2.size() <= this.x.size()) || !z) {
                b(a2, COMPONENT_ID_BODY, ComponentName.BODY, this.r, z2);
                b(a4, COMPONENT_ID_DISCLAIMER, ComponentName.DISCLAIMER, this.s, z2);
                b(a5, COMPONENT_ID_RATING, ComponentName.RATING, this.t, z2);
                b(a6, "title", ComponentName.TITLE, this.u, z2);
                b(a3, COMPONENT_ID_CALL_TO_ACTION, ComponentName.CALL_TO_ACTION, this.v, z2);
                a(b, COMPONENT_ID_ICON_IMAGE, ComponentName.ICON_IMAGE, this.w, z2);
                a(b2, COMPONENT_ID_MAIN_IMAGE, ComponentName.MAIN_IMAGE, this.x, z2);
                this.i = true;
                if (this.m != null) {
                    this.m.cancel();
                }
                this.m = new ImpressionReporter(this, view, a((AdAdapter) this.h));
                this.m.a();
                return true;
            }
        } else {
            MMLog.e(e, "Layout was not updated because it did not contain the required Views.");
        }
        return false;
    }

    private void a(List<ImageView> list, String str, ComponentName componentName, List<NativeAdapter.ImageComponentInfo> list2, boolean z) throws MMException {
        int min;
        if (list != null) {
            List<Object> list3 = this.loadedComponents.get(str);
            if (z) {
                min = list.size();
            } else {
                min = Math.min(list.size(), list3.size());
            }
            for (int i = 0; i < min; i++) {
                ImageView imageView = list.get(i);
                if (i < list3.size()) {
                    imageView.setImageDrawable(((ImageView) list3.get(i)).getDrawable());
                    a(imageView, componentName, i, list2.get(i));
                } else {
                    imageView.setImageDrawable(null);
                    imageView.setOnClickListener(null);
                }
            }
        }
    }

    private void b(List<TextView> list, String str, ComponentName componentName, List<NativeAdapter.TextComponentInfo> list2, boolean z) throws MMException {
        int min;
        if (list != null) {
            List<Object> list3 = this.loadedComponents.get(str);
            if (z) {
                min = list.size();
            } else {
                min = Math.min(list.size(), list3.size());
            }
            for (int i = 0; i < min; i++) {
                TextView textView = list.get(i);
                if (i < list3.size()) {
                    textView.setText(((TextView) list3.get(i)).getText());
                    a(textView, componentName, i, list2.get(i));
                } else {
                    textView.setText("");
                    textView.setOnClickListener(null);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<TextView> a(View view, String str) throws MMException {
        View findViewWithTag;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 > 900 || (findViewWithTag = view.findViewWithTag(str + b.ROLL_OVER_FILE_NAME_SEPARATOR + i2)) == null) {
                break;
            } else if (findViewWithTag instanceof TextView) {
                arrayList.add((TextView) findViewWithTag);
                i = i2 + 1;
            } else {
                throw new MMException("Expected View with tag = " + findViewWithTag.getTag() + " to be a TextView.");
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0058, code lost:
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private List<ImageView> b(View view, String str) throws MMException {
        View findViewWithTag;
        ArrayList arrayList = new ArrayList();
        int i = 1;
        while (true) {
            int i2 = i;
            if (i2 > 900 || (findViewWithTag = view.findViewWithTag(str + b.ROLL_OVER_FILE_NAME_SEPARATOR + i2)) == null) {
                break;
            } else if (findViewWithTag instanceof ImageView) {
                arrayList.add((ImageView) findViewWithTag);
                i = i2 + 1;
            } else {
                throw new MMException("Expected View with tag = " + findViewWithTag.getTag() + " to be a ImageView.");
            }
        }
    }

    private void c() {
        if (this.j != null) {
            this.j.cancel();
        }
        if (this.k != null) {
            this.k.cancel();
        }
    }

    private void b(AdPlacement.RequestState requestState) {
        d();
        int nativeExpirationDuration = Handshake.getNativeExpirationDuration();
        if (nativeExpirationDuration > 0) {
            this.l = ThreadUtils.runOnWorkerThreadDelayed(new ExpirationRunnable(this, requestState), nativeExpirationDuration);
        }
    }

    private void d() {
        if (this.l != null) {
            this.l.cancel();
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
                c();
                b(requestState);
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                try {
                    this.h.getClass().getMethod("onPostLoaded", NativeAd.class).invoke(this.h, this);
                } catch (Exception e2) {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.d(e, "Could not find method <onPostLoaded> in adAdapter");
                    }
                }
                final NativeListener nativeListener = this.g;
                if (nativeListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.7
                        @Override // java.lang.Runnable
                        public void run() {
                            nativeListener.onLoaded(NativeAd.this);
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
                MMLog.w(e, "Load failed for placement ID: " + this.placementId + ". If this warning persists please check your placement configuration.");
                c();
                AdPlacementReporter.reportPlayList(requestState.getAdPlacementReporter());
                final NativeListener nativeListener = this.g;
                if (nativeListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.8
                        @Override // java.lang.Runnable
                        public void run() {
                            nativeListener.onLoadFailed(NativeAd.this, new NativeErrorStatus(5));
                        }
                    });
                }
            }
        }
    }

    private void e() {
        MMLog.i(e, "Ad left application");
        final NativeListener nativeListener = this.g;
        if (nativeListener != null) {
            ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.9
                @Override // java.lang.Runnable
                public void run() {
                    nativeListener.onAdLeftApplication(NativeAd.this);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(AdPlacement.RequestState requestState) {
        synchronized (this) {
            if (!this.c.compare(requestState)) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onExpired called but load state is not valid");
                }
            } else if (!this.f4046a.equals("loaded")) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(e, "onExpired called but placement state is not valid: " + this.f4046a);
                }
            } else {
                this.f4046a = "expired";
                MMLog.i(e, "Ad expired");
                final NativeListener nativeListener = this.g;
                if (nativeListener != null) {
                    ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.NativeAd.10
                        @Override // java.lang.Runnable
                        public void run() {
                            nativeListener.onExpired(NativeAd.this);
                        }
                    });
                }
            }
        }
    }

    private static long a(AdAdapter adAdapter) {
        if (!(adAdapter instanceof MMAdAdapter)) {
            return 1000L;
        }
        return ((MMAdAdapter) adAdapter).getImpressionDelay();
    }
}
