package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.analytics.Logger;
/* loaded from: classes2.dex */
class zzsq implements Logger {
    private boolean zzabL;
    private int zzafc = 2;

    @Override // com.google.android.gms.analytics.Logger
    public void error(Exception exc) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void error(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public int getLogLevel() {
        return this.zzafc;
    }

    @Override // com.google.android.gms.analytics.Logger
    public void info(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void setLogLevel(int i) {
        this.zzafc = i;
        if (!this.zzabL) {
            String str = zzsw.zzafl.get();
            Log.i(zzsw.zzafl.get(), new StringBuilder(String.valueOf(str).length() + 91).append("Logger is deprecated. To enable debug logging, please run:\nadb shell setprop log.tag.").append(str).append(" DEBUG").toString());
            this.zzabL = true;
        }
    }

    @Override // com.google.android.gms.analytics.Logger
    public void verbose(String str) {
    }

    @Override // com.google.android.gms.analytics.Logger
    public void warn(String str) {
    }
}
