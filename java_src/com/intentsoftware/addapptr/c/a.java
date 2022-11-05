package com.intentsoftware.addapptr.c;
/* compiled from: IDFAcodec.java */
/* loaded from: classes2.dex */
public class a {
    private static final String coder = "oNy16IVpCkjG8auTxw0e4Bz53*mcbQlD(OsKi~nrZh9vqU2Ag_fLYJEXHFWR7tSP";

    public static String encode_idfa(String str) {
        int i;
        char[] cArr = new char[1024];
        char c = 1;
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3 = i) {
            int i4 = 0;
            int i5 = 0;
            i = i3;
            while (i4 < 6) {
                int i6 = (str.charAt(i) & c) != 0 ? (1 << i4) | i5 : i5;
                if (c == 128) {
                    i++;
                    c = 1;
                } else {
                    c = (char) (c << 1);
                }
                i4++;
                i5 = i6;
            }
            cArr[i2] = coder.charAt(i5);
            i2++;
        }
        cArr[i2] = 0;
        return new String(cArr).split("\u0000")[0];
    }
}
