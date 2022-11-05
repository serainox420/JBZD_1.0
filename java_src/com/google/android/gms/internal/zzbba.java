package com.google.android.gms.internal;

import com.facebook.appevents.AppEventsConstants;
import com.flurry.android.Constants;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzbba {
    public static byte[] zzgR(String str) {
        int length = str.length();
        if (length % 2 != 0) {
            throw new IllegalArgumentException("purported base16 string has odd number of characters");
        }
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            int digit = Character.digit(str.charAt(i), 16);
            int digit2 = Character.digit(str.charAt(i + 1), 16);
            if (digit == -1 || digit2 == -1) {
                throw new IllegalArgumentException("purported base16 string has illegal char");
            }
            bArr[i / 2] = (byte) ((digit << 4) + digit2);
        }
        return bArr;
    }

    public static String zzq(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            if ((b & 240) == 0) {
                sb.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
            }
            sb.append(Integer.toHexString(b & Constants.UNKNOWN));
        }
        return sb.toString().toUpperCase(Locale.ENGLISH);
    }
}
