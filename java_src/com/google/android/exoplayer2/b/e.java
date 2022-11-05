package com.google.android.exoplayer2.b;

import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.ExoPlaybackException;
import com.google.android.exoplayer2.b.f;
import com.google.android.exoplayer2.k;
import com.google.android.exoplayer2.source.l;
import com.google.android.exoplayer2.source.m;
import java.util.Arrays;
import java.util.Map;
/* compiled from: MappingTrackSelector.java */
/* loaded from: classes2.dex */
public abstract class e extends h {

    /* renamed from: a  reason: collision with root package name */
    private final SparseArray<Map<m, b>> f3175a = new SparseArray<>();
    private final SparseBooleanArray b = new SparseBooleanArray();
    private int c = 0;
    private a d;

    protected abstract f[] a(k[] kVarArr, m[] mVarArr, int[][][] iArr) throws ExoPlaybackException;

    /* compiled from: MappingTrackSelector.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final f.a f3177a;
        public final int b;
        public final int[] c;

        public f a(m mVar) {
            return this.f3177a.b(mVar.a(this.b), this.c);
        }
    }

    @Override // com.google.android.exoplayer2.b.h
    public final i a(k[] kVarArr, m mVar) throws ExoPlaybackException {
        int[] iArr = new int[kVarArr.length + 1];
        l[][] lVarArr = new l[kVarArr.length + 1];
        int[][][] iArr2 = new int[kVarArr.length + 1][];
        for (int i = 0; i < lVarArr.length; i++) {
            lVarArr[i] = new l[mVar.b];
            iArr2[i] = new int[mVar.b];
        }
        int[] a2 = a(kVarArr);
        for (int i2 = 0; i2 < mVar.b; i2++) {
            l a3 = mVar.a(i2);
            int a4 = a(kVarArr, a3);
            int[] a5 = a4 == kVarArr.length ? new int[a3.f3407a] : a(kVarArr[a4], a3);
            int i3 = iArr[a4];
            lVarArr[a4][i3] = a3;
            iArr2[a4][i3] = a5;
            iArr[a4] = iArr[a4] + 1;
        }
        m[] mVarArr = new m[kVarArr.length];
        int[] iArr3 = new int[kVarArr.length];
        for (int i4 = 0; i4 < kVarArr.length; i4++) {
            int i5 = iArr[i4];
            mVarArr[i4] = new m((l[]) Arrays.copyOf(lVarArr[i4], i5));
            iArr2[i4] = (int[][]) Arrays.copyOf(iArr2[i4], i5);
            iArr3[i4] = kVarArr[i4].a();
        }
        m mVar2 = new m((l[]) Arrays.copyOf(lVarArr[kVarArr.length], iArr[kVarArr.length]));
        f[] a6 = a(kVarArr, mVarArr, iArr2);
        for (int i6 = 0; i6 < kVarArr.length; i6++) {
            if (this.b.get(i6)) {
                a6[i6] = null;
            } else {
                m mVar3 = mVarArr[i6];
                Map<m, b> map = this.f3175a.get(i6);
                b bVar = map == null ? null : map.get(mVar3);
                if (bVar != null) {
                    a6[i6] = bVar.a(mVar3);
                }
            }
        }
        a aVar = new a(iArr3, mVarArr, a2, iArr2, mVar2);
        com.google.android.exoplayer2.l[] lVarArr2 = new com.google.android.exoplayer2.l[kVarArr.length];
        for (int i7 = 0; i7 < kVarArr.length; i7++) {
            lVarArr2[i7] = a6[i7] != null ? com.google.android.exoplayer2.l.f3300a : null;
        }
        a(kVarArr, mVarArr, iArr2, lVarArr2, a6, this.c);
        return new i(mVar, new g(a6), aVar, lVarArr2);
    }

    @Override // com.google.android.exoplayer2.b.h
    public final void a(Object obj) {
        this.d = (a) obj;
    }

    private static int a(k[] kVarArr, l lVar) throws ExoPlaybackException {
        int i;
        int i2;
        int i3 = 0;
        int length = kVarArr.length;
        for (int i4 = 0; i4 < kVarArr.length; i4++) {
            k kVar = kVarArr[i4];
            int i5 = 0;
            while (i5 < lVar.f3407a) {
                int a2 = kVar.a(lVar.a(i5)) & 3;
                if (a2 <= i3) {
                    i = length;
                    i2 = i3;
                } else if (a2 == 3) {
                    return i4;
                } else {
                    i2 = a2;
                    i = i4;
                }
                i5++;
                i3 = i2;
                length = i;
            }
        }
        return length;
    }

    private static int[] a(k kVar, l lVar) throws ExoPlaybackException {
        int[] iArr = new int[lVar.f3407a];
        for (int i = 0; i < lVar.f3407a; i++) {
            iArr[i] = kVar.a(lVar.a(i));
        }
        return iArr;
    }

    private static int[] a(k[] kVarArr) throws ExoPlaybackException {
        int[] iArr = new int[kVarArr.length];
        for (int i = 0; i < iArr.length; i++) {
            iArr[i] = kVarArr[i].m();
        }
        return iArr;
    }

    private static void a(k[] kVarArr, m[] mVarArr, int[][][] iArr, com.google.android.exoplayer2.l[] lVarArr, f[] fVarArr, int i) {
        boolean z;
        boolean z2 = false;
        if (i != 0) {
            int i2 = 0;
            int i3 = -1;
            int i4 = -1;
            while (true) {
                if (i2 >= kVarArr.length) {
                    z = true;
                    break;
                }
                int a2 = kVarArr[i2].a();
                f fVar = fVarArr[i2];
                if ((a2 == 1 || a2 == 2) && fVar != null && a(iArr[i2], mVarArr[i2], fVar)) {
                    if (a2 == 1) {
                        if (i4 != -1) {
                            z = false;
                            break;
                        }
                        i4 = i2;
                    } else if (i3 != -1) {
                        z = false;
                        break;
                    } else {
                        i3 = i2;
                    }
                }
                i2++;
            }
            if (i4 != -1 && i3 != -1) {
                z2 = true;
            }
            if (z & z2) {
                com.google.android.exoplayer2.l lVar = new com.google.android.exoplayer2.l(i);
                lVarArr[i4] = lVar;
                lVarArr[i3] = lVar;
            }
        }
    }

    private static boolean a(int[][] iArr, m mVar, f fVar) {
        if (fVar == null) {
            return false;
        }
        int a2 = mVar.a(fVar.d());
        for (int i = 0; i < fVar.e(); i++) {
            if ((iArr[a2][fVar.b(i)] & 16) != 16) {
                return false;
            }
        }
        return true;
    }

    /* compiled from: MappingTrackSelector.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final int f3176a;
        private final int[] b;
        private final m[] c;
        private final int[] d;
        private final int[][][] e;
        private final m f;

        a(int[] iArr, m[] mVarArr, int[] iArr2, int[][][] iArr3, m mVar) {
            this.b = iArr;
            this.c = mVarArr;
            this.e = iArr3;
            this.d = iArr2;
            this.f = mVar;
            this.f3176a = mVarArr.length;
        }
    }
}
