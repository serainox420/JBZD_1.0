package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum fw {
    Unknown("unknown"),
    Streaming("streaming"),
    Progressive("progressive");
    
    private String d;

    fw(String str) {
        this.d = str;
    }

    public static fw a(String str) {
        if (Streaming.d.equals(str)) {
            return Streaming;
        }
        if (Progressive.d.equals(str)) {
            return Progressive;
        }
        return Unknown;
    }
}
