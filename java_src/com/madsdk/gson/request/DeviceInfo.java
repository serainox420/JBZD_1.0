package com.madsdk.gson.request;
/* loaded from: classes2.dex */
public class DeviceInfo {
    public String carier;
    public Geo geo;
    public String ip;
    public String os;
    public String osv;
    public String ua;

    public DeviceInfo(Geo geo, String str, String str2, String str3) {
        this.geo = geo;
        this.os = str;
        this.osv = str2;
        this.carier = str3;
    }
}
