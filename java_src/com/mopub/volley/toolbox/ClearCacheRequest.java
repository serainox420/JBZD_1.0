package com.mopub.volley.toolbox;

import android.os.Handler;
import android.os.Looper;
import com.mopub.volley.Cache;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
/* loaded from: classes3.dex */
public class ClearCacheRequest extends Request<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f4687a;
    private final Runnable b;

    public ClearCacheRequest(Cache cache, Runnable runnable) {
        super(0, null, null);
        this.f4687a = cache;
        this.b = runnable;
    }

    @Override // com.mopub.volley.Request
    public boolean isCanceled() {
        this.f4687a.clear();
        if (this.b != null) {
            new Handler(Looper.getMainLooper()).postAtFrontOfQueue(this.b);
            return true;
        }
        return true;
    }

    @Override // com.mopub.volley.Request
    public Request.Priority getPriority() {
        return Request.Priority.IMMEDIATE;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<Object> a(NetworkResponse networkResponse) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public void deliverResponse(Object obj) {
    }
}
