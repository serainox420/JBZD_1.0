package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum ix {
    INSTALL(1),
    SESSION_START(2),
    SESSION_END(3),
    APPLICATION_EVENT(4);
    
    final int e;

    ix(int i) {
        this.e = i;
    }

    public static ix a(int i) {
        switch (i) {
            case 1:
                return INSTALL;
            case 2:
                return SESSION_START;
            case 3:
                return SESSION_END;
            case 4:
                return APPLICATION_EVENT;
            default:
                return null;
        }
    }
}
