package com.smartadserver.android.library.ui.a;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.graphics.SurfaceTexture;
import android.hardware.SensorManager;
import android.opengl.GLES20;
import android.opengl.GLSurfaceView;
import android.opengl.Matrix;
import android.view.Surface;
import android.view.View;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.gms.location.places.Place;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.ui.a.a.c;
import com.smartadserver.android.library.ui.a.a.d;
import java.nio.Buffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SASSphericalVideoRenderer.java */
/* loaded from: classes3.dex */
public class a implements SurfaceTexture.OnFrameAvailableListener, GLSurfaceView.Renderer {
    private Surface A;
    private com.smartadserver.android.library.ui.b C;

    /* renamed from: a  reason: collision with root package name */
    float f5583a;
    private com.smartadserver.android.library.ui.a.a.a k;
    private int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private float q;
    private float r;
    private SurfaceTexture x;
    private static int b = RotationOptions.ROTATE_180;
    private static float c = 500.0f;
    private static final float d = c + 200.0f;
    private static float F = 15.0f;
    private final float[] e = new float[16];
    private final float[] f = new float[16];
    private final float[] g = new float[16];
    private final float[] h = new float[16];
    private final float[] i = new float[16];
    private final float[] j = new float[16];
    private float[] s = new float[16];
    private float[] t = new float[16];
    private float[] u = new float[16];
    private float[] v = new float[16];
    private float[] w = new float[16];
    private boolean y = false;
    private boolean B = true;
    private float[] D = new float[4];
    private boolean E = false;
    private com.smartadserver.android.library.ui.a.a.b z = new com.smartadserver.android.library.ui.a.a.b(b, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, c, 1);

