package com.pubmatic.sdk.common.network;

import com.pubmatic.sdk.common.network.HttpWorker;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3.dex */
public class HttpHandler implements HttpWorker.HttpRedirectListener, Runnable {
    private HttpRequest mHttpRequest;
    private ArrayList<HttpRequest> mHttpRequestList;
    private HttpRequestListener mListener;

    /* loaded from: classes3.dex */
    public interface HttpRequestListener {
        void onErrorOccured(int i, int i2, String str);

        void onRequestComplete(HttpResponse httpResponse, String str);

        boolean overrideRedirection();
    }

    public HttpHandler(HttpRequestListener httpRequestListener, ArrayList<HttpRequest> arrayList) {
        this.mHttpRequestList = null;
        this.mListener = httpRequestListener;
        this.mHttpRequestList = arrayList;
    }

    public HttpHandler(HttpRequestListener httpRequestListener, HttpRequest httpRequest) {
        this.mHttpRequestList = null;
        this.mListener = httpRequestListener;
        this.mHttpRequest = httpRequest;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.mHttpRequestList != null) {
            Iterator<HttpRequest> it = this.mHttpRequestList.iterator();
            while (it.hasNext()) {
                execute(it.next());
            }
        } else if (this.mHttpRequest != null) {
            execute(this.mHttpRequest);
        }
    }

    private void execute(HttpRequest httpRequest) {
        HttpResponse execute = new HttpWorker().execute(httpRequest, this);
        if (this.mListener != null) {
            if (execute != null) {
                if (execute.errorType != 0) {
                    this.mListener.onErrorOccured(execute.errorType, execute.errorCode, httpRequest.getRequestUrl());
                    return;
                } else {
                    this.mListener.onRequestComplete(execute, httpRequest.getRequestUrl());
                    return;
                }
            }
            this.mListener.onErrorOccured(-999, -1, httpRequest.getRequestUrl());
        }
    }

    @Override // com.pubmatic.sdk.common.network.HttpWorker.HttpRedirectListener
    public boolean overrideRedirection() {
        if (this.mListener == null) {
            return false;
        }
        return this.mListener.overrideRedirection();
    }
}
