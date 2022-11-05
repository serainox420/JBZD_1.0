package com.mopub.nativeads;

import android.content.Context;
import android.os.Handler;
import com.mopub.common.Constants;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.mopub.nativeads.PositioningSource;
import com.mopub.network.MoPubNetworkError;
import com.mopub.network.Networking;
import com.mopub.volley.Response;
import com.mopub.volley.VolleyError;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ServerPositioningSource.java */
/* loaded from: classes3.dex */
public class h implements PositioningSource {
    private final Context b;
    private PositioningSource.PositioningListener g;
    private int h;
    private String i;
    private PositioningRequest j;

    /* renamed from: a  reason: collision with root package name */
    private int f4634a = 300000;
    private final Handler c = new Handler();
    private final Runnable d = new Runnable() { // from class: com.mopub.nativeads.h.1
        @Override // java.lang.Runnable
        public void run() {
            h.this.a();
        }
    };
    private final Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning> e = new Response.Listener<MoPubNativeAdPositioning.MoPubClientPositioning>() { // from class: com.mopub.nativeads.h.2
        @Override // com.mopub.volley.Response.Listener
        public void onResponse(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
            h.this.a(moPubClientPositioning);
        }
    };
    private final Response.ErrorListener f = new Response.ErrorListener() { // from class: com.mopub.nativeads.h.3
        @Override // com.mopub.volley.Response.ErrorListener
        public void onErrorResponse(VolleyError volleyError) {
            if (!(volleyError instanceof MoPubNetworkError) || ((MoPubNetworkError) volleyError).getReason().equals(MoPubNetworkError.Reason.WARMING_UP)) {
                MoPubLog.e("Failed to load positioning data", volleyError);
                if (volleyError.networkResponse == null && !DeviceUtils.isNetworkAvailable(h.this.b)) {
                    MoPubLog.c(String.valueOf(MoPubErrorCode.NO_CONNECTION.toString()));
                }
            }
            h.this.b();
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Context context) {
        this.b = context.getApplicationContext();
    }

    @Override // com.mopub.nativeads.PositioningSource
    public void loadPositions(String str, PositioningSource.PositioningListener positioningListener) {
        if (this.j != null) {
            this.j.cancel();
            this.j = null;
        }
        if (this.h > 0) {
            this.c.removeCallbacks(this.d);
            this.h = 0;
        }
        this.g = positioningListener;
        this.i = new g(this.b).withAdUnitId(str).generateUrlString(Constants.HOST);
        a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        MoPubLog.d("Loading positioning from: " + this.i);
        this.j = new PositioningRequest(this.i, this.e, this.f);
        Networking.getRequestQueue(this.b).add(this.j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        if (this.g != null) {
            this.g.onLoad(moPubClientPositioning);
        }
        this.g = null;
        this.h = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int pow = (int) (Math.pow(2.0d, this.h + 1) * 1000.0d);
        if (pow >= this.f4634a) {
            MoPubLog.d("Error downloading positioning information");
            if (this.g != null) {
                this.g.onFailed();
            }
            this.g = null;
            return;
        }
        this.h++;
        this.c.postDelayed(this.d, pow);
    }
}
