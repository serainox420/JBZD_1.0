package com.mopub.nativeads;

import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.util.List;
/* compiled from: PlacementData.java */
/* loaded from: classes3.dex */
class f {
    public static final int NOT_FOUND = -1;
    private int c;

    /* renamed from: a  reason: collision with root package name */
    private final int[] f4631a = new int[200];
    private final int[] b = new int[200];
    private final int[] d = new int[200];
    private final int[] e = new int[200];
    private final NativeAd[] f = new NativeAd[200];
    private int g = 0;

    private f(int[] iArr) {
        this.c = 0;
        this.c = Math.min(iArr.length, 200);
        System.arraycopy(iArr, 0, this.b, 0, this.c);
        System.arraycopy(iArr, 0, this.f4631a, 0, this.c);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a(MoPubNativeAdPositioning.MoPubClientPositioning moPubClientPositioning) {
        int i = 0;
        List<Integer> a2 = moPubClientPositioning.a();
        int b = moPubClientPositioning.b();
        int size = b == Integer.MAX_VALUE ? a2.size() : 200;
        int[] iArr = new int[size];
        int i2 = 0;
        for (Integer num : a2) {
            i2 = num.intValue() - i;
            iArr[i] = i2;
            i++;
        }
        while (i < size) {
            i2 = (i2 + b) - 1;
            iArr[i] = i2;
            i++;
        }
        return new f(iArr);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f a() {
        return new f(new int[0]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(int i) {
        return a(this.b, 0, this.c, i) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int b(int i) {
        int b = b(this.b, this.c, i);
        if (b == this.c) {
            return -1;
        }
        return this.b[b];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(int i, NativeAd nativeAd) {
        int a2 = a(this.b, this.c, i);
        if (a2 == this.c || this.b[a2] != i) {
            MoPubLog.w("Attempted to insert an ad at an invalid position");
            return;
        }
        int i2 = this.f4631a[a2];
        int b = b(this.d, this.g, i2);
        if (b < this.g) {
            int i3 = this.g - b;
            System.arraycopy(this.d, b, this.d, b + 1, i3);
            System.arraycopy(this.e, b, this.e, b + 1, i3);
            System.arraycopy(this.f, b, this.f, b + 1, i3);
        }
        this.d[b] = i2;
        this.e[b] = i;
        this.f[b] = nativeAd;
        this.g++;
        int i4 = (this.c - a2) - 1;
        System.arraycopy(this.b, a2 + 1, this.b, a2, i4);
        System.arraycopy(this.f4631a, a2 + 1, this.f4631a, a2, i4);
        this.c--;
        while (a2 < this.c) {
            int[] iArr = this.b;
            iArr[a2] = iArr[a2] + 1;
            a2++;
        }
        for (int i5 = b + 1; i5 < this.g; i5++) {
            int[] iArr2 = this.e;
            iArr2[i5] = iArr2[i5] + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean c(int i) {
        return a(this.e, 0, this.g, i) >= 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAd d(int i) {
        int a2 = a(this.e, 0, this.g, i);
        if (a2 < 0) {
            return null;
        }
        return this.f[a2];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] b() {
        int[] iArr = new int[this.g];
        System.arraycopy(this.e, 0, iArr, 0, this.g);
        return iArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int e(int i) {
        int a2 = a(this.e, 0, this.g, i);
        if (a2 < 0) {
            return i - (a2 ^ (-1));
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int f(int i) {
        return b(this.d, this.g, i) + i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int g(int i) {
        if (i == 0) {
            return 0;
        }
        int e = e(i - 1);
        if (e == -1) {
            return -1;
        }
        return e + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int h(int i) {
        if (i == 0) {
            return 0;
        }
        return f(i - 1) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(int i, int i2) {
        int[] iArr = new int[this.g];
        int[] iArr2 = new int[this.g];
        int i3 = 0;
        for (int i4 = 0; i4 < this.g; i4++) {
            int i5 = this.d[i4];
            int i6 = this.e[i4];
            if (i <= i6 && i6 < i2) {
                iArr[i3] = i5;
                iArr2[i3] = i6 - i3;
                this.f[i4].destroy();
                this.f[i4] = null;
                i3++;
            } else if (i3 > 0) {
                int i7 = i4 - i3;
                this.d[i7] = i5;
                this.e[i7] = i6 - i3;
                this.f[i7] = this.f[i4];
            }
        }
        if (i3 == 0) {
            return 0;
        }
        int a2 = a(this.b, this.c, iArr2[0]);
        for (int i8 = this.c - 1; i8 >= a2; i8--) {
            this.f4631a[i8 + i3] = this.f4631a[i8];
            this.b[i8 + i3] = this.b[i8] - i3;
        }
        for (int i9 = 0; i9 < i3; i9++) {
            this.f4631a[a2 + i9] = iArr[i9];
            this.b[a2 + i9] = iArr2[i9];
        }
        this.c += i3;
        this.g -= i3;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c() {
        if (this.g != 0) {
            a(0, this.e[this.g - 1] + 1);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void i(int i) {
        for (int a2 = a(this.f4631a, this.c, i); a2 < this.c; a2++) {
            int[] iArr = this.f4631a;
            iArr[a2] = iArr[a2] + 1;
            int[] iArr2 = this.b;
            iArr2[a2] = iArr2[a2] + 1;
        }
        for (int a3 = a(this.d, this.g, i); a3 < this.g; a3++) {
            int[] iArr3 = this.d;
            iArr3[a3] = iArr3[a3] + 1;
            int[] iArr4 = this.e;
            iArr4[a3] = iArr4[a3] + 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void j(int i) {
        for (int b = b(this.f4631a, this.c, i); b < this.c; b++) {
            int[] iArr = this.f4631a;
            iArr[b] = iArr[b] - 1;
            int[] iArr2 = this.b;
            iArr2[b] = iArr2[b] - 1;
        }
        for (int b2 = b(this.d, this.g, i); b2 < this.g; b2++) {
            int[] iArr3 = this.d;
            iArr3[b2] = iArr3[b2] - 1;
            int[] iArr4 = this.e;
            iArr4[b2] = iArr4[b2] - 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(int i, int i2) {
        j(i);
        i(i2);
    }

    private static int a(int[] iArr, int i, int i2) {
        int a2 = a(iArr, 0, i, i2);
        if (a2 < 0) {
            return a2 ^ (-1);
        }
        int i3 = iArr[a2];
        while (a2 >= 0 && iArr[a2] == i3) {
            a2--;
        }
        return a2 + 1;
    }

    private static int b(int[] iArr, int i, int i2) {
        int a2 = a(iArr, 0, i, i2);
        if (a2 < 0) {
            return a2 ^ (-1);
        }
        int i3 = iArr[a2];
        while (a2 < i && iArr[a2] == i3) {
            a2++;
        }
        return a2;
    }

    private static int a(int[] iArr, int i, int i2, int i3) {
        int i4 = i2 - 1;
        int i5 = i;
        while (i5 <= i4) {
            int i6 = (i5 + i4) >>> 1;
            int i7 = iArr[i6];
            if (i7 < i3) {
                i5 = i6 + 1;
            } else if (i7 <= i3) {
                return i6;
            } else {
                i4 = i6 - 1;
            }
        }
        return i5 ^ (-1);
    }
}
