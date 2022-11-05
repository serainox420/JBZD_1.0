package com.apprupt.sdk;

import android.content.Context;
/* loaded from: classes.dex */
class CvFeaturesList {

    /* renamed from: a  reason: collision with root package name */
    static final int[] f1810a = {63, 8, 0};

    CvFeaturesList() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Context context) {
        return a(new int[0], new int[0], context);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(int[] iArr, int[] iArr2, Context context) {
        int[] iArr3 = new int[f1810a.length];
        int i = 0;
        while (i < f1810a.length) {
            iArr3[i] = (iArr2 == null || i >= iArr2.length) ? 0 : iArr2[i];
            i++;
        }
        if (context != null && context.getApplicationContext().checkCallingOrSelfPermission("android.permission.WRITE_CALENDAR") == -1) {
            iArr3[0] = iArr3[0] | 32;
        }
        return a(iArr, iArr3);
    }

    static String a(int[] iArr, int[] iArr2) {
        int[] iArr3 = new int[f1810a.length];
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < f1810a.length; i++) {
            iArr3[i] = f1810a[i];
            if (iArr != null && i < iArr.length) {
                iArr3[i] = iArr3[i] | iArr[i];
            }
            if (iArr2 != null && i < iArr2.length) {
                iArr3[i] = iArr3[i] & (iArr2[i] ^ (-1));
            }
            sb.append(String.format("%02x", Integer.valueOf(iArr3[i])));
        }
        return sb.toString();
    }
}
