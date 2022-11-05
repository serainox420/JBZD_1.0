package android.support.v4.b;

import android.graphics.Color;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ColorUtils.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final ThreadLocal<double[]> f278a = new ThreadLocal<>();

    public static int a(int i, int i2) {
        int alpha = Color.alpha(i2);
        int alpha2 = Color.alpha(i);
        int d = d(alpha2, alpha);
        return Color.argb(d, a(Color.red(i), alpha2, Color.red(i2), alpha, d), a(Color.green(i), alpha2, Color.green(i2), alpha, d), a(Color.blue(i), alpha2, Color.blue(i2), alpha, d));
    }

    private static int d(int i, int i2) {
        return 255 - (((255 - i2) * (255 - i)) / 255);
    }

    private static int a(int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            return 0;
        }
        return (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
    }

    public static double a(int i) {
        double[] a2 = a();
        a(i, a2);
        return a2[1] / 100.0d;
    }

    public static double b(int i, int i2) {
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
        }
        if (Color.alpha(i) < 255) {
            i = a(i, i2);
        }
        double a2 = a(i) + 0.05d;
        double a3 = a(i2) + 0.05d;
        return Math.max(a2, a3) / Math.min(a2, a3);
    }

    public static int a(int i, int i2, float f) {
        int i3 = 0;
        int i4 = 255;
        if (Color.alpha(i2) != 255) {
            throw new IllegalArgumentException("background can not be translucent: #" + Integer.toHexString(i2));
        }
        if (b(c(i, 255), i2) < f) {
            return -1;
        }
        int i5 = 0;
        while (i5 <= 10 && i4 - i3 > 1) {
            int i6 = (i3 + i4) / 2;
            if (b(c(i, i6), i2) >= f) {
                i4 = i6;
                i6 = i3;
            }
            i5++;
            i3 = i6;
        }
        return i4;
    }

    public static void a(int i, int i2, int i3, float[] fArr) {
        float f;
        float abs;
        float f2 = i / 255.0f;
        float f3 = i2 / 255.0f;
        float f4 = i3 / 255.0f;
        float max = Math.max(f2, Math.max(f3, f4));
        float min = Math.min(f2, Math.min(f3, f4));
        float f5 = max - min;
        float f6 = (max + min) / 2.0f;
        if (max == min) {
            abs = 0.0f;
            f = 0.0f;
        } else {
            if (max == f2) {
                f = ((f3 - f4) / f5) % 6.0f;
            } else if (max == f3) {
                f = ((f4 - f2) / f5) + 2.0f;
            } else {
                f = ((f2 - f3) / f5) + 4.0f;
            }
            abs = f5 / (1.0f - Math.abs((2.0f * f6) - 1.0f));
        }
        float f7 = (f * 60.0f) % 360.0f;
        if (f7 < BitmapDescriptorFactory.HUE_RED) {
            f7 += 360.0f;
        }
        fArr[0] = a(f7, (float) BitmapDescriptorFactory.HUE_RED, 360.0f);
        fArr[1] = a(abs, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
        fArr[2] = a(f6, (float) BitmapDescriptorFactory.HUE_RED, 1.0f);
    }

    public static void a(int i, float[] fArr) {
        a(Color.red(i), Color.green(i), Color.blue(i), fArr);
    }

    public static int c(int i, int i2) {
        if (i2 < 0 || i2 > 255) {
            throw new IllegalArgumentException("alpha must be between 0 and 255.");
        }
        return (16777215 & i) | (i2 << 24);
    }

    public static void a(int i, double[] dArr) {
        a(Color.red(i), Color.green(i), Color.blue(i), dArr);
    }

    public static void a(int i, int i2, int i3, double[] dArr) {
        if (dArr.length != 3) {
            throw new IllegalArgumentException("outXyz must have a length of 3.");
        }
        double d = i / 255.0d;
        double pow = d < 0.04045d ? d / 12.92d : Math.pow((d + 0.055d) / 1.055d, 2.4d);
        double d2 = i2 / 255.0d;
        double pow2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((d2 + 0.055d) / 1.055d, 2.4d);
        double d3 = i3 / 255.0d;
        double pow3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((d3 + 0.055d) / 1.055d, 2.4d);
        dArr[0] = 100.0d * ((0.4124d * pow) + (0.3576d * pow2) + (0.1805d * pow3));
        dArr[1] = 100.0d * ((0.2126d * pow) + (0.7152d * pow2) + (0.0722d * pow3));
        dArr[2] = ((pow3 * 0.9505d) + (pow2 * 0.1192d) + (pow * 0.0193d)) * 100.0d;
    }

    private static float a(float f, float f2, float f3) {
        return f < f2 ? f2 : f > f3 ? f3 : f;
    }

    private static double[] a() {
        double[] dArr = f278a.get();
        if (dArr == null) {
            double[] dArr2 = new double[3];
            f278a.set(dArr2);
            return dArr2;
        }
        return dArr;
    }
}
