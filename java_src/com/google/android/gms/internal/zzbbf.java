package com.google.android.gms.internal;

import android.util.Log;
/* loaded from: classes2.dex */
public class zzbbf implements zzbbv {
    private boolean zzbJv = true;
    private int zzafc = 5;

    @Override // com.google.android.gms.internal.zzbbv
    public void e(String str) {
        if (zzak(6)) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.internal.zzbbv
    public void v(String str) {
        if (zzak(2)) {
            Log.v("GoogleTagManager", str);
        }
    }

    public boolean zzak(int i) {
        return (this.zzbJv && Log.isLoggable("GoogleTagManager", i)) || (!this.zzbJv && this.zzafc <= i);
    }

    @Override // com.google.android.gms.internal.zzbbv
    public void zzb(String str, Throwable th) {
        if (zzak(6)) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.internal.zzbbv
    public void zzbg(String str) {
        if (zzak(4)) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.internal.zzbbv
    public void zzbh(String str) {
        if (zzak(5)) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.internal.zzbbv
    public void zzc(String str, Throwable th) {
        if (zzak(5)) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
