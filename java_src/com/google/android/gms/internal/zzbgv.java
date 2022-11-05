package com.google.android.gms.internal;

import com.pubmatic.sdk.common.CommonConstants;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2.dex */
public class zzbgv extends zzbcs {
    private byte[] zzf(String str, byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(bArr);
        return messageDigest.digest();
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        byte[] zzgR;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        if (zzbitVarArr[0] == zzbix.zzbMS) {
            return zzbix.zzbMS;
        }
        String zzd = zzbcr.zzd(zzbitVarArr[0]);
        String str = "MD5";
        if (zzbitVarArr.length > 1) {
            str = zzbitVarArr[1] == zzbix.zzbMS ? "MD5" : zzbcr.zzd(zzbitVarArr[1]);
        }
        String str2 = CommonConstants.RESPONSE_TEXT;
        if (zzbitVarArr.length > 2) {
            str2 = zzbitVarArr[2] == zzbix.zzbMS ? CommonConstants.RESPONSE_TEXT : zzbcr.zzd(zzbitVarArr[2]);
        }
        if (CommonConstants.RESPONSE_TEXT.equals(str2)) {
            zzgR = zzd.getBytes();
        } else if (!"base16".equals(str2)) {
            String valueOf = String.valueOf(str2);
            throw new RuntimeException(valueOf.length() != 0 ? "Hash: Unknown input format: ".concat(valueOf) : new String("Hash: Unknown input format: "));
        } else {
            zzgR = zzbba.zzgR(zzd);
        }
        try {
            return new zzbjb(zzbba.zzq(zzf(str, zzgR)));
        } catch (NoSuchAlgorithmException e) {
            String valueOf2 = String.valueOf(str);
            throw new RuntimeException(valueOf2.length() != 0 ? "Hash: Unknown algorithm: ".concat(valueOf2) : new String("Hash: Unknown algorithm: "), e);
        }
    }
}
