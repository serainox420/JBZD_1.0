package com.amazon.device.ads;

import android.util.Log;
/* compiled from: Logger.java */
/* loaded from: classes.dex */
class LogcatLogger implements Logger {
    private String logTag;

    @Override // com.amazon.device.ads.Logger
    /* renamed from: withLogTag */
    public LogcatLogger mo33withLogTag(String str) {
        this.logTag = str;
        return this;
    }

    @Override // com.amazon.device.ads.Logger
    public void i(String str) {
        Log.i(this.logTag, str);
    }

    @Override // com.amazon.device.ads.Logger
    public void v(String str) {
        Log.v(this.logTag, str);
    }

    @Override // com.amazon.device.ads.Logger
    public void d(String str) {
        Log.d(this.logTag, str);
    }

    @Override // com.amazon.device.ads.Logger
    public void w(String str) {
        Log.w(this.logTag, str);
    }

    @Override // com.amazon.device.ads.Logger
    public void e(String str) {
        Log.e(this.logTag, str);
    }
}
