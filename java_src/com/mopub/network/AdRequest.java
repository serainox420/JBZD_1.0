package com.mopub.network;

import android.content.Context;
import android.location.Location;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import com.mopub.common.AdFormat;
import com.mopub.common.AdType;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.LocationService;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.Event;
import com.mopub.common.event.EventDetails;
import com.mopub.common.event.MoPubEvents;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Json;
import com.mopub.common.util.ResponseHeader;
import com.mopub.mobileads.AdTypeTranslator;
import com.mopub.network.AdResponse;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.io.UnsupportedEncodingException;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public class AdRequest extends Request<AdResponse> {

    /* renamed from: a  reason: collision with root package name */
    private final Listener f4646a;
    private final AdFormat b;
    private final String c;
    private final Context d;

    /* loaded from: classes3.dex */
    public interface Listener extends Response.ErrorListener {
        void onSuccess(AdResponse adResponse);
    }

    public AdRequest(String str, AdFormat adFormat, String str2, Context context, Listener listener) {
        super(0, str, listener);
        Preconditions.checkNotNull(adFormat);
        Preconditions.checkNotNull(listener);
        this.c = str2;
        this.f4646a = listener;
        this.b = adFormat;
        this.d = context.getApplicationContext();
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 1, 1.0f));
        setShouldCache(false);
    }

    public Listener getListener() {
        return this.f4646a;
    }

    @Override // com.mopub.volley.Request
    public Map<String, String> getHeaders() {
        TreeMap treeMap = new TreeMap();
        String language = Locale.getDefault().getLanguage();
        Locale locale = this.d.getResources().getConfiguration().locale;
        if (locale != null && !locale.getLanguage().trim().isEmpty()) {
            language = locale.getLanguage().trim();
        }
        if (!language.isEmpty()) {
            treeMap.put(ResponseHeader.ACCEPT_LANGUAGE.getKey(), language);
        }
        return treeMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<AdResponse> a(NetworkResponse networkResponse) {
        Map<String, String> map = networkResponse.headers;
        if (HeaderUtils.extractBooleanHeader(map, ResponseHeader.WARMUP, false)) {
            return Response.error(new MoPubNetworkError("Ad Unit is warming up.", MoPubNetworkError.Reason.WARMING_UP));
        }
        Location lastKnownLocation = LocationService.getLastKnownLocation(this.d, MoPub.getLocationPrecision(), MoPub.getLocationAwareness());
        AdResponse.Builder builder = new AdResponse.Builder();
        builder.setAdUnitId(this.c);
        String extractHeader = HeaderUtils.extractHeader(map, ResponseHeader.AD_TYPE);
        String extractHeader2 = HeaderUtils.extractHeader(map, ResponseHeader.FULL_AD_TYPE);
        builder.setAdType(extractHeader);
        builder.setFullAdType(extractHeader2);
        Integer extractIntegerHeader = HeaderUtils.extractIntegerHeader(map, ResponseHeader.REFRESH_TIME);
        Integer valueOf = extractIntegerHeader == null ? null : Integer.valueOf(extractIntegerHeader.intValue() * 1000);
        builder.setRefreshTimeMilliseconds(valueOf);
        if (AdType.CLEAR.equals(extractHeader)) {
            a(builder.build(), networkResponse, lastKnownLocation);
            return Response.error(new MoPubNetworkError("No ads found for ad unit.", MoPubNetworkError.Reason.NO_FILL, valueOf));
        }
        String extractHeader3 = HeaderUtils.extractHeader(map, ResponseHeader.DSP_CREATIVE_ID);
        builder.setDspCreativeId(extractHeader3);
        String extractHeader4 = HeaderUtils.extractHeader(map, ResponseHeader.NETWORK_TYPE);
        builder.setNetworkType(extractHeader4);
        String extractHeader5 = HeaderUtils.extractHeader(map, ResponseHeader.REDIRECT_URL);
        builder.setRedirectUrl(extractHeader5);
        String extractHeader6 = HeaderUtils.extractHeader(map, ResponseHeader.CLICK_TRACKING_URL);
        builder.setClickTrackingUrl(extractHeader6);
        builder.setImpressionTrackingUrl(HeaderUtils.extractHeader(map, ResponseHeader.IMPRESSION_URL));
        String extractHeader7 = HeaderUtils.extractHeader(map, ResponseHeader.FAIL_URL);
        builder.setFailoverUrl(extractHeader7);
        String a2 = a(extractHeader7);
        builder.setRequestId(a2);
        boolean extractBooleanHeader = HeaderUtils.extractBooleanHeader(map, ResponseHeader.SCROLLABLE, false);
        builder.setScrollable(Boolean.valueOf(extractBooleanHeader));
        Integer extractIntegerHeader2 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.WIDTH);
        Integer extractIntegerHeader3 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.HEIGHT);
        builder.setDimensions(extractIntegerHeader2, extractIntegerHeader3);
        Integer extractIntegerHeader4 = HeaderUtils.extractIntegerHeader(map, ResponseHeader.AD_TIMEOUT);
        builder.setAdTimeoutDelayMilliseconds(extractIntegerHeader4 == null ? null : Integer.valueOf(extractIntegerHeader4.intValue() * 1000));
        String b = b(networkResponse);
        builder.setResponseBody(b);
        if (AdType.STATIC_NATIVE.equals(extractHeader) || AdType.VIDEO_NATIVE.equals(extractHeader)) {
            try {
                builder.setJsonBody(new JSONObject(b));
            } catch (JSONException e) {
                return Response.error(new MoPubNetworkError("Failed to decode body JSON for native ad format", e, MoPubNetworkError.Reason.BAD_BODY));
            }
        }
        builder.setCustomEventClassName(AdTypeTranslator.getCustomEventName(this.b, extractHeader, extractHeader2, map));
        String extractHeader8 = HeaderUtils.extractHeader(map, ResponseHeader.CUSTOM_EVENT_DATA);
        if (TextUtils.isEmpty(extractHeader8)) {
            extractHeader8 = HeaderUtils.extractHeader(map, ResponseHeader.NATIVE_PARAMS);
        }
        try {
            Map<String, String> jsonStringToMap = Json.jsonStringToMap(extractHeader8);
            if (extractHeader5 != null) {
                jsonStringToMap.put(DataKeys.REDIRECT_URL_KEY, extractHeader5);
            }
            if (extractHeader6 != null) {
                jsonStringToMap.put(DataKeys.CLICKTHROUGH_URL_KEY, extractHeader6);
            }
            if (a(extractHeader, extractHeader2)) {
                jsonStringToMap.put(DataKeys.HTML_RESPONSE_BODY_KEY, b);
                jsonStringToMap.put(DataKeys.SCROLLABLE_KEY, Boolean.toString(extractBooleanHeader));
                jsonStringToMap.put(DataKeys.CREATIVE_ORIENTATION_KEY, HeaderUtils.extractHeader(map, ResponseHeader.ORIENTATION));
            }
            if (AdType.VIDEO_NATIVE.equals(extractHeader)) {
                if (Build.VERSION.SDK_INT < 16) {
                    return Response.error(new MoPubNetworkError("Native Video ads are only supported for Android API Level 16 (JellyBean) and above.", MoPubNetworkError.Reason.UNSPECIFIED));
                }
                jsonStringToMap.put(DataKeys.PLAY_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.PLAY_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.PAUSE_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.PAUSE_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT, HeaderUtils.extractPercentHeaderString(map, ResponseHeader.IMPRESSION_MIN_VISIBLE_PERCENT));
                jsonStringToMap.put(DataKeys.IMPRESSION_VISIBLE_MS, HeaderUtils.extractHeader(map, ResponseHeader.IMPRESSION_VISIBLE_MS));
                jsonStringToMap.put(DataKeys.MAX_BUFFER_MS, HeaderUtils.extractHeader(map, ResponseHeader.MAX_BUFFER_MS));
                builder.setEventDetails(new EventDetails.Builder().adUnitId(this.c).adType(extractHeader).adNetworkType(extractHeader4).adWidthPx(extractIntegerHeader2).adHeightPx(extractIntegerHeader3).dspCreativeId(extractHeader3).geoLatitude(lastKnownLocation == null ? null : Double.valueOf(lastKnownLocation.getLatitude())).geoLongitude(lastKnownLocation == null ? null : Double.valueOf(lastKnownLocation.getLongitude())).geoAccuracy(lastKnownLocation == null ? null : Float.valueOf(lastKnownLocation.getAccuracy())).performanceDurationMs(Long.valueOf(networkResponse.networkTimeMs)).requestId(a2).requestStatusCode(Integer.valueOf(networkResponse.statusCode)).requestUri(getUrl()).build());
            }
            builder.setServerExtras(jsonStringToMap);
            if (AdType.REWARDED_VIDEO.equals(extractHeader) || "custom".equals(extractHeader)) {
                String extractHeader9 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_CURRENCY_NAME);
                String extractHeader10 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_CURRENCY_AMOUNT);
                String extractHeader11 = HeaderUtils.extractHeader(map, ResponseHeader.REWARDED_VIDEO_COMPLETION_URL);
                builder.setRewardedVideoCurrencyName(extractHeader9);
                builder.setRewardedVideoCurrencyAmount(extractHeader10);
                builder.setRewardedVideoCompletionUrl(extractHeader11);
            }
            a(builder.build(), networkResponse, lastKnownLocation);
            return Response.success(builder.build(), HttpHeaderParser.parseCacheHeaders(networkResponse));
        } catch (JSONException e2) {
            return Response.error(new MoPubNetworkError("Failed to decode server extras for custom event data.", e2, MoPubNetworkError.Reason.BAD_HEADER_DATA));
        }
    }

    private boolean a(String str, String str2) {
        return "mraid".equals(str) || AdType.HTML.equals(str) || ("interstitial".equals(str) && FullAdType.VAST.equals(str2)) || (AdType.REWARDED_VIDEO.equals(str) && FullAdType.VAST.equals(str2));
    }

    protected String b(NetworkResponse networkResponse) {
        try {
            return new String(networkResponse.data, HttpHeaderParser.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException e) {
            return new String(networkResponse.data);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public void deliverResponse(AdResponse adResponse) {
        this.f4646a.onSuccess(adResponse);
    }

    @VisibleForTesting
    String a(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Uri.parse(str).getQueryParameter("request_id");
        } catch (UnsupportedOperationException e) {
            MoPubLog.d("Unable to obtain request id from fail url.");
            return null;
        }
    }

    @VisibleForTesting
    void a(AdResponse adResponse, NetworkResponse networkResponse, Location location) {
        Double d = null;
        Preconditions.checkNotNull(adResponse);
        Preconditions.checkNotNull(networkResponse);
        BaseEvent.Builder withGeoLon = new Event.Builder(BaseEvent.Name.AD_REQUEST, BaseEvent.Category.REQUESTS, BaseEvent.SamplingRate.AD_REQUEST.getSamplingRate()).withAdUnitId(this.c).withDspCreativeId(adResponse.getDspCreativeId()).withAdType(adResponse.getAdType()).withAdNetworkType(adResponse.getNetworkType()).withAdWidthPx(adResponse.getWidth() != null ? Double.valueOf(adResponse.getWidth().doubleValue()) : null).withAdHeightPx(adResponse.getHeight() != null ? Double.valueOf(adResponse.getHeight().doubleValue()) : null).withGeoLat(location != null ? Double.valueOf(location.getLatitude()) : null).withGeoLon(location != null ? Double.valueOf(location.getLongitude()) : null);
        if (location != null) {
            d = Double.valueOf(location.getAccuracy());
        }
        MoPubEvents.log(withGeoLon.withGeoAccuracy(d).withPerformanceDurationMs(Double.valueOf(networkResponse.networkTimeMs)).withRequestId(adResponse.getRequestId()).withRequestStatusCode(Integer.valueOf(networkResponse.statusCode)).withRequestUri(getUrl()).mo552build());
    }
}
