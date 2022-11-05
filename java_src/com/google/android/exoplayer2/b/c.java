package com.google.android.exoplayer2.b;

import android.graphics.Point;
import android.text.TextUtils;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b.f;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import com.google.android.exoplayer2.util.v;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: DefaultTrackSelector.java */
/* loaded from: classes2.dex */
public class c extends e {

    /* renamed from: a  reason: collision with root package name */
    private static final int[] f3173a = new int[0];
    private final f.a b;
    private final AtomicReference<a> c;

    /* compiled from: DefaultTrackSelector.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final String f3174a;
        public final String b;
        public final boolean c;
        public final boolean d;
        public final int e;
        public final int f;
        public final int g;
        public final boolean h;
        public final boolean i;
        public final int j;
        public final int k;
        public final boolean l;

        public a() {
            this(null, null, false, true, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE, true, true, Integer.MAX_VALUE, Integer.MAX_VALUE, true);
        }

        public a(String str, String str2, boolean z, boolean z2, int i, int i2, int i3, boolean z3, boolean z4, int i4, int i5, boolean z5) {
            this.f3174a = str;
            this.b = str2;
            this.c = z;
            this.d = z2;
            this.e = i;
            this.f = i2;
            this.g = i3;
            this.h = z3;
            this.i = z4;
            this.j = i4;
            this.k = i5;
            this.l = z5;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.c == aVar.c && this.d == aVar.d && this.e == aVar.e && this.f == aVar.f && this.h == aVar.h && this.i == aVar.i && this.l == aVar.l && this.j == aVar.j && this.k == aVar.k && this.g == aVar.g && TextUtils.equals(this.f3174a, aVar.f3174a) && TextUtils.equals(this.b, aVar.b);
        }

        public int hashCode() {
            int i = 1;
            int hashCode = ((this.i ? 1 : 0) + (((this.h ? 1 : 0) + (((((((((this.d ? 1 : 0) + (((this.c ? 1 : 0) + (((this.f3174a.hashCode() * 31) + this.b.hashCode()) * 31)) * 31)) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31)) * 31)) * 31;
            if (!this.l) {
                i = 0;
            }
            return ((((hashCode + i) * 31) + this.j) * 31) + this.k;
        }
    }

    public c() {
        this(null);
    }

    public c(f.a aVar) {
        this.b = aVar;
        this.c = new AtomicReference<>(new a());
    }

    @Override // com.google.android.exoplayer2.b.e
    protected f[] a(k[] kVarArr, m[] mVarArr, int[][][] iArr) throws ExoPlaybackException {
        int length = kVarArr.length;
        f[] fVarArr = new f[length];
        a aVar = this.c.get();
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= length) {
                break;
            }
            if (2 == kVarArr[i2].a()) {
                fVarArr[i2] = a(kVarArr[i2], mVarArr[i2], iArr[i2], aVar.e, aVar.f, aVar.g, aVar.d, aVar.c, aVar.j, aVar.k, aVar.l, this.b, aVar.h, aVar.i);
            }
            i = i2 + 1;
        }
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < length) {
                switch (kVarArr[i4].a()) {
                    case 1:
                        fVarArr[i4] = a(mVarArr[i4], iArr[i4], aVar.f3174a, aVar.i);
                        break;
                    case 2:
                        break;
                    case 3:
                        fVarArr[i4] = a(mVarArr[i4], iArr[i4], aVar.b, aVar.f3174a, aVar.i);
                        break;
                    default:
                        fVarArr[i4] = a(kVarArr[i4].a(), mVarArr[i4], iArr[i4], aVar.i);
                        break;
                }
                i3 = i4 + 1;
            } else {
                return fVarArr;
            }
        }
    }

    protected f a(k kVar, m mVar, int[][] iArr, int i, int i2, int i3, boolean z, boolean z2, int i4, int i5, boolean z3, f.a aVar, boolean z4, boolean z5) throws ExoPlaybackException {
        f fVar = null;
        if (aVar != null) {
            fVar = a(kVar, mVar, iArr, i, i2, i3, z, z2, i4, i5, z3, aVar);
        }
        if (fVar == null) {
            return a(mVar, iArr, i, i2, i3, i4, i5, z3, z4, z5);
        }
        return fVar;
    }

    private static f a(k kVar, m mVar, int[][] iArr, int i, int i2, int i3, boolean z, boolean z2, int i4, int i5, boolean z3, f.a aVar) throws ExoPlaybackException {
        int i6 = z ? 12 : 8;
        boolean z4 = z2 && (kVar.m() & i6) != 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i8 < mVar.b) {
                l a2 = mVar.a(i8);
                int[] a3 = a(a2, iArr[i8], z4, i6, i, i2, i3, i4, i5, z3);
                if (a3.length <= 0) {
                    i7 = i8 + 1;
                } else {
                    return aVar.b(a2, a3);
                }
            } else {
                return null;
            }
        }
    }

    private static int[] a(l lVar, int[] iArr, boolean z, int i, int i2, int i3, int i4, int i5, int i6, boolean z2) {
        String str;
        int i7;
        if (lVar.f3407a < 2) {
            return f3173a;
        }
        List<Integer> a2 = a(lVar, i5, i6, z2);
        if (a2.size() < 2) {
            return f3173a;
        }
        String str2 = null;
        if (z) {
            str = null;
        } else {
            HashSet hashSet = new HashSet();
            int i8 = 0;
            int i9 = 0;
            while (i9 < a2.size()) {
                String str3 = lVar.a(a2.get(i9).intValue()).f;
                if (!hashSet.add(str3) || (i7 = a(lVar, iArr, i, str3, i2, i3, i4, a2)) <= i8) {
                    i7 = i8;
                    str3 = str2;
                }
                i9++;
                i8 = i7;
                str2 = str3;
            }
            str = str2;
        }
        b(lVar, iArr, i, str, i2, i3, i4, a2);
        return a2.size() < 2 ? f3173a : v.a(a2);
    }

    private static int a(l lVar, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            int i8 = i5;
            if (i7 < list.size()) {
                int intValue = list.get(i7).intValue();
                i5 = a(lVar.a(intValue), str, iArr[intValue], i, i2, i3, i4) ? i8 + 1 : i8;
                i6 = i7 + 1;
            } else {
                return i8;
            }
        }
    }

    private static void b(l lVar, int[] iArr, int i, String str, int i2, int i3, int i4, List<Integer> list) {
        for (int size = list.size() - 1; size >= 0; size--) {
            int intValue = list.get(size).intValue();
            if (!a(lVar.a(intValue), str, iArr[intValue], i, i2, i3, i4)) {
                list.remove(size);
            }
        }
    }

    private static boolean a(Format format, String str, int i, int i2, int i3, int i4, int i5) {
        if (!a(i, false) || (i & i2) == 0) {
            return false;
        }
        if (str != null && !v.a(format.f, str)) {
            return false;
        }
        if (format.j != -1 && format.j > i3) {
            return false;
        }
        if (format.k != -1 && format.k > i4) {
            return false;
        }
        return format.b == -1 || format.b <= i5;
    }

    private static f a(m mVar, int[][] iArr, int i, int i2, int i3, int i4, int i5, boolean z, boolean z2, boolean z3) {
        int i6;
        l lVar;
        int a2;
        l lVar2 = null;
        int i7 = 0;
        int i8 = -1;
        int i9 = -1;
        int i10 = 0;
        for (int i11 = 0; i11 < mVar.b; i11++) {
            l a3 = mVar.a(i11);
            List<Integer> a4 = a(a3, i4, i5, z);
            int[] iArr2 = iArr[i11];
            int i12 = 0;
            while (i12 < a3.f3407a) {
                if (a(iArr2[i12], z3)) {
                    Format a5 = a3.a(i12);
                    boolean z4 = a4.contains(Integer.valueOf(i12)) && (a5.j == -1 || a5.j <= i) && ((a5.k == -1 || a5.k <= i2) && (a5.b == -1 || a5.b <= i3));
                    if (z4 || z2) {
                        int i13 = z4 ? 2 : 1;
                        if (a(iArr2[i12], false)) {
                            i13 += 1000;
                        }
                        boolean z5 = i13 > i10;
                        if (i13 == i10) {
                            if (a5.a() != i8) {
                                a2 = a(a5.a(), i8);
                            } else {
                                a2 = a(a5.b, i9);
                            }
                            if (z4) {
                                z5 = a2 > 0;
                            } else {
                                z5 = a2 < 0;
                            }
                        }
                        if (z5) {
                            i9 = a5.b;
                            i8 = a5.a();
                            i10 = i13;
                            lVar = a3;
                            i6 = i12;
                        }
                    } else {
                        i6 = i7;
                        lVar = lVar2;
                    }
                    i12++;
                    lVar2 = lVar;
                    i7 = i6;
                }
                i6 = i7;
                lVar = lVar2;
                i12++;
                lVar2 = lVar;
                i7 = i6;
            }
        }
        if (lVar2 == null) {
            return null;
        }
        return new d(lVar2, i7);
    }

    private static int a(int i, int i2) {
        if (i == -1) {
            return i2 == -1 ? 0 : -1;
        } else if (i2 != -1) {
            return i - i2;
        } else {
            return 1;
        }
    }

    protected f a(m mVar, int[][] iArr, String str, boolean z) {
        int i;
        int i2;
        l lVar;
        l lVar2 = null;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i6 >= mVar.b) {
                break;
            }
            l a2 = mVar.a(i6);
            int[] iArr2 = iArr[i6];
            int i7 = 0;
            while (i7 < a2.f3407a) {
                if (a(iArr2[i7], z)) {
                    Format a3 = a2.a(i7);
                    boolean z2 = (a3.w & 1) != 0;
                    if (a(a3, str)) {
                        if (z2) {
                            i = 4;
                        } else {
                            i = 3;
                        }
                    } else if (z2) {
                        i = 2;
                    } else {
                        i = 1;
                    }
                    if (a(iArr2[i7], false)) {
                        i += 1000;
                    }
                    if (i > i4) {
                        i2 = i7;
                        lVar = a2;
                        i7++;
                        lVar2 = lVar;
                        i3 = i2;
                        i4 = i;
                    }
                }
                i = i4;
                i2 = i3;
                lVar = lVar2;
                i7++;
                lVar2 = lVar;
                i3 = i2;
                i4 = i;
            }
            i5 = i6 + 1;
        }
        if (lVar2 == null) {
            return null;
        }
        return new d(lVar2, i3);
    }

    protected f a(m mVar, int[][] iArr, String str, String str2, boolean z) {
        int i;
        l lVar;
        int i2;
        l lVar2 = null;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < mVar.b; i5++) {
            l a2 = mVar.a(i5);
            int[] iArr2 = iArr[i5];
            int i6 = 0;
            while (i6 < a2.f3407a) {
                if (a(iArr2[i6], z)) {
                    Format a3 = a2.a(i6);
                    boolean z2 = (a3.w & 1) != 0;
                    boolean z3 = (a3.w & 2) != 0;
                    if (a(a3, str)) {
                        if (z2) {
                            i2 = 6;
                        } else if (!z3) {
                            i2 = 5;
                        } else {
                            i2 = 4;
                        }
                    } else if (z2) {
                        i2 = 3;
                    } else if (z3) {
                        if (a(a3, str2)) {
                            i2 = 2;
                        } else {
                            i2 = 1;
                        }
                    }
                    if (a(iArr2[i6], false)) {
                        i2 += 1000;
                    }
                    if (i2 > i4) {
                        i4 = i2;
                        lVar = a2;
                        i = i6;
                        i6++;
                        lVar2 = lVar;
                        i3 = i;
                    }
                }
                i = i3;
                lVar = lVar2;
                i6++;
                lVar2 = lVar;
                i3 = i;
            }
        }
        if (lVar2 == null) {
            return null;
        }
        return new d(lVar2, i3);
    }

    protected f a(int i, m mVar, int[][] iArr, boolean z) {
        int i2;
        int i3;
        l lVar;
        l lVar2 = null;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = i6;
            if (i7 >= mVar.b) {
                break;
            }
            l a2 = mVar.a(i7);
            int[] iArr2 = iArr[i7];
            int i8 = 0;
            while (i8 < a2.f3407a) {
                if (a(iArr2[i8], z)) {
                    i2 = (a2.a(i8).w & 1) != 0 ? 2 : 1;
                    if (a(iArr2[i8], false)) {
                        i2 += 1000;
                    }
                    if (i2 > i5) {
                        i3 = i8;
                        lVar = a2;
                        i8++;
                        lVar2 = lVar;
                        i4 = i3;
                        i5 = i2;
                    }
                }
                i2 = i5;
                i3 = i4;
                lVar = lVar2;
                i8++;
                lVar2 = lVar;
                i4 = i3;
                i5 = i2;
            }
            i6 = i7 + 1;
        }
        if (lVar2 == null) {
            return null;
        }
        return new d(lVar2, i4);
    }

    protected static boolean a(int i, boolean z) {
        int i2 = i & 3;
        return i2 == 3 || (z && i2 == 2);
    }

    protected static boolean a(Format format, String str) {
        return str != null && str.equals(v.b(format.x));
    }

    private static List<Integer> a(l lVar, int i, int i2, boolean z) {
        int i3;
        int i4 = 0;
        ArrayList arrayList = new ArrayList(lVar.f3407a);
        for (int i5 = 0; i5 < lVar.f3407a; i5++) {
            arrayList.add(Integer.valueOf(i5));
        }
        if (i == Integer.MAX_VALUE || i2 == Integer.MAX_VALUE) {
            return arrayList;
        }
        int i6 = Integer.MAX_VALUE;
        while (i4 < lVar.f3407a) {
            Format a2 = lVar.a(i4);
            if (a2.j > 0 && a2.k > 0) {
                Point a3 = a(z, i, i2, a2.j, a2.k);
                i3 = a2.j * a2.k;
                if (a2.j >= ((int) (a3.x * 0.98f)) && a2.k >= ((int) (a3.y * 0.98f)) && i3 < i6) {
                    i4++;
                    i6 = i3;
                }
            }
            i3 = i6;
            i4++;
            i6 = i3;
        }
        if (i6 != Integer.MAX_VALUE) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                int a4 = lVar.a(((Integer) arrayList.get(size)).intValue()).a();
                if (a4 == -1 || a4 > i6) {
                    arrayList.remove(size);
                }
            }
        }
        return arrayList;
    }

    private static Point a(boolean z, int i, int i2, int i3, int i4) {
        boolean z2 = true;
        if (z) {
            boolean z3 = i3 > i4;
            if (i <= i2) {
                z2 = false;
            }
            if (z3 != z2) {
                i = i2;
                i2 = i;
            }
        }
        if (i3 * i2 >= i4 * i) {
            return new Point(i, v.a(i * i4, i3));
        }
        return new Point(v.a(i2 * i3, i4), i2);
    }
}
