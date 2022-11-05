package com.smartadserver.android.library.ui.a;

import android.app.ActivityManager;
import android.content.Context;
import android.hardware.SensorManager;
import android.opengl.GLSurfaceView;
import android.os.Build;
import android.view.Display;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.View;
import android.view.WindowManager;
import com.smartadserver.android.library.ui.a.a.d;
import com.smartadserver.android.library.ui.a.b.c;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
/* compiled from: SASSphericalVideoView.java */
/* loaded from: classes3.dex */
public class b extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    private a f5592a;
    float[] b;
    private Display c;
    private com.smartadserver.android.library.ui.a.b.a d;
    private boolean e;
    private GestureDetector f;
    private GestureDetector.SimpleOnGestureListener g;

    public b(Context context) {
        super(context);
        this.b = new float[16];
        this.e = false;
        this.g = new GestureDetector.SimpleOnGestureListener() { // from class: com.smartadserver.android.library.ui.a.b.4
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                b.this.f5592a.a(f, f2);
                return true;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                return b.this.b();
            }
        };
        b(context);
    }

    public void setPanEnabled(boolean z) {
        this.f5592a.a(z);
    }

    public void setResetButton(com.smartadserver.android.library.ui.b bVar) {
        this.f5592a.a(bVar);
    }

    protected void a() {
    }

    private void b(Context context) {
        setEGLContextClientVersion(2);
        setPreserveEGLContextOnPause(true);
        this.f5592a = new a() { // from class: com.smartadserver.android.library.ui.a.b.1
            @Override // com.smartadserver.android.library.ui.a.a, android.opengl.GLSurfaceView.Renderer
            public void onSurfaceCreated(GL10 gl10, EGLConfig eGLConfig) {
                super.onSurfaceCreated(gl10, eGLConfig);
                b.this.a();
            }
        };
        setRenderer(this.f5592a);
        this.c = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
        this.f = new GestureDetector(getContext(), this.g);
        setOnTouchListener(new View.OnTouchListener() { // from class: com.smartadserver.android.library.ui.a.b.2
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return b.this.f.onTouchEvent(motionEvent);
            }
        });
        this.d = new com.smartadserver.android.library.ui.a.b.a((SensorManager) context.getSystemService("sensor"));
        this.d.a(new c() { // from class: com.smartadserver.android.library.ui.a.b.3
            @Override // com.smartadserver.android.library.ui.a.b.c
            public void a() {
                if (b.this.f5592a != null && b.this.d != null) {
                    switch (b.this.c.getRotation()) {
                        case 0:
                            SensorManager.remapCoordinateSystem(b.this.d.c().g, 1, 2, b.this.b);
                            break;
                        case 1:
                            SensorManager.remapCoordinateSystem(b.this.d.c().g, 2, 129, b.this.b);
                            break;
                        case 2:
                            SensorManager.remapCoordinateSystem(b.this.d.c().g, 129, 130, b.this.b);
                            break;
                        case 3:
                            SensorManager.remapCoordinateSystem(b.this.d.c().g, 130, 1, b.this.b);
                            break;
                    }
                    b.this.f5592a.a(b.this.b, !b.this.e);
                    b.this.f5592a.f5583a = b.this.d.d();
                    if (!b.this.e && d.a(b.this.b)) {
                        b.this.e = true;
                    }
                }
            }
        });
        this.d.a();
    }

    public static boolean a(Context context) {
        return (((ActivityManager) context.getSystemService("activity")).getDeviceConfigurationInfo().reqGlEsVersion >= 131072) && (Build.VERSION.SDK_INT >= 16);
    }

    public Surface c() {
        return this.f5592a.a();
    }

    public void d() {
        f();
        this.d.a((c) null);
        this.f5592a.b();
    }

    public void e() {
        onResume();
        this.d.a();
    }

    public void f() {
        onPause();
        this.d.b();
    }

    protected boolean b() {
        return false;
    }
}
