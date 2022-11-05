package com.google.android.gms.nearby.messages.internal;

import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzg extends zzc {
    public zzg(String str) {
        this(zzgn(str));
    }

    public zzg(String str, String str2) {
        this(zzgn(str), zzgn(str2));
    }

    public zzg(byte[] bArr) {
        super(zzC(bArr));
    }

    public zzg(byte[] bArr, byte[] bArr2) {
        this(com.google.android.gms.common.util.zzb.zza(zzE(bArr), zzF(bArr2)));
    }

    private static byte[] zzC(byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzb(bArr.length == 10 || bArr.length == 16, "Bytes must be a namespace (10 bytes), or a namespace plus instance (16 bytes).");
        return bArr;
    }

    private static byte[] zzE(byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzb(bArr.length == 10, new StringBuilder(62).append("Namespace length(").append(bArr.length).append(" bytes) must be ").append(10).append(" bytes.").toString());
        return bArr;
    }

    private static byte[] zzF(byte[] bArr) {
        com.google.android.gms.common.internal.zzac.zzb(bArr.length == 6, new StringBuilder(61).append("Instance length(").append(bArr.length).append(" bytes) must be ").append(6).append(" bytes.").toString());
        return bArr;
    }

    public String getInstance() {
        byte[] bytes = getBytes();
        if (bytes.length < 16) {
            return null;
        }
        return zzc.zzD(Arrays.copyOfRange(bytes, 10, 16));
    }

    public String getNamespace() {
        return zzc.zzD(Arrays.copyOfRange(getBytes(), 0, 10));
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzc
    public String toString() {
        String valueOf = String.valueOf(getHex());
        return new StringBuilder(String.valueOf(valueOf).length() + 26).append("EddystoneUidPrefix{bytes=").append(valueOf).append("}").toString();
    }
}
