package com.mopub.network;

import android.os.Looper;
import com.mopub.common.logging.MoPubLog;
import com.mopub.network.ScribeRequest;
import com.mopub.volley.Request;
import com.mopub.volley.VolleyError;
/* loaded from: classes3.dex */
public class ScribeRequestManager extends RequestManager<ScribeRequest.ScribeRequestFactory> implements ScribeRequest.Listener {
    public ScribeRequestManager(Looper looper) {
        super(looper);
    }

    @Override // com.mopub.network.RequestManager
    Request<?> a() {
        return ((ScribeRequest.ScribeRequestFactory) this.b).createRequest(this);
    }

    @Override // com.mopub.network.ScribeRequest.Listener
    public void onResponse() {
        MoPubLog.d("Successfully scribed events");
        this.d.post(new Runnable() { // from class: com.mopub.network.ScribeRequestManager.1
            @Override // java.lang.Runnable
            public void run() {
                ScribeRequestManager.this.c();
            }
        });
    }

    @Override // com.mopub.volley.Response.ErrorListener
    public void onErrorResponse(final VolleyError volleyError) {
        this.d.post(new Runnable() { // from class: com.mopub.network.ScribeRequestManager.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    ScribeRequestManager.this.c.backoff(volleyError);
                    ScribeRequestManager.this.b();
                } catch (VolleyError e) {
                    MoPubLog.d("Failed to Scribe events: " + volleyError);
                    ScribeRequestManager.this.c();
                }
            }
        });
    }
}
