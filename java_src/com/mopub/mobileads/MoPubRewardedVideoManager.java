package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdReport;
import com.mopub.common.AdUrlGenerator;
import com.mopub.common.ClientMetadata;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.MediationSettings;
import com.mopub.common.MoPubReward;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.MoPubCollections;
import com.mopub.common.util.Reflection;
import com.mopub.common.util.ReflectionTarget;
import com.mopub.common.util.Utils;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.NoConnectionError;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class MoPubRewardedVideoManager {
    public static final int API_VERSION = 1;

    /* renamed from: a  reason: collision with root package name */
    private static MoPubRewardedVideoManager f4437a;
    private WeakReference<Activity> c;
    private final Context d;
    private final AdRequestStatusMapping e;
    private MoPubRewardedVideoListener g;
    private final Map<String, Set<MediationSettings>> i;
    private final Handler j;
    private final Map<String, Runnable> k;
    private final c f = new c();
    private final Handler b = new Handler(Looper.getMainLooper());
    private final Set<MediationSettings> h = new HashSet();

    /* loaded from: classes3.dex */
    public static class RewardedVideoRequestListener implements AdRequest.Listener {

        /* renamed from: a  reason: collision with root package name */
        private final MoPubRewardedVideoManager f4449a;
        public final String adUnitId;

        public RewardedVideoRequestListener(MoPubRewardedVideoManager moPubRewardedVideoManager, String str) {
            this.adUnitId = str;
            this.f4449a = moPubRewardedVideoManager;
        }

        @Override // com.mopub.network.AdRequest.Listener
        public void onSuccess(AdResponse adResponse) {
            this.f4449a.a(adResponse, this.adUnitId);
        }

        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            this.f4449a.a(volleyError, this.adUnitId);
        }
    }

    /* loaded from: classes3.dex */
    public static final class RequestParameters {
        public final String mCustomerId;
        public final String mKeywords;
        public final Location mLocation;

        public RequestParameters(String str) {
            this(str, null);
        }

        public RequestParameters(String str, Location location) {
            this(str, location, null);
        }

        public RequestParameters(String str, Location location, String str2) {
            this.mKeywords = str;
            this.mLocation = location;
            this.mCustomerId = str2;
        }
    }

    private MoPubRewardedVideoManager(Activity activity, MediationSettings... mediationSettingsArr) {
        this.c = new WeakReference<>(activity);
        this.d = activity.getApplicationContext();
        MoPubCollections.addAllNonNull(this.h, mediationSettingsArr);
        this.i = new HashMap();
        this.j = new Handler();
        this.k = new HashMap();
        this.e = new AdRequestStatusMapping();
    }

    public static synchronized void init(Activity activity, MediationSettings... mediationSettingsArr) {
        synchronized (MoPubRewardedVideoManager.class) {
            if (f4437a == null) {
                f4437a = new MoPubRewardedVideoManager(activity, mediationSettingsArr);
            } else {
                MoPubLog.e("Tried to call initializeRewardedVideo more than once. Only the first initialization call has any effect.");
            }
        }
    }

    @ReflectionTarget
    public static void updateActivity(Activity activity) {
        if (f4437a != null) {
            f4437a.c = new WeakReference<>(activity);
            return;
        }
        b();
    }

    public static <T extends MediationSettings> T getGlobalMediationSettings(Class<T> cls) {
        if (f4437a == null) {
            b();
            return null;
        }
        for (MediationSettings mediationSettings : f4437a.h) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static <T extends MediationSettings> T getInstanceMediationSettings(Class<T> cls, String str) {
        if (f4437a == null) {
            b();
            return null;
        }
        Set<MediationSettings> set = f4437a.i.get(str);
        if (set == null) {
            return null;
        }
        for (MediationSettings mediationSettings : set) {
            if (cls.equals(mediationSettings.getClass())) {
                return cls.cast(mediationSettings);
            }
        }
        return null;
    }

    public static void setVideoListener(MoPubRewardedVideoListener moPubRewardedVideoListener) {
        if (f4437a != null) {
            f4437a.g = moPubRewardedVideoListener;
        } else {
            b();
        }
    }

    public static void loadVideo(final String str, RequestParameters requestParameters, MediationSettings... mediationSettingsArr) {
        Location location = null;
        if (f4437a == null) {
            b();
        } else if (TextUtils.isEmpty(f4437a.f.a())) {
            if (f4437a.e.d(str)) {
                MoPubLog.d(String.format(Locale.US, "Did not queue rewarded video request for ad unit %s. This ad unit already finished loading and is ready to show.", str));
                a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (MoPubRewardedVideoManager.f4437a.g != null) {
                            MoPubRewardedVideoManager.f4437a.g.onRewardedVideoLoadSuccess(str);
                        }
                    }
                });
                return;
            }
            HashSet hashSet = new HashSet();
            MoPubCollections.addAllNonNull(hashSet, mediationSettingsArr);
            f4437a.i.put(str, hashSet);
            String str2 = requestParameters == null ? null : requestParameters.mCustomerId;
            if (!TextUtils.isEmpty(str2)) {
                f4437a.f.e(str2);
            }
            AdUrlGenerator withKeywords = new WebViewAdUrlGenerator(f4437a.d, false).mo553withAdUnitId(str).withKeywords(requestParameters == null ? null : requestParameters.mKeywords);
            if (requestParameters != null) {
                location = requestParameters.mLocation;
            }
            a(str, withKeywords.withLocation(location).generateUrlString(Constants.HOST));
        } else {
            MoPubLog.d(String.format(Locale.US, "Did not queue rewarded video request for ad unit %s. The video is already showing.", str));
        }
    }

    private static void a(String str, String str2) {
        if (f4437a == null) {
            b();
        } else if (!f4437a.e.e(str)) {
            Networking.getRequestQueue(f4437a.d).add(new AdRequest(str2, AdFormat.REWARDED_VIDEO, str, f4437a.d, new RewardedVideoRequestListener(f4437a, str)));
            f4437a.e.b(str);
        } else {
            MoPubLog.d(String.format(Locale.US, "Did not queue rewarded video request for ad unit %s. A request is already pending.", str));
        }
    }

    public static boolean hasVideo(String str) {
        if (f4437a != null) {
            return a(str, f4437a.f.a(str));
        }
        b();
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void showVideo(String str) {
        if (f4437a != null) {
            CustomEventRewardedVideo a2 = f4437a.f.a(str);
            if (a(str, a2)) {
                f4437a.f.a((Class<? extends CustomEventRewardedVideo>) a2.getClass(), f4437a.f.b(str));
                f4437a.f.d(str);
                f4437a.e.c(str);
                a2.f();
                return;
            }
            f4437a.b(str, MoPubErrorCode.VIDEO_NOT_AVAILABLE);
            return;
        }
        b();
    }

    private static boolean a(String str, CustomEventRewardedVideo customEventRewardedVideo) {
        return f4437a != null && f4437a.e.d(str) && customEventRewardedVideo != null && customEventRewardedVideo.e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x00b9 -> B:23:0x0034). Please submit an issue!!! */
    public void a(AdResponse adResponse, String str) {
        this.e.a(str, adResponse.getFailoverUrl(), adResponse.getImpressionTrackingUrl(), adResponse.getClickTrackingUrl());
        Integer adTimeoutMillis = adResponse.getAdTimeoutMillis();
        Integer num = (adTimeoutMillis == null || adTimeoutMillis.intValue() <= 0) ? 30000 : adTimeoutMillis;
        String customEventClassName = adResponse.getCustomEventClassName();
        if (customEventClassName == null) {
            MoPubLog.e("Couldn't create custom event, class name was null.");
            b(str, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        CustomEventRewardedVideo a2 = this.f.a(str);
        if (a2 != null) {
            a2.d();
        }
        try {
            final CustomEventRewardedVideo customEventRewardedVideo = (CustomEventRewardedVideo) Reflection.instantiateClassWithEmptyConstructor(customEventClassName, CustomEventRewardedVideo.class);
            TreeMap treeMap = new TreeMap();
            treeMap.put(DataKeys.AD_UNIT_ID_KEY, str);
            treeMap.put(DataKeys.REWARDED_VIDEO_CURRENCY_NAME_KEY, adResponse.getRewardedVideoCurrencyName());
            treeMap.put(DataKeys.REWARDED_VIDEO_CURRENCY_AMOUNT_STRING_KEY, adResponse.getRewardedVideoCurrencyAmount());
            treeMap.put(DataKeys.AD_REPORT_KEY, new AdReport(str, ClientMetadata.getInstance(this.d), adResponse));
            treeMap.put(DataKeys.BROADCAST_IDENTIFIER_KEY, Long.valueOf(Utils.generateUniqueId()));
            treeMap.put(DataKeys.REWARDED_VIDEO_CUSTOMER_ID, this.f.b());
            this.f.a(str, adResponse.getRewardedVideoCurrencyName(), adResponse.getRewardedVideoCurrencyAmount());
            this.f.a(str, adResponse.getRewardedVideoCompletionUrl());
            Activity activity = this.c.get();
            if (activity == null) {
                MoPubLog.d("Could not load custom event because Activity reference was null. Call MoPub#updateActivity before requesting more rewarded videos.");
                this.e.a(str);
            } else {
                Runnable runnable = new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.8
                    @Override // java.lang.Runnable
                    public void run() {
                        MoPubLog.d("Custom Event failed to load rewarded video in a timely fashion.");
                        MoPubRewardedVideoManager.onRewardedVideoLoadFailure(customEventRewardedVideo.getClass(), customEventRewardedVideo.c(), MoPubErrorCode.NETWORK_TIMEOUT);
                        customEventRewardedVideo.d();
                    }
                };
                this.j.postDelayed(runnable, num.intValue());
                this.k.put(str, runnable);
                customEventRewardedVideo.a(activity, treeMap, adResponse.getServerExtras());
                this.f.a(str, customEventRewardedVideo, customEventRewardedVideo.a(), customEventRewardedVideo.c());
            }
        } catch (Exception e) {
            MoPubLog.e(String.format(Locale.US, "Couldn't create custom event with class name %s", customEventClassName));
            b(str, MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(VolleyError volleyError, String str) {
        MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
        if (volleyError instanceof MoPubNetworkError) {
            switch (((MoPubNetworkError) volleyError).getReason()) {
                case NO_FILL:
                case WARMING_UP:
                    moPubErrorCode = MoPubErrorCode.NO_FILL;
                    break;
                default:
                    moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
                    break;
            }
        }
        if (volleyError instanceof NoConnectionError) {
            moPubErrorCode = MoPubErrorCode.NO_CONNECTION;
        }
        b(str, moPubErrorCode);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str, MoPubErrorCode moPubErrorCode) {
        String f = this.e.f(str);
        this.e.a(str);
        if (f != null) {
            a(str, f);
        } else if (this.g != null) {
            this.g.onRewardedVideoLoadFailure(str, moPubErrorCode);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(String str) {
        Runnable remove = this.k.remove(str);
        if (remove != null) {
            this.j.removeCallbacks(remove);
        }
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoLoadSuccess(Class<T> cls, String str) {
        a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.9
            @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
            protected void a(String str2) {
                MoPubRewardedVideoManager.f4437a.d(str2);
                if (MoPubRewardedVideoManager.f4437a.g != null) {
                    MoPubRewardedVideoManager.f4437a.g.onRewardedVideoLoadSuccess(str2);
                }
            }
        });
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoLoadFailure(Class<T> cls, String str, final MoPubErrorCode moPubErrorCode) {
        a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.10
            @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
            protected void a(String str2) {
                MoPubRewardedVideoManager.f4437a.d(str2);
                MoPubRewardedVideoManager.f4437a.b(str2, moPubErrorCode);
            }
        });
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoStarted(Class<T> cls, String str) {
        final String a2 = f4437a.f.a();
        if (TextUtils.isEmpty(a2)) {
            a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.11
                @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
                protected void a(String str2) {
                    MoPubRewardedVideoManager.e(str2);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.12
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRewardedVideoManager.e(a2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(String str) {
        Preconditions.checkNotNull(str);
        if (f4437a.g != null) {
            f4437a.g.onRewardedVideoStarted(str);
        }
        TrackingRequest.makeTrackingHttpRequest(f4437a.e.g(str), f4437a.d);
        f4437a.e.i(str);
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoPlaybackError(Class<T> cls, String str, final MoPubErrorCode moPubErrorCode) {
        final String a2 = f4437a.f.a();
        if (TextUtils.isEmpty(a2)) {
            a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.13
                @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
                protected void a(String str2) {
                    MoPubRewardedVideoManager.c(str2, moPubErrorCode);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.14
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRewardedVideoManager.c(a2, moPubErrorCode);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(String str, MoPubErrorCode moPubErrorCode) {
        Preconditions.checkNotNull(str);
        Preconditions.checkNotNull(moPubErrorCode);
        if (f4437a.g != null) {
            f4437a.g.onRewardedVideoPlaybackError(str, moPubErrorCode);
        }
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoClicked(Class<T> cls, String str) {
        final String a2 = f4437a.f.a();
        if (TextUtils.isEmpty(a2)) {
            a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.15
                @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
                protected void a(String str2) {
                    MoPubRewardedVideoManager.f(str2);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.2
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRewardedVideoManager.f(a2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void f(String str) {
        Preconditions.checkNotNull(str);
        TrackingRequest.makeTrackingHttpRequest(f4437a.e.h(str), f4437a.d);
        f4437a.e.j(str);
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoClosed(Class<T> cls, String str) {
        final String a2 = f4437a.f.a();
        if (TextUtils.isEmpty(a2)) {
            a(new a(cls, str) { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.3
                @Override // com.mopub.mobileads.MoPubRewardedVideoManager.a
                protected void a(String str2) {
                    MoPubRewardedVideoManager.g(str2);
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.4
                @Override // java.lang.Runnable
                public void run() {
                    MoPubRewardedVideoManager.g(a2);
                }
            });
        }
        f4437a.f.d(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void g(String str) {
        Preconditions.checkNotNull(str);
        if (f4437a.g != null) {
            f4437a.g.onRewardedVideoClosed(str);
        }
    }

    public static <T extends CustomEventRewardedVideo> void onRewardedVideoCompleted(final Class<T> cls, final String str, final MoPubReward moPubReward) {
        final String a2 = f4437a.f.a();
        final String c = f4437a.f.c(a2);
        if (TextUtils.isEmpty(c)) {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.5
                @Override // java.lang.Runnable
                public void run() {
                    MoPubReward a3 = MoPubRewardedVideoManager.a(MoPubRewardedVideoManager.f4437a.f.a(cls), moPubReward);
                    HashSet hashSet = new HashSet();
                    if (TextUtils.isEmpty(a2)) {
                        hashSet.addAll(MoPubRewardedVideoManager.f4437a.f.a(cls, str));
                    } else {
                        hashSet.add(a2);
                    }
                    if (MoPubRewardedVideoManager.f4437a.g != null) {
                        MoPubRewardedVideoManager.f4437a.g.onRewardedVideoCompleted(hashSet, a3);
                    }
                }
            });
        } else {
            a(new Runnable() { // from class: com.mopub.mobileads.MoPubRewardedVideoManager.6
                @Override // java.lang.Runnable
                public void run() {
                    RewardedVideoCompletionRequestHandler.makeRewardedVideoCompletionRequest(MoPubRewardedVideoManager.f4437a.d, c, MoPubRewardedVideoManager.f4437a.f.b());
                }
            });
        }
    }

    @VisibleForTesting
    static MoPubReward a(MoPubReward moPubReward, MoPubReward moPubReward2) {
        if (!moPubReward2.isSuccessful()) {
            return moPubReward2;
        }
        if (moPubReward == null) {
            moPubReward = moPubReward2;
        }
        return moPubReward;
    }

    private static void a(Runnable runnable) {
        if (f4437a != null) {
            f4437a.b.post(runnable);
        }
    }

    private static void b() {
        MoPubLog.e("MoPub rewarded video was not initialized. You must call MoPub.initializeRewardedVideo() before loading or attempting to play video ads.");
    }

    /* loaded from: classes3.dex */
    private static abstract class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Class<? extends CustomEventRewardedVideo> f4450a;
        private final String b;

        protected abstract void a(String str);

        a(Class<? extends CustomEventRewardedVideo> cls, String str) {
            Preconditions.checkNotNull(cls);
            Preconditions.checkNotNull(str);
            this.f4450a = cls;
            this.b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (String str : MoPubRewardedVideoManager.f4437a.f.a(this.f4450a, this.b)) {
                a(str);
            }
        }
    }
}
