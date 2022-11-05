package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum al {
    NONE(0),
    QUEUED(1),
    IN_PROGRESS(2),
    COMPLETE(3),
    CANCELLED(4),
    EVICTED(5),
    ERROR(6);
    
    final int h;

    al(int i2) {
        this.h = i2;
    }

    public static al a(int i2) {
        switch (i2) {
            case 0:
                return NONE;
            case 1:
                return QUEUED;
            case 2:
                return IN_PROGRESS;
            case 3:
                return COMPLETE;
            case 4:
                return CANCELLED;
            case 5:
                return EVICTED;
            case 6:
                return ERROR;
            default:
                return null;
        }
    }
}
