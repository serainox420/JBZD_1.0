package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum ah {
    STREAM_ONLY(0),
    CACHE_ONLY(1),
    CACHE_OR_STREAM(2);
    
    public final int d;

    ah(int i) {
        this.d = i;
    }

    public static ah a(int i) {
        switch (i) {
            case 0:
                return STREAM_ONLY;
            case 1:
                return CACHE_ONLY;
            case 2:
                return CACHE_OR_STREAM;
            default:
                return null;
        }
    }
}
