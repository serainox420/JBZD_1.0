package com.millennialmedia.internal;

import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.utils.ThreadUtils;
/* loaded from: classes3.dex */
public abstract class AdPlacement {
    private static final String e = AdPlacement.class.getSimpleName();

    /* renamed from: a  reason: collision with root package name */
    protected volatile String f4046a = "idle";
    protected volatile PlayList b;
    protected volatile RequestState c;
    protected XIncentivizedEventListener d;
    public String placementId;

    /* loaded from: classes3.dex */
    public static class RequestState {

        /* renamed from: a  reason: collision with root package name */
        private int f4048a = new Object().hashCode();
        private int b;
        private AdPlacementReporter c;

        public int getItemHash() {
            this.b = new Object().hashCode();
            return this.b;
        }

        public void setAdPlacementReporter(AdPlacementReporter adPlacementReporter) {
            this.c = adPlacementReporter;
        }

        public AdPlacementReporter getAdPlacementReporter() {
            return this.c;
        }

        public boolean compareRequest(RequestState requestState) {
            return this.f4048a == requestState.f4048a;
        }

        public boolean compare(RequestState requestState) {
            return this.f4048a == requestState.f4048a && this.b == requestState.b;
        }

        public RequestState copy() {
            RequestState requestState = new RequestState();
            requestState.f4048a = this.f4048a;
            requestState.b = this.b;
            requestState.c = this.c;
            return requestState;
        }
    }

    public RequestState getRequestState() {
        this.c = new RequestState();
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AdPlacement(String str) throws MMException {
        if (str == null) {
            throw new MMException("PlacementId must be a non null.");
        }
        this.placementId = str.trim();
        if (this.placementId.isEmpty()) {
            throw new MMException("PlacementId cannot be an empty string.");
        }
    }

    public void xSetIncentivizedListener(XIncentivizedEventListener xIncentivizedEventListener) {
        this.d = xIncentivizedEventListener;
    }

    public XIncentivizedEventListener xGetIncentivizedListener() {
        return this.d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(final XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
        if (xIncentiveEvent != null) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(e, "Incentive earned <" + xIncentiveEvent.eventId + ">");
            }
            final XIncentivizedEventListener xIncentivizedEventListener = this.d;
            if (xIncentivizedEventListener != null) {
                ThreadUtils.runOffUiThread(new Runnable() { // from class: com.millennialmedia.internal.AdPlacement.1
                    @Override // java.lang.Runnable
                    public void run() {
                        if (XIncentivizedEventListener.XIncentiveEvent.INCENTIVE_VIDEO_COMPLETE.equalsIgnoreCase(xIncentiveEvent.eventId)) {
                            xIncentivizedEventListener.onVideoComplete();
                        } else {
                            xIncentivizedEventListener.onCustomEvent(xIncentiveEvent);
                        }
                    }
                });
            }
        }
    }
}
