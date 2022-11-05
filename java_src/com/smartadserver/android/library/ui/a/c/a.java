package com.smartadserver.android.library.ui.a.c;
/* compiled from: SASMatrix.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final float[] f5603a = new float[32];

    public static void a(float[] fArr, int i) {
        for (int i2 = 0; i2 < 16; i2++) {
            fArr[i + i2] = 0.0f;
        }
        for (int i3 = 0; i3 < 16; i3 += 5) {
            fArr[i + i3] = 1.0f;
        }
    }
}
