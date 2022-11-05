package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
/* loaded from: classes3.dex */
public class VastVideoViewCountdownRunnable extends RepeatingHandlerRunnable {
    private final VastVideoViewController c;

    public VastVideoViewCountdownRunnable(VastVideoViewController vastVideoViewController, Handler handler) {
        super(handler);
        Preconditions.checkNotNull(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        this.c = vastVideoViewController;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        this.c.m();
        if (this.c.l()) {
            this.c.k();
        }
    }
}
