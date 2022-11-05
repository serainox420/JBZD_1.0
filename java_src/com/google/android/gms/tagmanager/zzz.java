package com.google.android.gms.tagmanager;

import android.util.Log;
/* loaded from: classes2.dex */
public class zzz implements zzbp {
    private int zzafc = 5;

    @Override // com.google.android.gms.tagmanager.zzbp
    public void e(String str) {
        if (this.zzafc <= 6) {
            Log.e("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void setLogLevel(int i) {
        this.zzafc = i;
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void v(String str) {
        if (this.zzafc <= 2) {
            Log.v("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void zzb(String str, Throwable th) {
        if (this.zzafc <= 6) {
            Log.e("GoogleTagManager", str, th);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void zzbf(String str) {
        if (this.zzafc <= 3) {
            Log.d("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void zzbg(String str) {
        if (this.zzafc <= 4) {
            Log.i("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void zzbh(String str) {
        if (this.zzafc <= 5) {
            Log.w("GoogleTagManager", str);
        }
    }

    @Override // com.google.android.gms.tagmanager.zzbp
    public void zzc(String str, Throwable th) {
        if (this.zzafc <= 5) {
            Log.w("GoogleTagManager", str, th);
        }
    }
}
