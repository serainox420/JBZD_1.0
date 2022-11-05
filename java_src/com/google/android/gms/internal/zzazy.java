package com.google.android.gms.internal;

import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzazy {
    private static final String TAG = zzazy.class.getSimpleName();
    private static final char[] zzbAG = "0123456789abcdef".toCharArray();
    private final byte[] zzbAB;

    public zzazy(byte[] bArr) {
        this.zzbAB = bArr;
    }

    public boolean equals(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        try {
            return Arrays.equals(this.zzbAB, ((zzazy) obj).getBytes());
        } catch (ClassCastException e) {
            return false;
        }
    }

    public byte[] getBytes() {
        return this.zzbAB;
    }

    public int hashCode() {
        return Arrays.hashCode(this.zzbAB) + 527;
    }

    public zzazy zznr(int i) {
        return new zzazy(Arrays.copyOfRange(this.zzbAB, 0, i));
    }
}
