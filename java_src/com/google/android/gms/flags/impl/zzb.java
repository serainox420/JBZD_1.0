package com.google.android.gms.flags.impl;

import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.internal.zzaqf;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzb {
    private static SharedPreferences zzaXu = null;

    public static SharedPreferences zzn(final Context context) {
        SharedPreferences sharedPreferences;
        synchronized (SharedPreferences.class) {
            if (zzaXu == null) {
                zzaXu = (SharedPreferences) zzaqf.zzb(new Callable<SharedPreferences>() { // from class: com.google.android.gms.flags.impl.zzb.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzDI */
                    public SharedPreferences call() {
                        return context.getSharedPreferences("google_sdk_flags", 1);
                    }
                });
            }
            sharedPreferences = zzaXu;
        }
        return sharedPreferences;
    }
}
