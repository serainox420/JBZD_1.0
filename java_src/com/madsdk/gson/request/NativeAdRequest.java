package com.madsdk.gson.request;

import java.util.List;
/* loaded from: classes2.dex */
public class NativeAdRequest {
    public App app;
    public DeviceInfo device;
    public Ext ext;
    public String id;
    public List<Imp> imp;
    public Site site;
    public User user;

    public NativeAdRequest(String str, List<Imp> list, Site site, App app, DeviceInfo deviceInfo, User user, Ext ext) {
        this.id = str;
        this.imp = list;
        this.site = site;
        this.app = app;
        this.device = deviceInfo;
        this.user = user;
        this.ext = ext;
    }
}
