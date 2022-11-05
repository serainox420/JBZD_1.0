package com.google.android.gms.internal;

import com.flurry.android.Constants;
import java.nio.charset.Charset;
import java.security.MessageDigest;
@zzme
/* loaded from: classes.dex */
public class zzdl extends zzdg {
    private MessageDigest zzyt;
    private final int zzyw;
    private final int zzyx;

    public zzdl(int i) {
        int i2 = i / 8;
        this.zzyw = i % 8 > 0 ? i2 + 1 : i2;
        this.zzyx = i;
    }

    @Override // com.google.android.gms.internal.zzdg
    public byte[] zzF(String str) {
        byte[] bArr;
        synchronized (this.zzrJ) {
            this.zzyt = zzet();
            if (this.zzyt == null) {
                bArr = new byte[0];
            } else {
                this.zzyt.reset();
                this.zzyt.update(str.getBytes(Charset.forName("UTF-8")));
                byte[] digest = this.zzyt.digest();
                bArr = new byte[digest.length > this.zzyw ? this.zzyw : digest.length];
                System.arraycopy(digest, 0, bArr, 0, bArr.length);
                if (this.zzyx % 8 > 0) {
                    long j = 0;
                    for (int i = 0; i < bArr.length; i++) {
                        if (i > 0) {
                            j <<= 8;
                        }
                        j += bArr[i] & Constants.UNKNOWN;
                    }
                    long j2 = j >>> (8 - (this.zzyx % 8));
                    for (int i2 = this.zzyw - 1; i2 >= 0; i2--) {
                        bArr[i2] = (byte) (255 & j2);
                        j2 >>>= 8;
                    }
                }
            }
        }
        return bArr;
    }
}
