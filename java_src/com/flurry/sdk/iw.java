package com.flurry.sdk;
/* loaded from: classes2.dex */
public enum iw {
    GET("GET", 0),
    PUT("PUT", 1),
    POST("POST", 2);
    
    String d;
    int e;

    iw(String str, int i) {
        this.d = str;
        this.e = i;
    }

    public static iw a(int i) {
        switch (i) {
            case 0:
                return GET;
            case 1:
                return PUT;
            case 2:
                return POST;
            default:
                return null;
        }
    }
}
