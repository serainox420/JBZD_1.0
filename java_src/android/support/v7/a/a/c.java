package android.support.v7.a.a;

import java.lang.reflect.Array;
/* compiled from: GrowingArrayUtils.java */
/* loaded from: classes.dex */
final class c {

    /* renamed from: a  reason: collision with root package name */
    static final /* synthetic */ boolean f529a;

    static {
        f529a = !c.class.desiredAssertionStatus();
    }

    public static <T> T[] a(T[] tArr, int i, T t) {
        T[] tArr2;
        if (f529a || i <= tArr.length) {
            if (i + 1 > tArr.length) {
                tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), a(i)));
                System.arraycopy(tArr, 0, tArr2, 0, i);
            } else {
                tArr2 = tArr;
            }
            tArr2[i] = t;
            return tArr2;
        }
        throw new AssertionError();
    }

    public static int[] a(int[] iArr, int i, int i2) {
        if (f529a || i <= iArr.length) {
            if (i + 1 > iArr.length) {
                int[] iArr2 = new int[a(i)];
                System.arraycopy(iArr, 0, iArr2, 0, i);
                iArr = iArr2;
            }
            iArr[i] = i2;
            return iArr;
        }
        throw new AssertionError();
    }

    public static int a(int i) {
        if (i <= 4) {
            return 8;
        }
        return i * 2;
    }

    private c() {
    }
}
