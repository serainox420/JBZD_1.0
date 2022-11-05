package com.mopub.mobileads;

import android.os.Handler;
import com.mopub.common.Preconditions;
import com.mopub.network.TrackingRequest;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3.dex */
public class VastVideoViewProgressRunnable extends RepeatingHandlerRunnable {
    private final VastVideoViewController c;
    private final VastVideoConfig d;

    public VastVideoViewProgressRunnable(VastVideoViewController vastVideoViewController, VastVideoConfig vastVideoConfig, Handler handler) {
        super(handler);
        Preconditions.checkNotNull(vastVideoViewController);
        Preconditions.checkNotNull(vastVideoConfig);
        this.c = vastVideoViewController;
        this.d = vastVideoConfig;
    }

    @Override // com.mopub.mobileads.RepeatingHandlerRunnable
    public void doWork() {
        int i = this.c.i();
        int j = this.c.j();
        this.c.n();
        if (i > 0) {
            List<VastTracker> untriggeredTrackersBefore = this.d.getUntriggeredTrackersBefore(j, i);
            if (!untriggeredTrackersBefore.isEmpty()) {
                ArrayList arrayList = new ArrayList();
                for (VastTracker vastTracker : untriggeredTrackersBefore) {
                    arrayList.add(vastTracker.getTrackingUrl());
                    vastTracker.setTracked();
                }
                TrackingRequest.makeTrackingHttpRequest(new VastMacroHelper(arrayList).withAssetUri(this.c.o()).withContentPlayHead(Integer.valueOf(j)).getUris(), this.c.h());
            }
            this.c.a(j);
        }
    }
}
