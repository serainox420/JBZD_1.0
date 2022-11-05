package com.google.android.gms.internal;

import com.google.android.gms.internal.zznt;
@zzme
/* loaded from: classes.dex */
public class zznq extends zznt.zza {
    private final String zzUA;
    private final int zzVi;

    public zznq(String str, int i) {
        this.zzUA = str;
        this.zzVi = i;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof zznq)) {
            return false;
        }
        zznq zznqVar = (zznq) obj;
        return com.google.android.gms.common.internal.zzaa.equal(getType(), zznqVar.getType()) && com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(getAmount()), Integer.valueOf(zznqVar.getAmount()));
    }

    @Override // com.google.android.gms.internal.zznt
    public int getAmount() {
        return this.zzVi;
    }

    @Override // com.google.android.gms.internal.zznt
    public String getType() {
        return this.zzUA;
    }
}
