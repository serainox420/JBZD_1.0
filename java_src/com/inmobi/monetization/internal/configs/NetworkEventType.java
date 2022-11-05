package com.inmobi.monetization.internal.configs;

import com.inmobi.commons.metric.EventType;
/* loaded from: classes2.dex */
public enum NetworkEventType implements EventType {
    FETCH_COMPLETE(0),
    RENDER_COMPLETE(1),
    CONNECT_ERROR(2),
    RESPONSE_ERROR(3),
    RENDER_TIMEOUT(4);
    

    /* renamed from: a  reason: collision with root package name */
    private int f3882a;

    NetworkEventType(int i) {
        this.f3882a = i;
    }

    @Override // com.inmobi.commons.metric.EventType
    public int getValue() {
        return this.f3882a;
    }
}
