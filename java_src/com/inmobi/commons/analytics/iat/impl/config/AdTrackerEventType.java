package com.inmobi.commons.analytics.iat.impl.config;

import com.inmobi.commons.metric.EventType;
/* loaded from: classes2.dex */
public enum AdTrackerEventType implements EventType {
    GOAL_SUCCESS(0),
    GOAL_FAILURE(1),
    GOAL_DUMPED(2);
    

    /* renamed from: a  reason: collision with root package name */
    private int f3749a;

    AdTrackerEventType(int i) {
        this.f3749a = i;
    }

    @Override // com.inmobi.commons.metric.EventType
    public int getValue() {
        return this.f3749a;
    }
}
