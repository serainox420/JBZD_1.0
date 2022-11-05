package com.adcolony.sdk;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLSurfaceView;
import com.facebook.GraphResponse;
import com.facebook.imagepipeline.memory.DefaultFlexByteArrayPoolParams;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.HashMap;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class p implements GLSurfaceView.Renderer {

    /* renamed from: a  reason: collision with root package name */
    static BitmapFactory.Options f1490a = new BitmapFactory.Options();
    static ByteBuffer b;
    o c;
    String d;
    int e;
    int f;
    boolean g;
    boolean h;
    c j;
    int k;
    int l;
    ArrayList<z> i = new ArrayList<>();
    ArrayList<a> m = new ArrayList<>();
    HashMap<Integer, a> n = new HashMap<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar, boolean z, String str) {
        System.out.println("AdColony new ADCGLViewRenderer");
        this.c = oVar;
        this.g = z;
        this.d = str;
        this.j = com.adcolony.sdk.a.m.g.f1380a.get(str);
        this.e = oVar.b;
        this.f = this.j.l;
        this.j.o.add(com.adcolony.sdk.a.a("RenderView.create_image", new ac() { // from class: com.adcolony.sdk.p.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                p.this.a(zVar);
            }
        }, true));
        this.j.o.add(com.adcolony.sdk.a.a("RenderView.load_texture", new ac() { // from class: com.adcolony.sdk.p.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                p.this.b(zVar);
            }
        }, true));
        this.j.p.add("RenderView.create_image");
        this.j.p.add("RenderView.load_texture");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void a() {
        if (!this.h) {
            this.h = true;
            synchronized (ADCNative.f958a) {
                ADCNative.nativeDeleteSceneController(this.f, this.e);
            }
        }
    }

    protected void finalize() throws Throwable {
        a();
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public synchronized void onDrawFrame(GL10 gl10) {
        com.adcolony.sdk.a.a();
        synchronized (ADCNative.f958a) {
            if (!this.h) {
                b();
                ADCNative.nativeRender(this.f, this.e, this.k, this.l);
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public synchronized void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        synchronized (ADCNative.f958a) {
            if (!this.h) {
                ADCNative.nativeCreateSceneController(this.f, this.e);
            }
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        this.k = i;
        this.l = i2;
    }

    void a(z zVar) {
    }

    synchronized void b(z zVar) {
        this.i.add(zVar);
    }

    synchronized void b() {
        int i = 0;
        while (true) {
            if (i < this.i.size()) {
                z zVar = this.i.get(i);
                a aVar = null;
                if (zVar.b.has("pixels")) {
                    String b2 = s.b(zVar.b, "pixels");
                    int[] iArr = new int[b2.length() / 4];
                    int length = b2.length() - 4;
                    int length2 = iArr.length;
                    while (length >= 0) {
                        char charAt = b2.charAt(length);
                        char charAt2 = b2.charAt(length + 1);
                        char charAt3 = b2.charAt(length + 2);
                        length += 4;
                        length2--;
                        iArr[length2] = (charAt << 24) | (charAt2 << 16) | (charAt3 << '\b') | b2.charAt(length + 3);
                    }
                    int c = s.c(zVar.b, "width");
                    int c2 = s.c(zVar.b, "height");
                    if (c * c2 == iArr.length) {
                        aVar = a(s.c(zVar.b, "texture_id"), s.b(zVar.b, "filepath"), iArr, c, c2);
                    }
                } else if (zVar.b.has("bytes")) {
                    String b3 = s.b(zVar.b, "bytes");
                    byte[] bArr = new byte[b3.length()];
                    int length3 = b3.length();
                    while (true) {
                        length3--;
                        if (length3 < 0) {
                            break;
                        }
                        bArr[length3] = (byte) b3.charAt(length3);
                    }
                    aVar = a(s.c(zVar.b, "texture_id"), s.b(zVar.b, "filepath"), bArr);
                } else if (zVar.b.has("filepath")) {
                    aVar = a(s.c(zVar.b, "texture_id"), s.b(zVar.b, "filepath"));
                }
                if (aVar == null) {
                    s.a(zVar.b, GraphResponse.SUCCESS_KEY, false);
                    break;
                }
                s.a(zVar.b, GraphResponse.SUCCESS_KEY, aVar.d);
                s.b(zVar.b, "image_width", aVar.f);
                s.b(zVar.b, "image_height", aVar.g);
                s.b(zVar.b, "texture_width", aVar.h);
                s.b(zVar.b, "texture_height", aVar.i);
                zVar.a(zVar.b).b();
                i++;
            } else {
                this.i.clear();
                break;
            }
        }
    }

    a a(int i, String str) {
        Bitmap bitmap;
        f1490a.inScaled = false;
        if (str.startsWith("file:///android_asset/")) {
            try {
                bitmap = BitmapFactory.decodeStream(com.adcolony.sdk.a.l.getAssets().open(str.substring("file:///android_asset/".length())), null, f1490a);
            } catch (IOException e) {
                u.f.b(e.toString());
                bitmap = null;
            }
        } else {
            bitmap = BitmapFactory.decodeFile(str, f1490a);
        }
        if (bitmap == null) {
            u.f.a("Failed to load ").a(str).b(" - using white 16x16 as placeholder.");
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(-1);
            a a2 = a(i, str, createBitmap);
            a2.d = false;
            return a2;
        }
        return a(i, str, bitmap);
    }

    a a(int i, String str, byte[] bArr) {
        f1490a.inScaled = false;
        Bitmap decodeByteArray = BitmapFactory.decodeByteArray(bArr, 0, bArr.length);
        if (decodeByteArray == null) {
            u.f.a("Failed to load ").a(str).b(" bytes - using white 16x16 as placeholder.");
            Bitmap createBitmap = Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
            createBitmap.eraseColor(-1);
            a a2 = a(i, str, createBitmap);
            a2.d = false;
            return a2;
        }
        return a(i, str, decodeByteArray);
    }

    a a(int i, String str, int[] iArr, int i2, int i3) {
        return a(i, str, Bitmap.createBitmap(iArr, i2, i3, Bitmap.Config.ARGB_8888));
    }

    a a(int i, String str, Bitmap bitmap) {
        int i2 = DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE;
        a aVar = new a(i, str, bitmap.getWidth(), bitmap.getHeight());
        int i3 = aVar.h * aVar.i * 4;
        if (b == null || b.capacity() < i3) {
            if (i3 >= 4194304) {
                i2 = i3;
            }
            b = ByteBuffer.allocateDirect(i2);
            b.order(ByteOrder.nativeOrder());
        }
        b.rewind();
        bitmap.copyPixelsToBuffer(b);
        this.m.add(aVar);
        this.n.put(Integer.valueOf(i), aVar);
        synchronized (ADCNative.f958a) {
            ADCNative.nativeCreateTexture(this.f, this.e, i, str, b, aVar.f, aVar.g, aVar.h, aVar.i);
        }
        return aVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        static int f1493a = 1;
        int b;
        String c;
        int f;
        int g;
        int i;
        boolean d = true;
        int e = this.e;
        int e = this.e;
        int h = 1;

        a(int i, String str, int i2, int i3) {
            this.b = i;
            this.c = str;
            this.f = i2;
            this.g = i3;
            while (this.h < i2) {
                this.h <<= 1;
            }
            this.i = 1;
            while (this.i < i3) {
                this.i <<= 1;
            }
        }
    }
}
