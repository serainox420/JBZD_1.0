package com.google.android.gms.internal;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzbif implements Result {
    private final int zzAW;
    private final Status zzair;
    private final zza zzbMe;
    private final zzbir zzbMf;

    /* loaded from: classes2.dex */
    public static class zza {
        private final zzbio zzbKg;
        private final byte[] zzbMg;
        private final long zzbMh;
        private final zzbhx zzbMi;

        public zza(zzbhx zzbhxVar, byte[] bArr, zzbio zzbioVar, long j) {
            this.zzbMi = zzbhxVar;
            this.zzbMg = bArr;
            this.zzbKg = zzbioVar;
            this.zzbMh = j;
        }

        public zza(zzbio zzbioVar) {
            this(null, null, zzbioVar, 0L);
        }

        public byte[] zzSO() {
            return this.zzbMg;
        }

        public zzbhx zzSP() {
            return this.zzbMi;
        }

        public zzbio zzSQ() {
            return this.zzbKg;
        }

        public long zzSR() {
            return this.zzbMh;
        }
    }

    public zzbif(Status status, int i) {
        this(status, i, null, null);
    }

    public zzbif(Status status, int i, zza zzaVar, zzbir zzbirVar) {
        this.zzair = status;
        this.zzAW = i;
        this.zzbMe = zzaVar;
        this.zzbMf = zzbirVar;
    }

    public int getSource() {
        return this.zzAW;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public zza zzSL() {
        return this.zzbMe;
    }

    public zzbir zzSM() {
        return this.zzbMf;
    }

    public String zzSN() {
        if (this.zzAW == 0) {
            return "Network";
        }
        if (this.zzAW == 1) {
            return "Saved file on disk";
        }
        if (this.zzAW != 2) {
            throw new IllegalStateException("Resource source is unknown.");
        }
        return "Default resource";
    }
}
