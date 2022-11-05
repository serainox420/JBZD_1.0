package com.madsdk.gson.request;

import com.google.gson.a.c;
/* loaded from: classes.dex */
public class Imp {
    public Float bidfloor;
    public String id;
    @c(a = "native")
    public NativeInfo nativeInfo;

    public Imp(String str, Float f, NativeInfo nativeInfo) {
        this.id = str;
        this.bidfloor = f;
        this.nativeInfo = nativeInfo;
    }
}
