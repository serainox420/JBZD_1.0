package android.support.v7.b;

import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Rect;
import android.util.SparseBooleanArray;
import android.util.TimingLogger;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: Palette.java */
/* loaded from: classes.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    static final InterfaceC0038b f633a = new InterfaceC0038b() { // from class: android.support.v7.b.b.1
        @Override // android.support.v7.b.b.InterfaceC0038b
        public boolean a(int i, float[] fArr) {
            return !b(fArr) && !a(fArr) && !c(fArr);
        }

        private boolean a(float[] fArr) {
            return fArr[2] <= 0.05f;
        }

        private boolean b(float[] fArr) {
            return fArr[2] >= 0.95f;
        }

        private boolean c(float[] fArr) {
            return fArr[0] >= 10.0f && fArr[0] <= 37.0f && fArr[1] <= 0.82f;
        }
    };
    private final List<c> b;
    private final List<android.support.v7.b.c> c;
    private final SparseBooleanArray e = new SparseBooleanArray();
    private final Map<android.support.v7.b.c, c> d = new android.support.v4.f.a();
    private final c f = c();

    /* compiled from: Palette.java */
    /* renamed from: android.support.v7.b.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0038b {
        boolean a(int i, float[] fArr);
    }

    b(List<c> list, List<android.support.v7.b.c> list2) {
        this.b = list;
        this.c = list2;
    }

    public List<c> a() {
        return Collections.unmodifiableList(this.b);
    }

    void b() {
        int size = this.c.size();
        for (int i = 0; i < size; i++) {
            android.support.v7.b.c cVar = this.c.get(i);
            cVar.k();
            this.d.put(cVar, a(cVar));
        }
        this.e.clear();
    }

    private c a(android.support.v7.b.c cVar) {
        c b = b(cVar);
        if (b != null && cVar.j()) {
            this.e.append(b.a(), true);
        }
        return b;
    }

    private c b(android.support.v7.b.c cVar) {
        float f;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        c cVar2 = null;
        int size = this.b.size();
        int i = 0;
        while (i < size) {
            c cVar3 = this.b.get(i);
            if (a(cVar3, cVar)) {
                float b = b(cVar3, cVar);
                if (cVar2 == null || b > f2) {
                    f = b;
                    i++;
                    f2 = f;
                    cVar2 = cVar3;
                }
            }
            cVar3 = cVar2;
            f = f2;
            i++;
            f2 = f;
            cVar2 = cVar3;
        }
        return cVar2;
    }

    private boolean a(c cVar, android.support.v7.b.c cVar2) {
        float[] b = cVar.b();
        return b[1] >= cVar2.a() && b[1] <= cVar2.c() && b[2] >= cVar2.d() && b[2] <= cVar2.f() && !this.e.get(cVar.a());
    }

    private float b(c cVar, android.support.v7.b.c cVar2) {
        float f = BitmapDescriptorFactory.HUE_RED;
        float[] b = cVar.b();
        int c2 = this.f != null ? this.f.c() : 1;
        float abs = cVar2.g() > BitmapDescriptorFactory.HUE_RED ? (1.0f - Math.abs(b[1] - cVar2.b())) * cVar2.g() : 0.0f;
        float abs2 = cVar2.h() > BitmapDescriptorFactory.HUE_RED ? (1.0f - Math.abs(b[2] - cVar2.e())) * cVar2.h() : 0.0f;
        if (cVar2.i() > BitmapDescriptorFactory.HUE_RED) {
            f = cVar2.i() * (cVar.c() / c2);
        }
        return abs + abs2 + f;
    }

    private c c() {
        int i;
        int i2 = Integer.MIN_VALUE;
        c cVar = null;
        int size = this.b.size();
        int i3 = 0;
        while (i3 < size) {
            c cVar2 = this.b.get(i3);
            if (cVar2.c() > i2) {
                i = cVar2.c();
            } else {
                cVar2 = cVar;
                i = i2;
            }
            i3++;
            i2 = i;
            cVar = cVar2;
        }
        return cVar;
    }

    /* compiled from: Palette.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private final int f635a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;
        private boolean f;
        private int g;
        private int h;
        private float[] i;

        public c(int i, int i2) {
            this.f635a = Color.red(i);
            this.b = Color.green(i);
            this.c = Color.blue(i);
            this.d = i;
            this.e = i2;
        }

        public int a() {
            return this.d;
        }

        public float[] b() {
            if (this.i == null) {
                this.i = new float[3];
            }
            android.support.v4.b.a.a(this.f635a, this.b, this.c, this.i);
            return this.i;
        }

        public int c() {
            return this.e;
        }

        public int d() {
            f();
            return this.g;
        }

        public int e() {
            f();
            return this.h;
        }

        private void f() {
            int c;
            int c2;
            if (!this.f) {
                int a2 = android.support.v4.b.a.a(-1, this.d, 4.5f);
                int a3 = android.support.v4.b.a.a(-1, this.d, 3.0f);
                if (a2 != -1 && a3 != -1) {
                    this.h = android.support.v4.b.a.c(-1, a2);
                    this.g = android.support.v4.b.a.c(-1, a3);
                    this.f = true;
                    return;
                }
                int a4 = android.support.v4.b.a.a((int) DrawableConstants.CtaButton.BACKGROUND_COLOR, this.d, 4.5f);
                int a5 = android.support.v4.b.a.a((int) DrawableConstants.CtaButton.BACKGROUND_COLOR, this.d, 3.0f);
                if (a4 != -1 && a4 != -1) {
                    this.h = android.support.v4.b.a.c(DrawableConstants.CtaButton.BACKGROUND_COLOR, a4);
                    this.g = android.support.v4.b.a.c(DrawableConstants.CtaButton.BACKGROUND_COLOR, a5);
                    this.f = true;
                    return;
                }
                if (a2 != -1) {
                    c = android.support.v4.b.a.c(-1, a2);
                } else {
                    c = android.support.v4.b.a.c(DrawableConstants.CtaButton.BACKGROUND_COLOR, a4);
                }
                this.h = c;
                if (a3 != -1) {
                    c2 = android.support.v4.b.a.c(-1, a3);
                } else {
                    c2 = android.support.v4.b.a.c(DrawableConstants.CtaButton.BACKGROUND_COLOR, a5);
                }
                this.g = c2;
                this.f = true;
            }
        }

        public String toString() {
            return getClass().getSimpleName() + " [RGB: #" + Integer.toHexString(a()) + "] [HSL: " + Arrays.toString(b()) + "] [Population: " + this.e + "] [Title Text: #" + Integer.toHexString(d()) + "] [Body Text: #" + Integer.toHexString(e()) + ']';
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            c cVar = (c) obj;
            return this.e == cVar.e && this.d == cVar.d;
        }

        public int hashCode() {
            return (this.d * 31) + this.e;
        }
    }

    /* compiled from: Palette.java */
    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final List<c> f634a;
        private final Bitmap b;
        private final List<android.support.v7.b.c> c = new ArrayList();
        private int d = 16;
        private int e = 12544;
        private int f = -1;
        private final List<InterfaceC0038b> g = new ArrayList();
        private Rect h;

        public a(Bitmap bitmap) {
            if (bitmap == null || bitmap.isRecycled()) {
                throw new IllegalArgumentException("Bitmap is not valid");
            }
            this.g.add(b.f633a);
            this.b = bitmap;
            this.f634a = null;
            this.c.add(android.support.v7.b.c.f636a);
            this.c.add(android.support.v7.b.c.b);
            this.c.add(android.support.v7.b.c.c);
            this.c.add(android.support.v7.b.c.d);
            this.c.add(android.support.v7.b.c.e);
            this.c.add(android.support.v7.b.c.f);
        }

        public a a(int i) {
            this.d = i;
            return this;
        }

        public b a() {
            List<c> list;
            TimingLogger timingLogger = null;
            if (this.b != null) {
                Bitmap b = b(this.b);
                if (0 != 0) {
                    timingLogger.addSplit("Processed Bitmap");
                }
                Rect rect = this.h;
                if (b != this.b && rect != null) {
                    double width = b.getWidth() / this.b.getWidth();
                    rect.left = (int) Math.floor(rect.left * width);
                    rect.top = (int) Math.floor(rect.top * width);
                    rect.right = Math.min((int) Math.ceil(rect.right * width), b.getWidth());
                    rect.bottom = Math.min((int) Math.ceil(width * rect.bottom), b.getHeight());
                }
                android.support.v7.b.a aVar = new android.support.v7.b.a(a(b), this.d, this.g.isEmpty() ? null : (InterfaceC0038b[]) this.g.toArray(new InterfaceC0038b[this.g.size()]));
                if (b != this.b) {
                    b.recycle();
                }
                list = aVar.a();
                if (0 != 0) {
                    timingLogger.addSplit("Color quantization completed");
                }
            } else {
                list = this.f634a;
            }
            b bVar = new b(list, this.c);
            bVar.b();
            if (0 != 0) {
                timingLogger.addSplit("Created Palette");
                timingLogger.dumpToLog();
            }
            return bVar;
        }

        private int[] a(Bitmap bitmap) {
            int width = bitmap.getWidth();
            int height = bitmap.getHeight();
            int[] iArr = new int[width * height];
            bitmap.getPixels(iArr, 0, width, 0, 0, width, height);
            if (this.h != null) {
                int width2 = this.h.width();
                int height2 = this.h.height();
                int[] iArr2 = new int[width2 * height2];
                for (int i = 0; i < height2; i++) {
                    System.arraycopy(iArr, ((this.h.top + i) * width) + this.h.left, iArr2, i * width2, width2);
                }
                return iArr2;
            }
            return iArr;
        }

        private Bitmap b(Bitmap bitmap) {
            int max;
            double d = -1.0d;
            if (this.e > 0) {
                int width = bitmap.getWidth() * bitmap.getHeight();
                if (width > this.e) {
                    d = Math.sqrt(this.e / width);
                }
            } else if (this.f > 0 && (max = Math.max(bitmap.getWidth(), bitmap.getHeight())) > this.f) {
                d = this.f / max;
            }
            return d <= 0.0d ? bitmap : Bitmap.createScaledBitmap(bitmap, (int) Math.ceil(bitmap.getWidth() * d), (int) Math.ceil(d * bitmap.getHeight()), false);
        }
    }
}
