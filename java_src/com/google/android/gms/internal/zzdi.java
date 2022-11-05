package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
import java.lang.Character;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
@zzme
/* loaded from: classes.dex */
public class zzdi {
    public static int zzH(String str) {
        byte[] bytes;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            bytes = str.getBytes();
        }
        return com.google.android.gms.common.util.zzs.zza(bytes, 0, bytes.length, 0);
    }

    public static String[] zzI(String str) {
        return zzd(str, false);
    }

    private static boolean zza(Character.UnicodeBlock unicodeBlock) {
        return unicodeBlock == Character.UnicodeBlock.BOPOMOFO || unicodeBlock == Character.UnicodeBlock.BOPOMOFO_EXTENDED || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS_SUPPLEMENT || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A || unicodeBlock == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B || unicodeBlock == Character.UnicodeBlock.ENCLOSED_CJK_LETTERS_AND_MONTHS || unicodeBlock == Character.UnicodeBlock.HANGUL_JAMO || unicodeBlock == Character.UnicodeBlock.HANGUL_SYLLABLES || unicodeBlock == Character.UnicodeBlock.HIRAGANA || unicodeBlock == Character.UnicodeBlock.KATAKANA || unicodeBlock == Character.UnicodeBlock.KATAKANA_PHONETIC_EXTENSIONS;
    }

    public static String[] zzd(String str, boolean z) {
        int i;
        boolean z2;
        if (str == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        char[] charArray = str.toCharArray();
        int length = str.length();
        boolean z3 = false;
        int i2 = 0;
        int i3 = 0;
        while (i3 < length) {
            int codePointAt = Character.codePointAt(charArray, i3);
            int charCount = Character.charCount(codePointAt);
            if (zzo(codePointAt)) {
                if (z3) {
                    arrayList.add(new String(charArray, i2, i3 - i2));
                }
                arrayList.add(new String(charArray, i3, charCount));
                i = i2;
                z2 = false;
            } else if (Character.isLetterOrDigit(codePointAt) || Character.getType(codePointAt) == 6 || Character.getType(codePointAt) == 8) {
                if (!z3) {
                    i2 = i3;
                }
                i = i2;
                z2 = true;
            } else if (z && Character.charCount(codePointAt) == 1 && Character.toChars(codePointAt)[0] == '\'') {
                if (!z3) {
                    i2 = i3;
                }
                i = i2;
                z2 = true;
            } else if (z3) {
                arrayList.add(new String(charArray, i2, i3 - i2));
                i = i2;
                z2 = false;
            } else {
                boolean z4 = z3;
                i = i2;
                z2 = z4;
            }
            i3 += charCount;
            boolean z5 = z2;
            i2 = i;
            z3 = z5;
        }
        if (z3) {
            arrayList.add(new String(charArray, i2, i3 - i2));
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    static boolean zzo(int i) {
        return Character.isLetter(i) && (zza(Character.UnicodeBlock.of(i)) || zzq(i));
    }

    public static byte[] zzp(int i) {
        ByteBuffer allocate = ByteBuffer.allocate(4);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putInt(i);
        return allocate.array();
    }

    private static boolean zzq(int i) {
        return (i >= 65382 && i <= 65437) || (i >= 65441 && i <= 65500);
    }
}
