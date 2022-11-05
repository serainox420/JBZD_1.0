package com.madsdk.gson.request;

import java.util.List;
/* loaded from: classes2.dex */
public class Request {
    private final String adunit;
    public List<Asset> assets;
    private final String layout;
    public String secure;

    public Request(List<Asset> list, String str, String str2, String str3) {
        this.assets = list;
        this.layout = str;
        this.adunit = str2;
        this.secure = str3;
    }
}
