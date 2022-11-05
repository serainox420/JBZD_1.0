package com.intentsoftware.addapptr.c;

import android.os.Handler;
import com.intentsoftware.addapptr.b.b;
import java.util.HashMap;
/* compiled from: RetryingRequestListener.java */
/* loaded from: classes2.dex */
public class f implements b.a {
    private final Handler handler = new Handler();
    private final HashMap<String, String> requestData;
    private final String requestUrl;
    private int retriesRemaining;
    private final long retryDelay;
    private final long retryDelayOnNoConnection;

    public f(String str, HashMap<String, String> hashMap, int i, long j, long j2) {
        this.requestUrl = str;
        this.requestData = hashMap;
        this.retriesRemaining = i;
        this.retryDelay = j;
        this.retryDelayOnNoConnection = j2;
    }

    @Override // com.intentsoftware.addapptr.b.b.a
    public void onGetRequestResponse(String str) {
    }

    @Override // com.intentsoftware.addapptr.b.b.a
    public void onGetRequestError() {
        if (this.retriesRemaining > 0) {
            if (c.isLoggable(2)) {
                c.v(this, "Request to: " + this.requestUrl + " failed, retrying.");
            }
            this.handler.postDelayed(new Runnable() { // from class: com.intentsoftware.addapptr.c.f.1
                @Override // java.lang.Runnable
                public void run() {
                    new com.intentsoftware.addapptr.b.b(f.this.requestUrl, f.this.requestData, f.this);
                }
            }, e.isNetworkAvailable() ? this.retryDelay : this.retryDelayOnNoConnection);
            this.retriesRemaining--;
        } else if (c.isLoggable(2)) {
            c.v(this, "Request to: " + this.requestUrl + " failed, retry limit reached. Abandoning.");
        }
    }
}
