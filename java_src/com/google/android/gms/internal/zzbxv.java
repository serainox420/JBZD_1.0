package com.google.android.gms.internal;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2.dex */
final class zzbxv {
    final int tag;
    final byte[] zzbxZ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbxv(int i, byte[] bArr) {
        this.tag = i;
        this.zzbxZ = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbxv)) {
            return false;
        }
        zzbxv zzbxvVar = (zzbxv) obj;
        return this.tag == zzbxvVar.tag && Arrays.equals(this.zzbxZ, zzbxvVar.zzbxZ);
    }

    public int hashCode() {
        return ((this.tag + 527) * 31) + Arrays.hashCode(this.zzbxZ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zzbxm zzbxmVar) throws IOException {
        zzbxmVar.zzrk(this.tag);
        zzbxmVar.zzaj(this.zzbxZ);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int zzu() {
        return zzbxm.zzrl(this.tag) + 0 + this.zzbxZ.length;
    }
}
