package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbtj {
    private String zzaiJ;

    public zzbtj(String str) {
        this.zzaiJ = str;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof zzbtj)) {
            return false;
        }
        return com.google.android.gms.common.internal.zzaa.equal(this.zzaiJ, ((zzbtj) obj).zzaiJ);
    }

    public String getToken() {
        return this.zzaiJ;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzaiJ);
    }

    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("token", this.zzaiJ).toString();
    }
}
