package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
/* loaded from: classes.dex */
public class GraphRequestAsyncTask extends AsyncTask<Void, Void, List<GraphResponse>> {
    private static final String TAG = GraphRequestAsyncTask.class.getCanonicalName();
    private final HttpURLConnection connection;
    private Exception exception;
    private final GraphRequestBatch requests;

    public GraphRequestAsyncTask(GraphRequest... graphRequestArr) {
        this((HttpURLConnection) null, new GraphRequestBatch(graphRequestArr));
    }

    public GraphRequestAsyncTask(Collection<GraphRequest> collection) {
        this((HttpURLConnection) null, new GraphRequestBatch(collection));
    }

    public GraphRequestAsyncTask(GraphRequestBatch graphRequestBatch) {
        this((HttpURLConnection) null, graphRequestBatch);
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequest... graphRequestArr) {
        this(httpURLConnection, new GraphRequestBatch(graphRequestArr));
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        this(httpURLConnection, new GraphRequestBatch(collection));
    }

    public GraphRequestAsyncTask(HttpURLConnection httpURLConnection, GraphRequestBatch graphRequestBatch) {
        this.requests = graphRequestBatch;
        this.connection = httpURLConnection;
    }

    protected final Exception getException() {
        return this.exception;
    }

    protected final GraphRequestBatch getRequests() {
        return this.requests;
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.connection + ", requests: " + this.requests + "}";
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        Handler handler;
        super.onPreExecute();
        if (FacebookSdk.isDebugEnabled()) {
            Log.d(TAG, String.format("execute async task: %s", this));
        }
        if (this.requests.getCallbackHandler() == null) {
            if (Thread.currentThread() instanceof HandlerThread) {
                handler = new Handler();
            } else {
                handler = new Handler(Looper.getMainLooper());
            }
            this.requests.setCallbackHandler(handler);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public void onPostExecute(List<GraphResponse> list) {
        super.onPostExecute((GraphRequestAsyncTask) list);
        if (this.exception != null) {
            Log.d(TAG, String.format("onPostExecute: exception encountered during request: %s", this.exception.getMessage()));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.os.AsyncTask
    public List<GraphResponse> doInBackground(Void... voidArr) {
        List<GraphResponse> executeConnectionAndWait;
        try {
            if (this.connection == null) {
                executeConnectionAndWait = this.requests.executeAndWait();
            } else {
                executeConnectionAndWait = GraphRequest.executeConnectionAndWait(this.connection, this.requests);
            }
            return executeConnectionAndWait;
        } catch (Exception e) {
            this.exception = e;
            return null;
        }
    }
}
