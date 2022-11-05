package com.google.android.gms.gcm;

import android.os.Bundle;
/* loaded from: classes2.dex */
public class zzc {
    public static final zzc zzbgS = new zzc(0, 30, 3600);
    public static final zzc zzbgT = new zzc(1, 30, 3600);
    private final int zzbgU;
    private final int zzbgV;
    private final int zzbgW;

    private zzc(int i, int i2, int i3) {
        this.zzbgU = i;
        this.zzbgV = i2;
        this.zzbgW = i3;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzc)) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzcVar.zzbgU == this.zzbgU && zzcVar.zzbgV == this.zzbgV && zzcVar.zzbgW == this.zzbgW;
    }

    public int hashCode() {
        return (((((this.zzbgU + 1) ^ 1000003) * 1000003) ^ this.zzbgV) * 1000003) ^ this.zzbgW;
    }

    public String toString() {
        int i = this.zzbgU;
        int i2 = this.zzbgV;
        return new StringBuilder(74).append("policy=").append(i).append(" initial_backoff=").append(i2).append(" maximum_backoff=").append(this.zzbgW).toString();
    }

    public int zzGU() {
        return this.zzbgU;
    }

    public int zzGV() {
        return this.zzbgV;
    }

    public int zzGW() {
        return this.zzbgW;
    }

    public Bundle zzJ(Bundle bundle) {
        bundle.putInt("retry_policy", this.zzbgU);
        bundle.putInt("initial_backoff_seconds", this.zzbgV);
        bundle.putInt("maximum_backoff_seconds", this.zzbgW);
        return bundle;
    }
}
