package com.crashlytics.android.core.internal.models;
/* loaded from: classes.dex */
public class SignalData {
    public final String code;
    public final long faultAddress;
    public final String name;

    public SignalData(String str, String str2, long j) {
        this.name = str;
        this.code = str2;
        this.faultAddress = j;
    }
}
