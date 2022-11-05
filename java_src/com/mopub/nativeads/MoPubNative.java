package com.mopub.nativeads;

import android.content.Context;
import com.mopub.common.AdFormat;
import com.mopub.common.Constants;
import com.mopub.common.GpsHelper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.ManifestUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.network.AdRequest;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.VolleyError;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes3.dex */
public class MoPubNative {

    /* renamed from: a  reason: collision with root package name */
    static final MoPubNativeNetworkListener f4593a = new MoPubNativeNetworkListener() { // from class: com.mopub.nativeads.MoPubNative.1
        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeLoad(NativeAd nativeAd) {
            nativeAd.destroy();
        }

        @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
        public void onNativeFail(NativeErrorCode nativeErrorCode) {
        }
    };
    AdRendererRegistry b;
    private final WeakReference<Context> c;
    private final String d;
    private MoPubNativeNetworkListener e;
    private Map<String, Object> f;
    private final AdRequest.Listener g;
    private AdRequest h;

    /* loaded from: classes3.dex */
    public interface MoPubNativeNetworkListener {
        void onNativeFail(NativeErrorCode nativeErrorCode);

        void onNativeLoad(NativeAd nativeAd);
    }

    public MoPubNative(Context context, String str, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this(context, str, new AdRendererRegistry(), moPubNativeNetworkListener);
    }

    @VisibleForTesting
    public MoPubNative(Context context, String str, AdRendererRegistry adRendererRegistry, MoPubNativeNetworkListener moPubNativeNetworkListener) {
        this.f = new TreeMap();
        Preconditions.checkNotNull(context, "context may not be null.");
        Preconditions.checkNotNull(str, "AdUnitId may not be null.");
        Preconditions.checkNotNull(adRendererRegistry, "AdRendererRegistry may not be null.");
        Preconditions.checkNotNull(moPubNativeNetworkListener, "MoPubNativeNetworkListener may not be null.");
        ManifestUtils.checkNativeActivitiesDeclared(context);
        this.c = new WeakReference<>(context);
        this.d = str;
        this.e = moPubNativeNetworkListener;
        this.b = adRendererRegistry;
        this.g = new AdRequest.Listener() { // from class: com.mopub.nativeads.MoPubNative.2
            @Override // com.mopub.network.AdRequest.Listener
            public void onSuccess(AdResponse adResponse) {
                MoPubNative.this.a(adResponse);
            }

            @Override // com.mopub.volley.Response.ErrorListener
            public void onErrorResponse(VolleyError volleyError) {
                MoPubNative.this.a(volleyError);
            }
        };
        GpsHelper.fetchAdvertisingInfoAsync(context, null);
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.b.registerAdRenderer(moPubAdRenderer);
    }

    public void destroy() {
        this.c.clear();
        if (this.h != null) {
            this.h.cancel();
            this.h = null;
        }
        this.e = f4593a;
    }

    public void setLocalExtras(Map<String, Object> map) {
        if (map == null) {
            this.f = new TreeMap();
        } else {
            this.f = new TreeMap(map);
        }
    }

    public void makeRequest() {
        makeRequest(null);
    }

    public void makeRequest(RequestParameters requestParameters) {
        makeRequest(requestParameters, null);
    }

    public void makeRequest(RequestParameters requestParameters, Integer num) {
        Context a2 = a();
        if (a2 != null) {
            if (!DeviceUtils.isNetworkAvailable(a2)) {
                this.e.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
            } else {
                a(requestParameters, num);
            }
        }
    }

    private void a(RequestParameters requestParameters, Integer num) {
        Context a2 = a();
        if (a2 != null) {
            e a3 = new e(a2).mo553withAdUnitId(this.d).a(requestParameters);
            if (num != null) {
                a3.a(num.intValue());
            }
            String generateUrlString = a3.generateUrlString(Constants.HOST);
            if (generateUrlString != null) {
                MoPubLog.d("Loading ad from: " + generateUrlString);
            }
            a(generateUrlString);
        }
    }

    void a(String str) {
        Context a2 = a();
        if (a2 != null) {
            if (str == null) {
                this.e.onNativeFail(NativeErrorCode.INVALID_REQUEST_URL);
                return;
            }
            this.h = new AdRequest(str, AdFormat.NATIVE, this.d, a2, this.g);
            Networking.getRequestQueue(a2).add(this.h);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final AdResponse adResponse) {
        Context a2 = a();
        if (a2 != null) {
            b.loadNativeAd(a2, this.f, adResponse, new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.MoPubNative.3
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    Context a3 = MoPubNative.this.a();
                    if (a3 != null) {
                        MoPubAdRenderer rendererForAd = MoPubNative.this.b.getRendererForAd(baseNativeAd);
                        if (rendererForAd != null) {
                            MoPubNative.this.e.onNativeLoad(new NativeAd(a3, adResponse.getImpressionTrackingUrl(), adResponse.getClickTrackingUrl(), MoPubNative.this.d, baseNativeAd, rendererForAd));
                        } else {
                            onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                        }
                    }
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    MoPubLog.v(String.format("Native Ad failed to load with error: %s.", nativeErrorCode));
                    MoPubNative.this.a(adResponse.getFailoverUrl());
                }
            });
        }
    }

    @VisibleForTesting
    void a(VolleyError volleyError) {
        MoPubLog.d("Native ad request failed.", volleyError);
        if (volleyError instanceof MoPubNetworkError) {
            switch (((MoPubNetworkError) volleyError).getReason()) {
                case BAD_BODY:
                    this.e.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                    return;
                case BAD_HEADER_DATA:
                    this.e.onNativeFail(NativeErrorCode.INVALID_RESPONSE);
                    return;
                case WARMING_UP:
                    MoPubLog.c(MoPubErrorCode.WARMUP.toString());
                    this.e.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    return;
                case NO_FILL:
                    this.e.onNativeFail(NativeErrorCode.EMPTY_AD_RESPONSE);
                    return;
                default:
                    this.e.onNativeFail(NativeErrorCode.UNSPECIFIED);
                    return;
            }
        }
        NetworkResponse networkResponse = volleyError.networkResponse;
        if (networkResponse != null && networkResponse.statusCode >= 500 && networkResponse.statusCode < 600) {
            this.e.onNativeFail(NativeErrorCode.SERVER_ERROR_RESPONSE_CODE);
        } else if (networkResponse == null && !DeviceUtils.isNetworkAvailable(this.c.get())) {
            MoPubLog.c(String.valueOf(MoPubErrorCode.NO_CONNECTION.toString()));
            this.e.onNativeFail(NativeErrorCode.CONNECTION_ERROR);
        } else {
            this.e.onNativeFail(NativeErrorCode.UNSPECIFIED);
        }
    }

    @VisibleForTesting
    Context a() {
        Context context = this.c.get();
        if (context == null) {
            destroy();
            MoPubLog.d("Weak reference to Context in MoPubNative became null. This instance of MoPubNative is destroyed and No more requests will be processed.");
        }
        return context;
    }
}
