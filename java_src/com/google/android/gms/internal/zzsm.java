package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public enum zzsm {
    NONE,
    GZIP;

    public static zzsm zzbZ(String str) {
        return "GZIP".equalsIgnoreCase(str) ? GZIP : NONE;
    }
}
