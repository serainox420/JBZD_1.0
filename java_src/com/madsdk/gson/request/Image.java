package com.madsdk.gson.request;

import java.util.List;
/* loaded from: classes2.dex */
public class Image {
    public int h;
    public List<String> mimes;
    public int type;
    public int w;

    public Image(int i, int i2, int i3, List<String> list) {
        this.type = i;
        this.w = i2;
        this.h = i3;
        this.mimes = list;
    }
}
