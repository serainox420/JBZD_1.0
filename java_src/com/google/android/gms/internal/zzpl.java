package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
@zzme
/* loaded from: classes.dex */
public class zzpl extends Handler {
    public zzpl(Looper looper) {
        super(looper);
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        try {
            super.handleMessage(message);
        } catch (Exception e) {
            com.google.android.gms.ads.internal.zzw.zzcQ().zza(e, "AdMobHandler.handleMessage");
        }
    }
}
