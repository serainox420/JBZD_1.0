package com.google.android.gms.internal;
/* loaded from: classes2.dex */
class zzatn {
    final String mAppId;
    final String mName;
    final long zzbrA;
    final long zzbrB;
    final long zzbrC;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatn(String str, String str2, long j, long j2, long j3) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzdr(str);
        com.google.android.gms.common.internal.zzac.zzdr(str2);
        com.google.android.gms.common.internal.zzac.zzax(j >= 0);
        com.google.android.gms.common.internal.zzac.zzax(j2 < 0 ? false : z);
        this.mAppId = str;
        this.mName = str2;
        this.zzbrA = j;
        this.zzbrB = j2;
        this.zzbrC = j3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatn zzLV() {
        return new zzatn(this.mAppId, this.mName, this.zzbrA + 1, this.zzbrB + 1, this.zzbrC);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatn zzap(long j) {
        return new zzatn(this.mAppId, this.mName, this.zzbrA, this.zzbrB, j);
    }
}
