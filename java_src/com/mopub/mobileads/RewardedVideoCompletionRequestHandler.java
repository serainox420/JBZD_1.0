package com.mopub.mobileads;

import android.content.Context;
import android.net.Uri;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.RewardedVideoCompletionRequest;
import com.mopub.network.Networking;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.RequestQueue;
import com.mopub.volley.VolleyError;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes3.dex */
public class RewardedVideoCompletionRequestHandler implements RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f4461a = {5000, 10000, 20000, 40000, 60000};
    private final String b;
    private final Handler c;
    private final RequestQueue d;
    private int e;
    private volatile boolean f;

    RewardedVideoCompletionRequestHandler(Context context, String str, String str2) {
        this(context, str, str2, new Handler());
    }

    RewardedVideoCompletionRequestHandler(Context context, String str, String str2, Handler handler) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        this.b = a(str, str2);
        this.e = 0;
        this.c = handler;
        this.d = Networking.getRequestQueue(context);
    }

    void a() {
        if (this.f) {
            this.d.cancelAll(this.b);
            return;
        }
        RewardedVideoCompletionRequest rewardedVideoCompletionRequest = new RewardedVideoCompletionRequest(this.b, new DefaultRetryPolicy(a(this.e) + CommonConstants.PubError.REQUEST_ERROR, 0, BitmapDescriptorFactory.HUE_RED), this);
        rewardedVideoCompletionRequest.setTag(this.b);
        this.d.add(rewardedVideoCompletionRequest);
        if (this.e >= 17) {
            MoPubLog.d("Exceeded number of retries for rewarded video completion request.");
            return;
        }
        this.c.postDelayed(new Runnable() { // from class: com.mopub.mobileads.RewardedVideoCompletionRequestHandler.1
            @Override // java.lang.Runnable
            public void run() {
                RewardedVideoCompletionRequestHandler.this.a();
            }
        }, a(this.e));
        this.e++;
    }

    @Override // com.mopub.mobileads.RewardedVideoCompletionRequest.RewardedVideoCompletionRequestListener
    public void onResponse(Integer num) {
        if (num != null) {
            if (num.intValue() < 500 || num.intValue() >= 600) {
                this.f = true;
            }
        }
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(VolleyError volleyError) {
        if (volleyError == null || volleyError.networkResponse == null) {
            return;
        }
        if (volleyError.networkResponse.statusCode < 500 || volleyError.networkResponse.statusCode >= 600) {
            this.f = true;
        }
    }

    public static void makeRewardedVideoCompletionRequest(Context context, String str, String str2) {
        if (!TextUtils.isEmpty(str) && context != null) {
            new RewardedVideoCompletionRequestHandler(context, str, str2).a();
        }
    }

    static int a(int i) {
        return (i < 0 || i >= f4461a.length) ? f4461a[f4461a.length - 1] : f4461a[i];
    }

    private static String a(String str, String str2) {
        Preconditions.checkNotNull(str);
        return str + "&customer_id=" + (str2 == null ? "" : Uri.encode(str2)) + "&nv=" + Uri.encode("4.11.0") + "&v=1";
    }
}
