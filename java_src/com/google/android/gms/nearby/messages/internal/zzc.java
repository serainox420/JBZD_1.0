package com.google.android.gms.nearby.messages.internal;

import java.util.Arrays;
/* loaded from: classes2.dex */
public abstract class zzc {
    private static final char[] zzbAG = "0123456789abcdef".toCharArray();
    private final byte[] zzbAB;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzc(byte[] bArr) {
        this.zzbAB = bArr;
    }

    public static String zzD(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            sb.append(zzbAG[(b >> 4) & 15]).append(zzbAG[b & 15]);
        }
        return sb.toString();
    }

    public static byte[] zzgn(String str) {
        int length = str.length() / 2;
        byte[] bArr = new byte[length];
        for (int i = 0; i < length; i++) {
            bArr[i] = (byte) ((Character.digit(str.charAt(i * 2), 16) << 4) + Character.digit(str.charAt((i * 2) + 1), 16));
        }
        return bArr;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj.getClass().isAssignableFrom(getClass())) {
            return Arrays.equals(this.zzbAB, ((zzc) obj).zzbAB);
        }
        return false;
    }

    public byte[] getBytes() {
        return this.zzbAB;
    }

    public String getHex() {
        return zzD(this.zzbAB);
    }

    public int hashCode() {
        return Arrays.hashCode(this.zzbAB);
    }

    public String toString() {
        return zzD(this.zzbAB);
    }
}
