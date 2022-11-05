package com.facebook;

import android.os.Handler;
import com.facebook.GraphRequest;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class RequestProgress {
    private final Handler callbackHandler;
    private long lastReportedProgress;
    private long maxProgress;
    private long progress;
    private final GraphRequest request;
    private final long threshold = FacebookSdk.getOnProgressThreshold();

    /* JADX INFO: Access modifiers changed from: package-private */
    public RequestProgress(Handler handler, GraphRequest graphRequest) {
        this.request = graphRequest;
        this.callbackHandler = handler;
    }

    long getProgress() {
        return this.progress;
    }

    long getMaxProgress() {
        return this.maxProgress;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addProgress(long j) {
        this.progress += j;
        if (this.progress >= this.lastReportedProgress + this.threshold || this.progress >= this.maxProgress) {
            reportProgress();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addToMax(long j) {
        this.maxProgress += j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reportProgress() {
        if (this.progress > this.lastReportedProgress) {
            GraphRequest.Callback callback = this.request.getCallback();
            if (this.maxProgress > 0 && (callback instanceof GraphRequest.OnProgressCallback)) {
                final long j = this.progress;
                final long j2 = this.maxProgress;
                final GraphRequest.OnProgressCallback onProgressCallback = (GraphRequest.OnProgressCallback) callback;
                if (this.callbackHandler == null) {
                    onProgressCallback.onProgress(j, j2);
                } else {
                    this.callbackHandler.post(new Runnable() { // from class: com.facebook.RequestProgress.1
                        @Override // java.lang.Runnable
                        public void run() {
                            onProgressCallback.onProgress(j, j2);
                        }
                    });
                }
                this.lastReportedProgress = this.progress;
            }
        }
    }
}
