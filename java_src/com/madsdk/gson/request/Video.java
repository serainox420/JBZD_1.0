package com.madsdk.gson.request;

import java.util.List;
/* loaded from: classes2.dex */
public class Video {
    public int maxduration;
    public List<String> mimes;
    public int minduration;
    public List<String> protocols;

    public Video(int i, int i2, List<String> list, List<String> list2) {
        this.minduration = i;
        this.maxduration = i2;
        this.protocols = list;
        this.mimes = list2;
    }
}
