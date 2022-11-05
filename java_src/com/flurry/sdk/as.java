package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum as {
    UNKNOWN(0),
    VIDEO(1),
    IMAGE(2),
    TEXT(3);
    
    final int e;

    as(int i) {
        this.e = i;
    }

    public static as a(int i) {
        switch (i) {
            case 0:
                return UNKNOWN;
            case 1:
                return VIDEO;
            case 2:
                return IMAGE;
            case 3:
                return TEXT;
            default:
                return null;
        }
    }
}
