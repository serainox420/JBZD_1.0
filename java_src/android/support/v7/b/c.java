package android.support.v7.b;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: Target.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public static final c f636a = new c();
    public static final c b;
    public static final c c;
    public static final c d;
    public static final c e;
    public static final c f;
    final float[] g = new float[3];
    final float[] h = new float[3];
    final float[] i = new float[3];
    boolean j = true;

    static {
        c(f636a);
        d(f636a);
        b = new c();
        b(b);
        d(b);
        c = new c();
        a(c);
        d(c);
        d = new c();
        c(d);
        e(d);
        e = new c();
        b(e);
        e(e);
        f = new c();
        a(f);
        e(f);
    }

    c() {
        a(this.g);
        a(this.h);
        l();
    }

    public float a() {
        return this.g[0];
    }

    public float b() {
        return this.g[1];
    }

    public float c() {
        return this.g[2];
    }

    public float d() {
        return this.h[0];
    }

    public float e() {
        return this.h[1];
    }

    public float f() {
        return this.h[2];
    }

    public float g() {
        return this.i[0];
    }

    public float h() {
        return this.i[1];
    }

    public float i() {
        return this.i[2];
    }

    public boolean j() {
        return this.j;
    }

    private static void a(float[] fArr) {
        fArr[0] = 0.0f;
        fArr[1] = 0.5f;
        fArr[2] = 1.0f;
    }

    private void l() {
        this.i[0] = 0.24f;
        this.i[1] = 0.52f;
        this.i[2] = 0.24f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        int length = this.i.length;
        float f2 = 0.0f;
        for (int i = 0; i < length; i++) {
            float f3 = this.i[i];
            if (f3 > BitmapDescriptorFactory.HUE_RED) {
                f2 += f3;
            }
        }
        if (f2 != BitmapDescriptorFactory.HUE_RED) {
            int length2 = this.i.length;
            for (int i2 = 0; i2 < length2; i2++) {
                if (this.i[i2] > BitmapDescriptorFactory.HUE_RED) {
                    float[] fArr = this.i;
                    fArr[i2] = fArr[i2] / f2;
                }
            }
        }
    }

    private static void a(c cVar) {
        cVar.h[1] = 0.26f;
        cVar.h[2] = 0.45f;
    }

    private static void b(c cVar) {
        cVar.h[0] = 0.3f;
        cVar.h[1] = 0.5f;
        cVar.h[2] = 0.7f;
    }

    private static void c(c cVar) {
        cVar.h[0] = 0.55f;
        cVar.h[1] = 0.74f;
    }

    private static void d(c cVar) {
        cVar.g[0] = 0.35f;
        cVar.g[1] = 1.0f;
    }

    private static void e(c cVar) {
        cVar.g[1] = 0.3f;
        cVar.g[2] = 0.4f;
    }
}
