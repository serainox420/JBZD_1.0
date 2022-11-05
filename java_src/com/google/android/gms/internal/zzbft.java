package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public class zzbft extends zzbcs {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static String decode(String str, String str2) throws UnsupportedEncodingException {
        Charset forName = Charset.forName("UTF-8");
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i < str.length()) {
            char charAt = str.charAt(i);
            if (charAt != '%') {
                sb.append(charAt);
                i++;
            } else {
                byte zzD = zzD(str, i);
                int i2 = i + 3;
                if ((zzD & 128) != 0) {
                    int i3 = 0;
                    while (((zzD << i3) & 128) != 0) {
                        i3++;
                    }
                    if (i3 < 2 || i3 > 4) {
                        throw new UnsupportedEncodingException();
                    }
                    byte[] bArr = new byte[i3];
                    bArr[0] = zzD;
                    int i4 = 1;
                    while (i4 < i3) {
                        byte zzD2 = zzD(str, i2);
                        int i5 = i2 + 3;
                        if ((zzD2 & 192) != 128) {
                            throw new UnsupportedEncodingException();
                        }
                        bArr[i4] = zzD2;
                        i4++;
                        i2 = i5;
                    }
                    CharBuffer decode = forName.decode(ByteBuffer.wrap(bArr));
                    if (decode.length() != 1 || str2.indexOf(decode.charAt(0)) == -1) {
                        sb.append((CharSequence) decode);
                        i = i2;
                    } else {
                        sb.append(str.substring(i, i2));
                        i = i2;
                    }
                } else if (str2.indexOf(zzD) == -1) {
                    sb.append((char) zzD);
                    i = i2;
                } else {
                    sb.append(str.substring(i2 - 3, i2));
                    i = i2;
                }
            }
        }
        return sb.toString();
    }

    private static byte zzD(String str, int i) throws UnsupportedEncodingException {
        if (i + 3 > str.length() || str.charAt(i) != '%') {
            throw new UnsupportedEncodingException();
        }
        String substring = str.substring(i + 1, i + 3);
        if (substring.charAt(0) == '+' || substring.charAt(0) == '-') {
            throw new UnsupportedEncodingException();
        }
        try {
            return (byte) Integer.parseInt(substring, 16);
        } catch (NumberFormatException e) {
            throw new UnsupportedEncodingException();
        }
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        try {
            return new zzbjb(decode(zzbcr.zzd(zzbitVarArr.length > 0 ? (zzbit) com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr[0]) : zzbix.zzbMS), "#;/?:@&=+$,"));
        } catch (UnsupportedEncodingException e) {
            return zzbix.zzbMS;
        }
    }
}
