package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public class zzbfv extends zzbcs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String encode(String str, String str2) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder();
        Charset forName = Charset.forName("UTF-8");
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (str2.indexOf(charAt) != -1) {
                sb.append(charAt);
                i++;
            } else {
                int i2 = 1;
                if (Character.isHighSurrogate(charAt)) {
                    if (i + 1 >= str.length()) {
                        throw new UnsupportedEncodingException();
                    }
                    if (!Character.isLowSurrogate(str.charAt(i + 1))) {
                        throw new UnsupportedEncodingException();
                    }
                    i2 = 2;
                }
                byte[] bytes = str.substring(i, i + i2).getBytes(forName);
                for (int i3 = 0; i3 < bytes.length; i3++) {
                    sb.append("%");
                    sb.append(Character.toUpperCase(Character.forDigit((bytes[i3] >> 4) & 15, 16)));
                    sb.append(Character.toUpperCase(Character.forDigit(bytes[i3] & 15, 16)));
                }
                i += i2;
            }
        }
        return sb.toString().replaceAll(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR, "%20");
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        try {
            return new zzbjb(encode(zzbcr.zzd(zzbitVarArr.length > 0 ? (zzbit) com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr[0]) : zzbix.zzbMS), "#;/?:@&=+$,abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ-_.!~*'()0123456789"));
        } catch (UnsupportedEncodingException e) {
            return zzbix.zzbMS;
        }
    }
}
