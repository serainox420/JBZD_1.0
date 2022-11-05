package android.support.v4.view;

import android.os.Build;
import android.view.KeyEvent;
import com.facebook.imageutils.JfifUtil;
/* compiled from: KeyEventCompat.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    static final c f464a;

    /* compiled from: KeyEventCompat.java */
    /* loaded from: classes.dex */
    interface c {
        boolean a(int i, int i2);

        boolean a(KeyEvent keyEvent);

        boolean b(int i);
    }

    /* compiled from: KeyEventCompat.java */
    /* loaded from: classes.dex */
    static class a implements c {
        a() {
        }

        private static int a(int i, int i2, int i3, int i4, int i5) {
            boolean z = true;
            boolean z2 = (i2 & i3) != 0;
            int i6 = i4 | i5;
            if ((i2 & i6) == 0) {
                z = false;
            }
            if (z2) {
                if (z) {
                    throw new IllegalArgumentException("bad arguments");
                }
                return i & (i6 ^ (-1));
            } else if (z) {
                return i & (i3 ^ (-1));
            } else {
                return i;
            }
        }

        public int a(int i) {
            int i2 = (i & JfifUtil.MARKER_SOFn) != 0 ? i | 1 : i;
            if ((i2 & 48) != 0) {
                i2 |= 2;
            }
            return i2 & 247;
        }

        @Override // android.support.v4.view.h.c
        public boolean a(int i, int i2) {
            return a(a(a(i) & 247, i2, 1, 64, 128), i2, 2, 16, 32) == i2;
        }

        @Override // android.support.v4.view.h.c
        public boolean b(int i) {
            return (a(i) & 247) == 0;
        }

        @Override // android.support.v4.view.h.c
        public boolean a(KeyEvent keyEvent) {
            return false;
        }
    }

    /* compiled from: KeyEventCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.h.a
        public int a(int i) {
            return i.a(i);
        }

        @Override // android.support.v4.view.h.a, android.support.v4.view.h.c
        public boolean a(int i, int i2) {
            return i.a(i, i2);
        }

        @Override // android.support.v4.view.h.a, android.support.v4.view.h.c
        public boolean b(int i) {
            return i.b(i);
        }

        @Override // android.support.v4.view.h.a, android.support.v4.view.h.c
        public boolean a(KeyEvent keyEvent) {
            return i.a(keyEvent);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 11) {
            f464a = new b();
        } else {
            f464a = new a();
        }
    }

    public static boolean a(KeyEvent keyEvent, int i) {
        return f464a.a(keyEvent.getMetaState(), i);
    }

    public static boolean a(KeyEvent keyEvent) {
        return f464a.b(keyEvent.getMetaState());
    }

    public static boolean b(KeyEvent keyEvent) {
        return f464a.a(keyEvent);
    }
}
