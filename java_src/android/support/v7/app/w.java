package android.support.v7.app;
/* compiled from: TwilightCalculator.java */
/* loaded from: classes.dex */
class w {
    private static w d;

    /* renamed from: a  reason: collision with root package name */
    public long f621a;
    public long b;
    public int c;

    w() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w a() {
        if (d == null) {
            d = new w();
        }
        return d;
    }

    public void a(long j, double d2, double d3) {
        float f = ((float) (j - 946728000000L)) / 8.64E7f;
        float f2 = 6.24006f + (0.01720197f * f);
        double sin = f2 + (0.03341960161924362d * Math.sin(f2)) + (3.4906598739326E-4d * Math.sin(2.0f * f2)) + (5.236000106378924E-6d * Math.sin(3.0f * f2)) + 1.796593063d + 3.141592653589793d;
        double d4 = (-d3) / 360.0d;
        double sin2 = (Math.sin(f2) * 0.0053d) + d4 + ((float) Math.round((f - 9.0E-4f) - d4)) + 9.0E-4f + ((-0.0069d) * Math.sin(2.0d * sin));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d2;
        double sin3 = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(asin))) / (Math.cos(asin) * Math.cos(d5));
        if (sin3 >= 1.0d) {
            this.c = 1;
            this.f621a = -1L;
            this.b = -1L;
        } else if (sin3 <= -1.0d) {
            this.c = 0;
            this.f621a = -1L;
            this.b = -1L;
        } else {
            float acos = (float) (Math.acos(sin3) / 6.283185307179586d);
            this.f621a = Math.round((acos + sin2) * 8.64E7d) + 946728000000L;
            this.b = Math.round((sin2 - acos) * 8.64E7d) + 946728000000L;
            if (this.b < j && this.f621a > j) {
                this.c = 0;
            } else {
                this.c = 1;
            }
        }
    }
}
