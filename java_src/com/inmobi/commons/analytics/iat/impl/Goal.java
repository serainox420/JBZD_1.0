package com.inmobi.commons.analytics.iat.impl;

import java.io.Serializable;
/* loaded from: classes2.dex */
public class Goal implements Serializable {
    public int count;
    public boolean isDuplicate;
    public String name;
    public int retryCount;
    public long retryTime;
    public State state;

    /* loaded from: classes2.dex */
    public enum State {
        ENQUEUE_PENDING,
        ENQUEUE_REQUESTED,
        ENQUEUE_SUCCEEDED,
        REFERRER_REQUESTED,
        REFERRER_ACQUIRED,
        REPORTING_REQUESTED,
        REPORTING_COMPLETED,
        REPORTING_TIMED_OUT,
        REPORTING_FAILED
    }

    public Goal() {
        this("", 0, 0L, 0, false);
    }

    public Goal(String str, int i, long j, int i2, boolean z) {
        this(str, State.ENQUEUE_PENDING, i, j, i2, z);
    }

    public Goal(String str, State state, int i, long j, int i2, boolean z) {
        int i3 = 0;
        this.name = str;
        this.state = state;
        this.count = i < 0 ? 0 : i;
        this.retryTime = j < 0 ? 0L : j;
        this.retryCount = i2 >= 0 ? i2 : i3;
        this.isDuplicate = z;
    }
}
