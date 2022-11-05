package com.mopub.network;

import android.content.Context;
import android.text.TextUtils;
import com.mopub.common.Preconditions;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.VastErrorCode;
import com.mopub.mobileads.VastMacroHelper;
import com.mopub.mobileads.VastTracker;
import com.mopub.network.MoPubNetworkError;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* loaded from: classes3.dex */
public class TrackingRequest extends Request<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final Listener f4667a;

    /* loaded from: classes3.dex */
    public interface Listener extends Response.ErrorListener {
        void onResponse(String str);
    }

    private TrackingRequest(String str, Listener listener) {
        super(0, str, listener);
        this.f4667a = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy(DefaultRetryPolicy.DEFAULT_TIMEOUT_MS, 0, 1.0f));
    }

    @Override // com.mopub.volley.Request
    protected Response<Void> a(NetworkResponse networkResponse) {
        return networkResponse.statusCode != 200 ? Response.error(new MoPubNetworkError("Failed to log tracking request. Response code: " + networkResponse.statusCode + " for url: " + getUrl(), MoPubNetworkError.Reason.TRACKING_FAILURE)) : Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    @Override // com.mopub.volley.Request
    public void deliverResponse(Void r3) {
        if (this.f4667a != null) {
            this.f4667a.onResponse(getUrl());
        }
    }

    public static void makeVastTrackingHttpRequest(List<VastTracker> list, VastErrorCode vastErrorCode, Integer num, String str, Context context) {
        Preconditions.checkNotNull(list);
        ArrayList arrayList = new ArrayList(list.size());
        for (VastTracker vastTracker : list) {
            if (vastTracker != null && (!vastTracker.isTracked() || vastTracker.isRepeatable())) {
                arrayList.add(vastTracker.getTrackingUrl());
                vastTracker.setTracked();
            }
        }
        makeTrackingHttpRequest(new VastMacroHelper(arrayList).withErrorCode(vastErrorCode).withContentPlayHead(num).withAssetUri(str).getUris(), context);
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context, final Listener listener, BaseEvent.Name name) {
        if (iterable != null && context != null) {
            MoPubRequestQueue requestQueue = Networking.getRequestQueue(context);
            for (final String str : iterable) {
                if (!TextUtils.isEmpty(str)) {
                    requestQueue.add(new TrackingRequest(str, new Listener() { // from class: com.mopub.network.TrackingRequest.1
                        @Override // com.mopub.network.TrackingRequest.Listener
                        public void onResponse(String str2) {
                            MoPubLog.d("Successfully hit tracking endpoint: " + str2);
                            if (Listener.this != null) {
                                Listener.this.onResponse(str2);
                            }
                        }

                        @Override // com.mopub.volley.Response.ErrorListener
                        public void onErrorResponse(VolleyError volleyError) {
                            MoPubLog.d("Failed to hit tracking endpoint: " + str);
                            if (Listener.this != null) {
                                Listener.this.onErrorResponse(volleyError);
                            }
                        }
                    }));
                }
            }
        }
    }

    public static void makeTrackingHttpRequest(String str, Context context) {
        makeTrackingHttpRequest(str, context, (Listener) null, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(String str, Context context, Listener listener) {
        makeTrackingHttpRequest(str, context, listener, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(String str, Context context, BaseEvent.Name name) {
        makeTrackingHttpRequest(str, context, (Listener) null, name);
    }

    public static void makeTrackingHttpRequest(String str, Context context, Listener listener, BaseEvent.Name name) {
        if (str != null) {
            makeTrackingHttpRequest(Arrays.asList(str), context, listener, name);
        }
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context) {
        makeTrackingHttpRequest(iterable, context, (Listener) null, (BaseEvent.Name) null);
    }

    public static void makeTrackingHttpRequest(Iterable<String> iterable, Context context, BaseEvent.Name name) {
        makeTrackingHttpRequest(iterable, context, (Listener) null, name);
    }
}