    /* JADX INFO: Access modifiers changed from: package-private */
    public a() {
        Matrix.setIdentityM(this.g, 0);
        Matrix.setIdentityM(this.w, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Surface a() {
        return this.A;
    }

    public void b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float[] fArr, boolean z) {
        this.w = fArr;
        SensorManager.getOrientation(this.w, this.D);
        if (!this.E && z) {
            this.E = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(boolean z) {
        this.B = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(com.smartadserver.android.library.ui.b bVar) {
        this.C = bVar;
        if (this.C != null) {
            this.C.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.a.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    a.this.a(false, true);
                }
            });
        }
    }

    void a(boolean z, boolean z2) {
        float i = i();
        float j = j();
        float f = this.r - i;
        float f2 = this.q;
        if (!z) {
            f2 = (-90.0f) + j;
        }
        a(f, f2, z2);
    }

    private void a(float f, float f2, boolean z) {
        if (!z) {
            this.r = f;
            this.q = f2;
            return;
        }
        ValueAnimator valueAnimator = new ValueAnimator();
        valueAnimator.setObjectValues(Float.valueOf(this.r), Float.valueOf(f));
        valueAnimator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.a.2
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator2) {
                a.this.r = ((Float) valueAnimator2.getAnimatedValue()).floatValue();
            }
        });
        ValueAnimator valueAnimator2 = new ValueAnimator();
        valueAnimator2.setObjectValues(Float.valueOf(this.q), Float.valueOf(f2));
        valueAnimator2.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: com.smartadserver.android.library.ui.a.a.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator3) {
                a.this.q = ((Float) valueAnimator3.getAnimatedValue()).floatValue();
            }
        });
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.setDuration(300L);
        animatorSet.play(valueAnimator);
        animatorSet.play(valueAnimator2);
        animatorSet.start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(float f, float f2) {
        if (this.B) {
            this.q = (f2 * 0.1f) + this.q;
            this.r = ((f * 0.1f) + this.r) % 360.0f;
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
        c();
        d();
        e();
        synchronized (this) {
            this.y = false;
        }
    }

    private void c() {
        this.k = new com.smartadserver.android.library.ui.a.a.a(c.a(), c.b());
        this.m = this.k.a("aPosition");
        this.n = this.k.b("uMVPMatrix");
        this.o = this.k.b("uTextureMatrix");
        this.p = this.k.a("aTextureCoord");
        GLES20.glEnable(2884);
        GLES20.glCullFace(Place.TYPE_SYNTHETIC_GEOCODE);
        GLES20.glEnableVertexAttribArray(this.m);
        d.a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.m, 3, 5126, false, this.z.b(), (Buffer) this.z.a());
        d.a("glVertexAttribPointer");
        GLES20.glEnableVertexAttribArray(this.p);
        d.a("glEnableVertexAttribArray");
        GLES20.glVertexAttribPointer(this.p, 2, 5126, false, this.z.b(), this.z.a().duplicate().position(3));
        d.a("glVertexAttribPointer");
    }

    private void d() {
        int[] iArr = new int[1];
        GLES20.glGenTextures(1, iArr, 0);
        d.a("glGenTextures");
        this.l = iArr[0];
        GLES20.glActiveTexture(33984);
        d.a("glActiveTexture");
        GLES20.glBindTexture(36197, this.l);
        d.a("glBindTexture mTextureID");
    }

    private void e() {
        this.x = new SurfaceTexture(this.l);
        this.x.setOnFrameAvailableListener(this);
        this.A = new Surface(this.x);
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onDrawFrame(GL10 gl10) {
        synchronized (this) {
            if (this.y) {
                this.x.updateTexImage();
                this.x.getTransformMatrix(this.g);
                Matrix.translateM(this.g, 0, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED);
                this.y = false;
            }
            f();
            g();
            h();
            k();
            this.k.b();
            GLES20.glActiveTexture(33984);
            d.a("glActiveTexture");
            GLES20.glBindTexture(36197, this.l);
            d.a("glBindTexture");
            GLES20.glUniformMatrix4fv(this.o, 1, false, this.g, 0);
            d.a("glUniformMatrix4fv");
            GLES20.glUniformMatrix4fv(this.n, 1, false, this.f, 0);
            d.a("glUniformMatrix4fv");
            l();
            GLES20.glFinish();
        }
    }

    private void f() {
        float j = j();
        float max = Math.max(Math.min(this.q, j - F), j + (-180.0f) + F);
        this.q = max;
        Matrix.setRotateM(this.s, 0, BitmapDescriptorFactory.HUE_RED, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Matrix.setRotateM(this.t, 0, max, 1.0f, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        Matrix.setRotateM(this.u, 0, this.r, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        Matrix.multiplyMM(this.v, 0, this.w, 0, this.u, 0);
        Matrix.multiplyMM(this.j, 0, this.t, 0, this.v, 0);
        if (this.E) {
            this.E = false;
            com.smartadserver.android.library.g.c.h().post(new Runnable() { // from class: com.smartadserver.android.library.ui.a.a.4
                @Override // java.lang.Runnable
                public void run() {
                    a.this.a(true, false);
                }
            });
        }
    }

    private void g() {
        Matrix.setIdentityM(this.h, 0);
        Matrix.multiplyMM(this.e, 0, this.j, 0, this.h, 0);
        Matrix.multiplyMM(this.f, 0, this.i, 0, this.e, 0);
    }

    private void h() {
        GLES20.glClearColor(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, 1.0f);
        GLES20.glClear(16640);
    }

    private float i() {
        float degrees = (float) Math.toDegrees(Math.asin(Math.max(Math.min(this.j[4], 1.0d), -1.0d)));
        if (this.j[6] < BitmapDescriptorFactory.HUE_RED) {
            if (degrees > BitmapDescriptorFactory.HUE_RED) {
                return 180.0f - degrees;
            }
            return (-180.0f) - degrees;
        }
        return degrees;
    }

    private float j() {
        float f = -((float) Math.toDegrees(this.D[1]));
        if (Float.isNaN(f)) {
            return 90.0f;
        }
        if (this.f5583a < BitmapDescriptorFactory.HUE_RED) {
            return 180.0f - f;
        }
        return f;
    }

    private void k() {
        if (this.C != null) {
            this.C.setAngle(i());
        }
    }

    private void l() {
        for (int i = 0; i < this.z.d().length; i++) {
            GLES20.glDrawElements(4, this.z.d()[i], 5123, this.z.c()[i]);
            d.a("glDrawElements");
        }
    }

    @Override // android.opengl.GLSurfaceView.Renderer
    public void onSurfaceChanged(GL10 gl10, int i, int i2) {
        GLES20.glViewport(0, 0, i, i2);
        Matrix.perspectiveM(this.i, 0, 70.0f, i / i2, 100.0f, d);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public synchronized void onFrameAvailable(SurfaceTexture surfaceTexture) {
        this.y = true;
    }
}
