package okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SegmentPool.java */
/* loaded from: classes3.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static n f5874a;
    static long b;

    private o() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static n a() {
        synchronized (o.class) {
            if (f5874a != null) {
                n nVar = f5874a;
                f5874a = nVar.f;
                nVar.f = null;
                b -= 8192;
                return nVar;
            }
            return new n();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(n nVar) {
        if (nVar.f == null && nVar.g == null) {
            if (!nVar.d) {
                synchronized (o.class) {
                    if (b + 8192 <= 65536) {
                        b += 8192;
                        nVar.f = f5874a;
                        nVar.c = 0;
                        nVar.b = 0;
                        f5874a = nVar;
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }
}
