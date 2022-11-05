package com.mopub.common.event;

import com.mopub.common.Preconditions;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public class Event extends BaseEvent {
    private Event(Builder builder) {
        super(builder);
    }

    /* loaded from: classes3.dex */
    public static class Builder extends BaseEvent.Builder {
        public Builder(BaseEvent.Name name, BaseEvent.Category category, double d) {
            super(BaseEvent.ScribeCategory.EXCHANGE_CLIENT_EVENT, name, category, d);
        }

        @Override // com.mopub.common.event.BaseEvent.Builder
        /* renamed from: build  reason: collision with other method in class */
        public Event mo552build() {
            return new Event(this);
        }
    }

    public static BaseEvent createEventFromDetails(BaseEvent.Name name, BaseEvent.Category category, BaseEvent.SamplingRate samplingRate, EventDetails eventDetails) {
        Preconditions.checkNotNull(name);
        Preconditions.checkNotNull(category);
        Preconditions.checkNotNull(samplingRate);
        if (eventDetails == null) {
            MoPubLog.d("Unable to log event due to no details present");
            return null;
        }
        return new Builder(name, category, samplingRate.getSamplingRate()).withAdUnitId(eventDetails.getAdUnitId()).withAdCreativeId(eventDetails.getDspCreativeId()).withAdType(eventDetails.getAdType()).withAdNetworkType(eventDetails.getAdNetworkType()).withAdWidthPx(eventDetails.getAdWidthPx()).withAdHeightPx(eventDetails.getAdHeightPx()).withGeoLat(eventDetails.getGeoLatitude()).withGeoLon(eventDetails.getGeoLongitude()).withGeoAccuracy(eventDetails.getGeoAccuracy()).withPerformanceDurationMs(eventDetails.getPerformanceDurationMs()).withRequestId(eventDetails.getRequestId()).withRequestStatusCode(eventDetails.getRequestStatusCode()).withRequestUri(eventDetails.getRequestUri()).mo552build();
    }
}
