package com.openx.common.deviceData.managers;
/* loaded from: classes3.dex */
public class OXMPreference {
    private boolean mExpired;
    private String mValue;

    public String getValue() {
        return this.mValue;
    }

    public boolean isExpired() {
        return this.mExpired;
    }

    public OXMPreference(String str, boolean z) {
        this.mValue = str;
        this.mExpired = z;
    }
}
