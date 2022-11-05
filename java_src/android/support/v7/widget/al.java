package android.support.v7.widget;
/* compiled from: RtlSpacingHelper.java */
/* loaded from: classes.dex */
class al {

    /* renamed from: a  reason: collision with root package name */
    private int f871a = 0;
    private int b = 0;
    private int c = Integer.MIN_VALUE;
    private int d = Integer.MIN_VALUE;
    private int e = 0;
    private int f = 0;
    private boolean g = false;
    private boolean h = false;

    public int a() {
        return this.f871a;
    }

    public int b() {
        return this.b;
    }

    public int c() {
        return this.g ? this.b : this.f871a;
    }

    public int d() {
        return this.g ? this.f871a : this.b;
    }

    public void a(int i, int i2) {
        this.c = i;
        this.d = i2;
        this.h = true;
        if (this.g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f871a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f871a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.b = i2;
        }
    }

    public void b(int i, int i2) {
        this.h = false;
        if (i != Integer.MIN_VALUE) {
            this.e = i;
            this.f871a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f = i2;
            this.b = i2;
        }
    }

    public void a(boolean z) {
        if (z != this.g) {
            this.g = z;
            if (this.h) {
                if (z) {
                    this.f871a = this.d != Integer.MIN_VALUE ? this.d : this.e;
                    this.b = this.c != Integer.MIN_VALUE ? this.c : this.f;
                    return;
                }
                this.f871a = this.c != Integer.MIN_VALUE ? this.c : this.e;
                this.b = this.d != Integer.MIN_VALUE ? this.d : this.f;
                return;
            }
            this.f871a = this.e;
            this.b = this.f;
        }
    }
}
