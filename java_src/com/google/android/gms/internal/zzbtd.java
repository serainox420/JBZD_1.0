package com.google.android.gms.internal;

import java.util.Random;
/* loaded from: classes2.dex */
public class zzbtd {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final Random zzckF;
    private static long zzckG;
    private static final int[] zzckH;

    static {
        $assertionsDisabled = !zzbtd.class.desiredAssertionStatus();
        zzckF = new Random();
        zzckG = 0L;
        zzckH = new int[12];
    }

    public static synchronized String zzaT(long j) {
        String sb;
        synchronized (zzbtd.class) {
            boolean z = j == zzckG;
            zzckG = j;
            char[] cArr = new char[8];
            StringBuilder sb2 = new StringBuilder(20);
            for (int i = 7; i >= 0; i--) {
                cArr[i] = "-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".charAt((int) (j % 64));
                j /= 64;
            }
            if (!$assertionsDisabled && j != 0) {
                throw new AssertionError();
            }
            sb2.append(cArr);
            if (!z) {
                for (int i2 = 0; i2 < 12; i2++) {
                    zzckH[i2] = zzckF.nextInt(64);
                }
            } else {
                zzabK();
            }
            for (int i3 = 0; i3 < 12; i3++) {
                sb2.append("-0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ_abcdefghijklmnopqrstuvwxyz".charAt(zzckH[i3]));
            }
            if (!$assertionsDisabled && sb2.length() != 20) {
                throw new AssertionError();
            }
            sb = sb2.toString();
        }
        return sb;
    }

    private static void zzabK() {
        for (int i = 11; i >= 0; i--) {
            if (zzckH[i] != 63) {
                zzckH[i] = zzckH[i] + 1;
                return;
            }
            zzckH[i] = 0;
        }
    }
}
