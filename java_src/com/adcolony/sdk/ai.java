package com.adcolony.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLES20;
import android.util.Log;
import com.adcolony.sdk.ak;
import com.facebook.imagepipeline.memory.DefaultFlexByteArrayPoolParams;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.gcm.Task;
import com.google.android.gms.vision.barcode.Barcode;
import com.openx.view.mraid.JSInterface;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ai {

    /* renamed from: a  reason: collision with root package name */
    static final int f1041a = 1;
    static final int b = 2;
    static final int c = 4;
    static final int d = 1;
    static final int e = 2;
    static final int f = 512;
    static ByteBuffer h;
    static IntBuffer i;
    ak A;
    ak B;
    ak C;
    ak D;
    ak E;
    ak F;
    int l;
    int m;
    int n;
    int o;
    int q;
    int r;
    a u;
    int v;
    FloatBuffer w;
    FloatBuffer x;
    IntBuffer y;
    static int g = 1;
    static BitmapFactory.Options j = new BitmapFactory.Options();
    static int[] k = new int[1];
    ArrayList<a> p = new ArrayList<>();
    boolean s = true;
    boolean t = true;
    at z = new at(this);

    ai() {
        ByteBuffer allocateDirect = ByteBuffer.allocateDirect(4096);
        allocateDirect.order(ByteOrder.nativeOrder());
        this.w = allocateDirect.asFloatBuffer();
        this.w.rewind();
        ByteBuffer allocateDirect2 = ByteBuffer.allocateDirect(4096);
        allocateDirect2.order(ByteOrder.nativeOrder());
        this.x = allocateDirect2.asFloatBuffer();
        this.x.rewind();
        ByteBuffer allocateDirect3 = ByteBuffer.allocateDirect(Math.max((int) Barcode.PDF417, (int) DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE));
        allocateDirect3.order(ByteOrder.nativeOrder());
        this.y = allocateDirect3.asIntBuffer();
        this.y.rewind();
    }

    void a(double d2, double d3, double d4, double d5, int i2) {
        int i3 = (i2 >> 24) & 255;
        int i4 = (i2 >> 16) & 255;
        int i5 = (i2 >> 8) & 255;
        int i6 = i2 & 255;
        if (i3 > 0) {
            this.t = false;
        }
        if (i3 < 255) {
            this.s = false;
        }
        this.w.put((float) d2);
        this.w.put((float) d3);
        this.x.put((float) d4);
        this.x.put((float) d5);
        this.y.put((i3 << 24) | (((i6 * i3) / 255) << 16) | (((i5 * i3) / 255) << 8) | ((i4 * i3) / 255));
        this.v++;
    }

    void a() {
        b((a) null);
        this.z.b();
        b();
    }

    void a(int i2, int i3, double d2, int i4) {
        if (i2 != 0) {
            int i5 = 0;
            d();
            if ((i2 & 1) != 0) {
                i5 = 16384;
                GLES20.glClearColor(((i3 >> 16) & 255) / 255.0f, ((i3 >> 8) & 255) / 255.0f, (i3 & 255) / 255.0f, ((i3 >> 24) & 255) / 255.0f);
            }
            if ((i2 & 2) != 0) {
                i5 |= 256;
                GLES20.glClearDepthf((float) d2);
            }
            if ((i2 & 4) != 0) {
                i5 |= 1024;
                GLES20.glClearStencil(i4);
            }
            GLES20.glClear(i5);
        }
    }

    void b() {
        d();
        GLES20.glDisable(3089);
    }

    a a(Bitmap bitmap) {
        int i2 = DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE;
        int i3 = 1;
        d();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i4 = 1;
        while (i4 < width) {
            i4 <<= 1;
        }
        while (i3 < height) {
            i3 <<= 1;
        }
        int i5 = i3 * i4 * 4;
        if (h == null || h.capacity() < i5) {
            if (i5 >= 4194304) {
                i2 = i5;
            }
            h = ByteBuffer.allocateDirect(i2);
            h.order(ByteOrder.nativeOrder());
            i = h.asIntBuffer();
        }
        h.rewind();
        bitmap.copyPixelsToBuffer(h);
        bitmap.recycle();
        a aVar = new a();
        this.p.add(aVar);
        return aVar.a(i, width, height);
    }

    void a(a aVar) {
        this.p.remove(aVar);
        k[0] = aVar.b;
        GLES20.glDeleteTextures(1, k, 0);
    }

    void c() {
        d();
        b();
    }

    a a(int i2) {
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < this.p.size()) {
                a aVar = this.p.get(i4);
                if (aVar.b != i2) {
                    i3 = i4 + 1;
                } else {
                    return aVar;
                }
            } else {
                return null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void d() {
        int i2;
        int i3;
        if (this.v != 0) {
            this.z.g();
            if ((this.q & 1) != 0) {
                switch ((this.q >> 8) & 15) {
                    case 0:
                        i2 = 0;
                        break;
                    case 1:
                        i2 = 1;
                        break;
                    case 2:
                        i2 = 770;
                        break;
                    case 3:
                        i2 = 771;
                        break;
                    default:
                        i2 = 1;
                        break;
                }
                switch ((this.q >> 12) & 15) {
                    case 0:
                        i3 = 0;
                        break;
                    case 1:
                        i3 = 1;
                        break;
                    case 2:
                        i3 = 770;
                        break;
                    case 3:
                        i3 = 771;
                        break;
                    default:
                        i3 = 0;
                        break;
                }
                GLES20.glBlendFunc(i2, i3);
                GLES20.glEnable(3042);
            } else {
                GLES20.glDisable(3042);
            }
            if (this.u != null) {
                GLES20.glEnable(3553);
                GLES20.glActiveTexture(33984);
                GLES20.glBindTexture(3553, this.u.f1042a);
                if ((this.q & 12) != 0) {
                    GLES20.glTexParameterf(3553, 10242, 10497.0f);
                    GLES20.glTexParameterf(3553, 10243, 10497.0f);
                } else {
                    GLES20.glTexParameterf(3553, 10242, 33071.0f);
                    GLES20.glTexParameterf(3553, 10243, 33071.0f);
                }
                if ((this.q & 16) != 0) {
                    GLES20.glTexParameterf(3553, 10241, 9728.0f);
                    GLES20.glTexParameterf(3553, Task.EXTRAS_LIMIT_BYTES, 9728.0f);
                } else {
                    GLES20.glTexParameterf(3553, 10241, 9729.0f);
                    GLES20.glTexParameterf(3553, Task.EXTRAS_LIMIT_BYTES, 9729.0f);
                }
                switch (this.q & 16711680) {
                    case 65536:
                        this.C.a();
                        break;
                    case MetadataChangeSet.INDEXABLE_TEXT_SIZE_LIMIT_BYTES /* 131072 */:
                        this.D.a();
                        break;
                    case 196608:
                        if (this.s) {
                            this.E.a();
                            break;
                        } else if (this.t) {
                            this.B.a();
                            break;
                        } else {
                            this.F.a();
                            break;
                        }
                    default:
                        this.B.a();
                        break;
                }
            } else {
                GLES20.glDisable(3553);
                this.A.a();
            }
            switch (this.r) {
                case 1:
                    this.A.a();
                    GLES20.glDrawArrays(1, 0, this.v);
                    break;
                case 2:
                    GLES20.glDrawArrays(4, 0, this.v);
                    break;
            }
            this.v = 0;
            this.w.rewind();
            this.x.rewind();
            this.y.rewind();
            this.s = true;
            this.t = true;
        }
    }

    a a(String str) {
        d();
        j.inScaled = false;
        Bitmap decodeFile = BitmapFactory.decodeFile(str, j);
        if (decodeFile == null) {
            System.out.println("Failed to load " + str);
            decodeFile = Bitmap.createBitmap(16, 16, Bitmap.Config.ARGB_8888);
        }
        return a(decodeFile);
    }

    a a(InputStream inputStream) {
        d();
        j.inScaled = false;
        Bitmap decodeStream = BitmapFactory.decodeStream(inputStream, null, j);
        if (decodeStream == null) {
            Log.w("ADC3", "Failed to decode input stream.");
            decodeStream = Bitmap.createBitmap(16, 16, Bitmap.Config.ARGB_8888);
        }
        return a(decodeStream);
    }

    void e() {
        System.out.println("ADCRenderer on_surface_created()");
        this.A = new ak.a(this);
        this.B = new ak.b(this);
        this.C = new ak.d(this);
        this.D = new ak.c(this);
        this.E = new ak.e(this);
        this.F = new ak.f(this);
    }

    void a(int i2, int i3) {
        System.out.println("ADCRenderer on_surface_changed " + i2 + JSInterface.JSON_X + i3);
        this.l = i2;
        this.m = i3;
        this.n = i2;
        this.o = i3;
        GLES20.glViewport(0, 0, i2, i3);
    }

    void a(int i2, int i3, int i4, int i5) {
        d();
        double d2 = this.l / this.n;
        double d3 = this.m / this.o;
        int i6 = (int) (i5 * d3);
        GLES20.glScissor((int) (d2 * i2), this.m - (((int) (d3 * i3)) + i6), (int) (i4 * d2), i6);
        GLES20.glEnable(3089);
    }

    void f() {
        if (this.r != 1) {
            d();
            this.r = 1;
        }
    }

    void a(int i2, int i3, double d2) {
        this.n = i2;
        this.o = i3;
        this.z.a(this.z.d.a(i2, i3, d2));
    }

    void b(int i2) {
        if (i2 != this.q) {
            d();
            this.q = i2;
        }
    }

    void b(int i2, int i3, int i4, int i5) {
        b(i2 | 2 | (i3 << 8) | (i4 << 12) | (i5 << 16));
    }

    void b(a aVar) {
        if (aVar != this.u) {
            d();
            this.u = aVar;
        }
    }

    void g() {
        if (this.r != 2) {
            d();
            this.r = 2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class a {

        /* renamed from: a  reason: collision with root package name */
        int f1042a;
        int b;
        int c;
        int d;
        int e;
        int f;
        double g;
        double h;

        a() {
            int i = ai.g;
            ai.g = i + 1;
            this.b = i;
            GLES20.glGenTextures(1, ai.k, 0);
            this.f1042a = ai.k[0];
        }

        a a(IntBuffer intBuffer, int i, int i2) {
            int i3 = 1;
            int i4 = 1;
            while (i4 < i) {
                i4 <<= 1;
            }
            while (i3 < i2) {
                i3 <<= 1;
            }
            this.c = i;
            this.d = i2;
            this.e = i4;
            this.f = i3;
            this.g = this.c / this.e;
            this.h = this.d / this.f;
            intBuffer.rewind();
            int i5 = i * i2;
            while (true) {
                i5--;
                if (i5 < 0) {
                    break;
                }
                int i6 = intBuffer.get(i5);
                intBuffer.put(i5, ((i6 << 16) & 16711680) | ((-16711936) & i6) | ((i6 >> 16) & 255));
            }
            intBuffer.rewind();
            if (this.c < this.e) {
                int i7 = ((this.d - 1) * this.e) + this.c;
                int i8 = this.d * this.c;
                int i9 = this.d;
                int i10 = this.e - this.c;
                while (true) {
                    int i11 = i9 - 1;
                    if (i11 < 0) {
                        break;
                    }
                    intBuffer.put(i7, intBuffer.get(i8 - 1));
                    int i12 = this.c;
                    while (true) {
                        i12--;
                        if (i12 >= 0) {
                            i7--;
                            i8--;
                            intBuffer.put(i7, intBuffer.get(i8));
                        }
                    }
                    i7 -= i10;
                    i9 = i11;
                }
            }
            intBuffer.rewind();
            if (this.d < this.f) {
                int i13 = this.d * this.e;
                int i14 = i13 + this.e;
                int i15 = this.e;
                while (true) {
                    i15--;
                    if (i15 < 0) {
                        break;
                    }
                    i14--;
                    i13--;
                    intBuffer.put(i14, intBuffer.get(i13));
                }
            }
            GLES20.glBindTexture(3553, this.f1042a);
            intBuffer.rewind();
            GLES20.glTexImage2D(3553, 0, 6408, this.e, this.f, 0, 6408, 5121, intBuffer);
            System.out.println("ADC3 Texture::set gl_texture_id:" + this.f1042a + " texture_id:" + this.b + " w:" + i + " h:" + i2);
            return this;
        }
    }
}
