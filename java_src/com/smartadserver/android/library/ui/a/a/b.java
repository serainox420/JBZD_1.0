package com.smartadserver.android.library.ui.a.a;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;
/* compiled from: SASGLSphere.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private FloatBuffer f5591a;
    private ShortBuffer[] b;
    private int[] c;
    private int d;

    public b(int i, float f, float f2, float f3, float f4, int i2) {
        int i3 = i + 1;
        int i4 = i3 * i3;
        if (i4 > 32767) {
            throw new RuntimeException("nSlices " + i + " too big for vertex");
        }
        this.d = i * i * 6;
        float f5 = 3.1415927f / i;
        float f6 = 6.2831855f / i;
        this.f5591a = ByteBuffer.allocateDirect(i4 * 5 * 4).order(ByteOrder.nativeOrder()).asFloatBuffer();
        this.b = new ShortBuffer[i2];
        this.c = new int[i2];
        int i5 = ((this.d / i2) / 6) * 6;
        for (int i6 = 0; i6 < i2 - 1; i6++) {
            this.c[i6] = i5;
        }
        this.c[i2 - 1] = this.d - (i5 * (i2 - 1));
        for (int i7 = 0; i7 < i2; i7++) {
            this.b[i7] = ByteBuffer.allocateDirect(this.c[i7] * 2).order(ByteOrder.nativeOrder()).asShortBuffer();
        }
        float[] fArr = new float[i3 * 5];
        for (int i8 = 0; i8 < i3; i8++) {
            for (int i9 = 0; i9 < i3; i9++) {
                int i10 = i9 * 5;
                float sin = (float) Math.sin(i8 * f5);
                float cos = (float) Math.cos(i8 * f5);
                fArr[i10 + 0] = (((float) Math.sin(i9 * f6)) * f4 * sin) + f;
                fArr[i10 + 1] = (sin * f4 * ((float) Math.cos(i9 * f6))) + f2;
                fArr[i10 + 2] = (f4 * cos) + f3;
                fArr[i10 + 3] = i9 / i;
                fArr[i10 + 4] = (1.0f - i8) / i;
            }
            this.f5591a.put(fArr, 0, fArr.length);
        }
        short[] sArr = new short[a(this.c)];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i13 < i) {
            int i14 = i12;
            int i15 = i11;
            int i16 = 0;
            while (i16 < i) {
                int i17 = i13 + 1;
                int i18 = i16 + 1;
                if (i15 >= this.c[i14]) {
                    this.b[i14].put(sArr, 0, this.c[i14]);
                    i15 = 0;
                    i14++;
                }
                int i19 = i15 + 1;
                sArr[i15] = (short) ((i13 * i3) + i16);
                int i20 = i19 + 1;
                sArr[i19] = (short) ((i17 * i3) + i16);
                int i21 = i20 + 1;
                sArr[i20] = (short) ((i17 * i3) + i18);
                int i22 = i21 + 1;
                sArr[i21] = (short) ((i13 * i3) + i16);
                int i23 = i22 + 1;
                sArr[i22] = (short) ((i17 * i3) + i18);
                sArr[i23] = (short) ((i13 * i3) + i18);
                i16++;
                i15 = i23 + 1;
            }
            i13++;
            i11 = i15;
            i12 = i14;
        }
        this.b[i12].put(sArr, 0, this.c[i12]);
        this.f5591a.position(0);
        for (int i24 = 0; i24 < i2; i24++) {
            this.b[i24].position(0);
        }
    }

    public FloatBuffer a() {
        return this.f5591a;
    }

    public int b() {
        return 20;
    }

    public ShortBuffer[] c() {
        return this.b;
    }

    public int[] d() {
        return this.c;
    }

    private int a(int[] iArr) {
        int i = iArr[0];
        for (int i2 = 1; i2 < iArr.length; i2++) {
            if (iArr[i2] > i) {
                i = iArr[i2];
            }
        }
        return i;
    }
}
