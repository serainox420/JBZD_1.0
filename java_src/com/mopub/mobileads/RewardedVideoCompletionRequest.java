package com.mopub.mobileads;

import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.RetryPolicy;
import com.mopub.volley.toolbox.HttpHeaderParser;
/* loaded from: classes3.dex */
public class RewardedVideoCompletionRequest extends Request<Integer> {

    /* renamed from: a  reason: collision with root package name */
    final RewardedVideoCompletionRequestListener f4460a;

    /* loaded from: classes3.dex */
    public interface RewardedVideoCompletionRequestListener extends Response.ErrorListener {
        void onResponse(Integer num);
    }

    public RewardedVideoCompletionRequest(String str, RetryPolicy retryPolicy, RewardedVideoCompletionRequestListener rewardedVideoCompletionRequestListener) {
        super(0, str, rewardedVideoCompletionRequestListener);
        setShouldCache(false);
        setRetryPolicy(retryPolicy);
        this.f4460a = rewardedVideoCompletionRequestListener;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<Integer> a(NetworkResponse networkResponse) {
        return Response.success(Integer.valueOf(networkResponse.statusCode), HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public void deliverResponse(Integer num) {
        this.f4460a.onResponse(num);
    }
}
