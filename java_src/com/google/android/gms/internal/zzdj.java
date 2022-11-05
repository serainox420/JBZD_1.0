package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.security.MessageDigest;
@zzme
/* loaded from: classes.dex */
public class zzdj extends zzdg {
    private MessageDigest zzyt;

    @Override // com.google.android.gms.internal.zzdg
    public byte[] zzF(String str) {
        byte[] bArr;
        int i = 4;
        byte[] zza = zza(str.split(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR));
        this.zzyt = zzet();
        synchronized (this.zzrJ) {
            if (this.zzyt == null) {
                bArr = new byte[0];
            } else {
                this.zzyt.reset();
                this.zzyt.update(zza);
                byte[] digest = this.zzyt.digest();
                if (digest.length <= 4) {
                    i = digest.length;
                }
                bArr = new byte[i];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
            }
        }
        return bArr;
    }

    byte[] zza(String[] strArr) {
        if (strArr.length == 1) {
            return zzdi.zzp(zzdi.zzH(strArr[0]));
        }
        if (strArr.length >= 5) {
            byte[] bArr = new byte[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                bArr[i] = zzr(zzdi.zzH(strArr[i]));
            }
            return bArr;
        }
        byte[] bArr2 = new byte[strArr.length * 2];
        for (int i2 = 0; i2 < strArr.length; i2++) {
            byte[] zzs = zzs(zzdi.zzH(strArr[i2]));
            bArr2[i2 * 2] = zzs[0];
            bArr2[(i2 * 2) + 1] = zzs[1];
        }
        return bArr2;
    }

    byte zzr(int i) {
        return (byte) ((((i & 255) ^ ((65280 & i) >> 8)) ^ ((16711680 & i) >> 16)) ^ (((-16777216) & i) >> 24));
    }

    byte[] zzs(int i) {
        int i2 = (65535 & i) ^ (((-65536) & i) >> 16);
        return new byte[]{(byte) i2, (byte) (i2 >> 8)};
    }
}
