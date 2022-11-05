package com.openx.common.deviceData.managers;
/* loaded from: classes3.dex */
public final class ArpEntity {
    private String mIp;
    private String mMac;

    public String getIp() {
        return this.mIp;
    }

    public String getMac() {
        return this.mMac;
    }

    public ArpEntity(String str, String str2) {
        this.mIp = str;
        this.mMac = str2;
    }
}
