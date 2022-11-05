package android.support.v7.widget;

import android.view.View;
/* compiled from: ViewBoundsCheck.java */
/* loaded from: classes.dex */
class ay {

    /* renamed from: a  reason: collision with root package name */
    final b f887a;
    a b = new a();

    /* compiled from: ViewBoundsCheck.java */
    /* loaded from: classes.dex */
    interface b {
        int a();

        int a(View view);

        View a(int i);

        int b();

        int b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ay(b bVar) {
        this.f887a = bVar;
    }

    /* compiled from: ViewBoundsCheck.java */
    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        int f888a = 0;
        int b;
        int c;
        int d;
        int e;

        a() {
        }

        void a(int i, int i2, int i3, int i4) {
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
        }

        void a(int i) {
            this.f888a |= i;
        }

        void a() {
            this.f888a = 0;
        }

        int a(int i, int i2) {
            if (i > i2) {
                return 1;
            }
            if (i == i2) {
                return 2;
            }
            return 4;
        }

        boolean b() {
            if ((this.f888a & 7) == 0 || (this.f888a & (a(this.d, this.b) << 0)) != 0) {
                if ((this.f888a & 112) != 0 && (this.f888a & (a(this.d, this.c) << 4)) == 0) {
                    return false;
                }
                if ((this.f888a & 1792) != 0 && (this.f888a & (a(this.e, this.b) << 8)) == 0) {
                    return false;
                }
                return (this.f888a & 28672) == 0 || (this.f888a & (a(this.e, this.c) << 12)) != 0;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View a(int i, int i2, int i3, int i4) {
        int a2 = this.f887a.a();
        int b2 = this.f887a.b();
        int i5 = i2 > i ? 1 : -1;
        View view = null;
        while (i != i2) {
            View a3 = this.f887a.a(i);
            this.b.a(a2, b2, this.f887a.a(a3), this.f887a.b(a3));
            if (i3 != 0) {
                this.b.a();
                this.b.a(i3);
                if (this.b.b()) {
                    return a3;
                }
            }
            if (i4 != 0) {
                this.b.a();
                this.b.a(i4);
                if (this.b.b()) {
                    i += i5;
                    view = a3;
                }
            }
            a3 = view;
            i += i5;
            view = a3;
        }
        return view;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(View view, int i) {
        this.b.a(this.f887a.a(), this.f887a.b(), this.f887a.a(view), this.f887a.b(view));
        if (i != 0) {
            this.b.a();
            this.b.a(i);
            return this.b.b();
        }
        return false;
    }
}
