package com.mopub.common.event;

import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Random;
/* loaded from: classes3.dex */
public class EventSampler {

    /* renamed from: a  reason: collision with root package name */
    private Random f4377a;
    private LinkedHashMap<String, Boolean> b;

    public EventSampler() {
        this(new Random());
    }

    @VisibleForTesting
    public EventSampler(Random random) {
        this.f4377a = random;
        this.b = new LinkedHashMap<String, Boolean>(135, 0.75f, true) { // from class: com.mopub.common.event.EventSampler.1
            @Override // java.util.LinkedHashMap
            protected boolean removeEldestEntry(Map.Entry<String, Boolean> entry) {
                return size() > 100;
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(BaseEvent baseEvent) {
        boolean z = true;
        Preconditions.checkNotNull(baseEvent);
        String requestId = baseEvent.getRequestId();
        if (requestId == null) {
            return this.f4377a.nextDouble() < baseEvent.getSamplingRate();
        }
        Boolean bool = this.b.get(requestId);
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this.f4377a.nextDouble() >= baseEvent.getSamplingRate()) {
            z = false;
        }
        this.b.put(requestId, Boolean.valueOf(z));
        return z;
    }
}
