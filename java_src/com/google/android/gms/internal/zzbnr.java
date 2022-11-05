package com.google.android.gms.internal;

import android.util.Log;
import com.google.firebase.crash.FirebaseCrash;
import java.lang.Thread;
/* loaded from: classes2.dex */
public class zzbnr implements Thread.UncaughtExceptionHandler {
    private final FirebaseCrash zzbZn;
    private final Thread.UncaughtExceptionHandler zzbZo;

    public zzbnr(Thread.UncaughtExceptionHandler uncaughtExceptionHandler, FirebaseCrash firebaseCrash) {
        this.zzbZn = firebaseCrash;
        this.zzbZo = uncaughtExceptionHandler;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(Thread thread, Throwable th) {
        Log.e("UncaughtException", "", th);
        try {
            try {
                this.zzbZn.a(th);
            } catch (zzbnm e) {
                Log.v("UncaughtException", e.getMessage());
            }
        } catch (Exception e2) {
            Log.e("UncaughtException", "Ouch!  My own exception handler threw an exception.", e2);
        }
        if (this.zzbZo != null) {
            this.zzbZo.uncaughtException(thread, th);
        }
    }
}
