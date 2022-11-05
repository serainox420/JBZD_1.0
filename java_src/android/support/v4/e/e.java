package android.support.v4.e;

import java.util.Locale;
/* compiled from: TextDirectionHeuristicsCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public static final android.support.v4.e.d f306a = new C0020e(null, false);
    public static final android.support.v4.e.d b = new C0020e(null, true);
    public static final android.support.v4.e.d c = new C0020e(b.f308a, false);
    public static final android.support.v4.e.d d = new C0020e(b.f308a, true);
    public static final android.support.v4.e.d e = new C0020e(a.f307a, false);
    public static final android.support.v4.e.d f = f.f311a;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    public interface c {
        int a(CharSequence charSequence, int i, int i2);
    }

    static int a(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
            case 2:
                return 0;
            default:
                return 2;
        }
    }

    static int b(int i) {
        switch (i) {
            case 0:
            case 14:
            case 15:
                return 1;
            case 1:
            case 2:
            case 16:
            case 17:
                return 0;
            default:
                return 2;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static abstract class d implements android.support.v4.e.d {

        /* renamed from: a  reason: collision with root package name */
        private final c f309a;

        protected abstract boolean a();

        public d(c cVar) {
            this.f309a = cVar;
        }

        @Override // android.support.v4.e.d
        public boolean a(CharSequence charSequence, int i, int i2) {
            if (charSequence == null || i < 0 || i2 < 0 || charSequence.length() - i2 < i) {
                throw new IllegalArgumentException();
            }
            return this.f309a == null ? a() : b(charSequence, i, i2);
        }

        private boolean b(CharSequence charSequence, int i, int i2) {
            switch (this.f309a.a(charSequence, i, i2)) {
                case 0:
                    return true;
                case 1:
                    return false;
                default:
                    return a();
            }
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* renamed from: android.support.v4.e.e$e  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0020e extends d {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f310a;

        C0020e(c cVar, boolean z) {
            super(cVar);
            this.f310a = z;
        }

        @Override // android.support.v4.e.e.d
        protected boolean a() {
            return this.f310a;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class b implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final b f308a = new b();

        @Override // android.support.v4.e.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            int i4 = 2;
            while (i < i3 && i4 == 2) {
                i4 = e.b(Character.getDirectionality(charSequence.charAt(i)));
                i++;
            }
            return i4;
        }

        private b() {
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class a implements c {

        /* renamed from: a  reason: collision with root package name */
        public static final a f307a = new a(true);
        public static final a b = new a(false);
        private final boolean c;

        @Override // android.support.v4.e.e.c
        public int a(CharSequence charSequence, int i, int i2) {
            int i3 = i + i2;
            boolean z = false;
            while (i < i3) {
                switch (e.a(Character.getDirectionality(charSequence.charAt(i)))) {
                    case 0:
                        if (!this.c) {
                            z = true;
                            break;
                        } else {
                            return 0;
                        }
                    case 1:
                        if (!this.c) {
                            return 1;
                        }
                        z = true;
                        break;
                }
                i++;
            }
            if (z) {
                return !this.c ? 0 : 1;
            }
            return 2;
        }

        private a(boolean z) {
            this.c = z;
        }
    }

    /* compiled from: TextDirectionHeuristicsCompat.java */
    /* loaded from: classes.dex */
    private static class f extends d {

        /* renamed from: a  reason: collision with root package name */
        public static final f f311a = new f();

        public f() {
            super(null);
        }

        @Override // android.support.v4.e.e.d
        protected boolean a() {
            return android.support.v4.e.f.a(Locale.getDefault()) == 1;
        }
    }
}
