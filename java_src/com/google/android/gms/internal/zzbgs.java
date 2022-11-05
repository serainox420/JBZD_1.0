package com.google.android.gms.internal;

import java.security.NoSuchAlgorithmException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class zzbgs extends zzbcs {
    private static final Pattern zzbLC = Pattern.compile("(.+)/(.+)/(.+)");

    private static String zza(Cipher cipher, String str, SecretKeySpec secretKeySpec, IvParameterSpec ivParameterSpec) {
        if (str == null || str.length() == 0) {
            throw new RuntimeException("Encrypt: empty input string");
        }
        try {
            cipher.init(1, secretKeySpec, ivParameterSpec);
            return zzbba.zzq(cipher.doFinal(str.getBytes()));
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            throw new RuntimeException(valueOf.length() != 0 ? "Encrypt: ".concat(valueOf) : new String("Encrypt: "));
        }
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 3);
        String zzd = zzbcr.zzd(zzbitVarArr[0]);
        String zzd2 = zzbcr.zzd(zzbitVarArr[1]);
        String zzd3 = zzbcr.zzd(zzbitVarArr[2]);
        String zzd4 = zzbitVarArr.length < 4 ? "AES/CBC/NoPadding" : zzbcr.zzd(zzbitVarArr[3]);
        Matcher matcher = zzbLC.matcher(zzd4);
        if (!matcher.matches()) {
            String valueOf = String.valueOf(zzd4);
            throw new RuntimeException(valueOf.length() != 0 ? "Encrypt: invalid transformation:".concat(valueOf) : new String("Encrypt: invalid transformation:"));
        }
        try {
            return new zzbjb(zza(Cipher.getInstance(zzd4), zzd, new SecretKeySpec(zzd2.getBytes(), matcher.group(1)), new IvParameterSpec(zzd3.getBytes())));
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
            String valueOf2 = String.valueOf(zzd4);
            throw new RuntimeException(valueOf2.length() != 0 ? "Encrypt: invalid transformation:".concat(valueOf2) : new String("Encrypt: invalid transformation:"));
        }
    }
}
