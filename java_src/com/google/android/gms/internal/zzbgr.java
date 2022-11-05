package com.google.android.gms.internal;

import android.util.Base64;
import com.pubmatic.sdk.common.CommonConstants;
/* loaded from: classes2.dex */
public class zzbgr extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        byte[] decode;
        String encodeToString;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        String zzd = zzbcr.zzd(zzbitVarArr[0]);
        String str = CommonConstants.RESPONSE_TEXT;
        if (zzbitVarArr.length > 1) {
            str = zzbcr.zzd(zzbitVarArr[1]);
        }
        String str2 = "base16";
        if (zzbitVarArr.length > 2) {
            str2 = zzbcr.zzd(zzbitVarArr[2]);
        }
        if (zzbitVarArr.length <= 3 || !zzbcr.zza(zzbitVarArr[3])) {
            z = false;
        }
        int i = z ? 3 : 2;
        try {
            if (CommonConstants.RESPONSE_TEXT.equals(str)) {
                decode = zzd.getBytes();
            } else if ("base16".equals(str)) {
                decode = zzbba.zzgR(zzd);
            } else if ("base64".equals(str)) {
                decode = Base64.decode(zzd, i);
            } else if (!"base64url".equals(str)) {
                String valueOf = String.valueOf(str);
                throw new UnsupportedOperationException(valueOf.length() != 0 ? "Encode: unknown input format: ".concat(valueOf) : new String("Encode: unknown input format: "));
            } else {
                decode = Base64.decode(zzd, i | 8);
            }
            if ("base16".equals(str2)) {
                encodeToString = zzbba.zzq(decode);
            } else if ("base64".equals(str2)) {
                encodeToString = Base64.encodeToString(decode, i);
            } else if (!"base64url".equals(str2)) {
                String valueOf2 = String.valueOf(str2);
                throw new RuntimeException(valueOf2.length() != 0 ? "Encode: unknown output format: ".concat(valueOf2) : new String("Encode: unknown output format: "));
            } else {
                encodeToString = Base64.encodeToString(decode, i | 8);
            }
            return new zzbjb(encodeToString);
        } catch (IllegalArgumentException e) {
            String valueOf3 = String.valueOf(str);
            throw new RuntimeException(valueOf3.length() != 0 ? "Encode: invalid input:".concat(valueOf3) : new String("Encode: invalid input:"));
        }
    }
}
