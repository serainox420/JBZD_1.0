package com.mopub.network;

import com.mopub.common.VisibleForTesting;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.EventSerializer;
import com.mopub.network.RequestManager;
import com.mopub.volley.DefaultRetryPolicy;
import com.mopub.volley.NetworkResponse;
import com.mopub.volley.Request;
import com.mopub.volley.Response;
import com.mopub.volley.toolbox.HttpHeaderParser;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
/* loaded from: classes.dex */
public class ScribeRequest extends Request<Void> {

    /* renamed from: a  reason: collision with root package name */
    private final List<BaseEvent> f4664a;
    private final EventSerializer b;
    private final Listener c;

    /* loaded from: classes3.dex */
    public interface Listener extends Response.ErrorListener {
        void onResponse();
    }

    /* loaded from: classes3.dex */
    public interface ScribeRequestFactory extends RequestManager.RequestFactory {
        ScribeRequest createRequest(Listener listener);
    }

    public ScribeRequest(String str, List<BaseEvent> list, EventSerializer eventSerializer, Listener listener) {
        super(1, str, listener);
        this.f4664a = list;
        this.b = eventSerializer;
        this.c = listener;
        setShouldCache(false);
        setRetryPolicy(new DefaultRetryPolicy());
    }

    @Override // com.mopub.volley.Request
    protected Map<String, String> a() {
        JSONArray serializeAsJson = this.b.serializeAsJson(this.f4664a);
        HashMap hashMap = new HashMap();
        hashMap.put("log", serializeAsJson.toString());
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    public Response<Void> a(NetworkResponse networkResponse) {
        return Response.success(null, HttpHeaderParser.parseCacheHeaders(networkResponse));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.volley.Request
    /* renamed from: a */
    public void deliverResponse(Void r2) {
        this.c.onResponse();
    }

    @VisibleForTesting
    @Deprecated
    public List<BaseEvent> getEvents() {
        return this.f4664a;
    }
}
