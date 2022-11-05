package me.relex.photodraweeview;

import android.content.Context;
import android.support.v4.view.t;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
/* compiled from: ScaleDragDetector.java */
/* loaded from: classes3.dex */
public class g implements ScaleGestureDetector.OnScaleGestureListener {

    /* renamed from: a  reason: collision with root package name */
    float f5823a;
    float b;
    private final float c;
    private final float d;
    private final ScaleGestureDetector e;
    private final e f;
    private VelocityTracker g;
    private boolean h;
    private int i = -1;
    private int j = 0;

    public g(Context context, e eVar) {
        this.e = new ScaleGestureDetector(context, this);
        this.f = eVar;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.d = viewConfiguration.getScaledMinimumFlingVelocity();
        this.c = viewConfiguration.getScaledTouchSlop();
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
        float scaleFactor = scaleGestureDetector.getScaleFactor();
        if (Float.isNaN(scaleFactor) || Float.isInfinite(scaleFactor)) {
            return false;
        }
        this.f.a(scaleFactor, scaleGestureDetector.getFocusX(), scaleGestureDetector.getFocusY());
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public boolean onScaleBegin(ScaleGestureDetector scaleGestureDetector) {
        return true;
    }

    @Override // android.view.ScaleGestureDetector.OnScaleGestureListener
    public void onScaleEnd(ScaleGestureDetector scaleGestureDetector) {
        this.f.l();
    }

    public boolean a() {
        return this.e.isInProgress();
    }

    public boolean b() {
        return this.h;
    }

    private float b(MotionEvent motionEvent) {
        try {
            return t.c(motionEvent, this.j);
        } catch (Exception e) {
            return motionEvent.getX();
        }
    }

    private float c(MotionEvent motionEvent) {
        try {
            return t.d(motionEvent, this.j);
        } catch (Exception e) {
            return motionEvent.getY();
        }
    }

    public boolean a(MotionEvent motionEvent) {
        this.e.onTouchEvent(motionEvent);
        int a2 = t.a(motionEvent);
        a(a2, motionEvent);
        b(a2, motionEvent);
        return true;
    }

    private void a(int i, MotionEvent motionEvent) {
        int i2 = 0;
        switch (i) {
            case 0:
                this.i = motionEvent.getPointerId(0);
                break;
            case 1:
            case 3:
                this.i = -1;
                break;
            case 6:
                int b = t.b(motionEvent);
                if (t.b(motionEvent, b) == this.i) {
                    int i3 = b == 0 ? 1 : 0;
                    this.i = t.b(motionEvent, i3);
                    this.f5823a = t.c(motionEvent, i3);
                    this.b = t.d(motionEvent, i3);
                    break;
                }
                break;
        }
        if (this.i != -1) {
            i2 = this.i;
        }
        this.j = t.a(motionEvent, i2);
    }

    private void b(int i, MotionEvent motionEvent) {
        boolean z = false;
        switch (i) {
            case 0:
                this.g = VelocityTracker.obtain();
                if (this.g != null) {
                    this.g.addMovement(motionEvent);
                }
                this.f5823a = b(motionEvent);
                this.b = c(motionEvent);
                this.h = false;
                return;
            case 1:
                if (this.h && this.g != null) {
                    this.f5823a = b(motionEvent);
                    this.b = c(motionEvent);
                    this.g.addMovement(motionEvent);
                    this.g.computeCurrentVelocity(1000);
                    float xVelocity = this.g.getXVelocity();
                    float yVelocity = this.g.getYVelocity();
                    if (Math.max(Math.abs(xVelocity), Math.abs(yVelocity)) >= this.d) {
                        this.f.a(this.f5823a, this.b, -xVelocity, -yVelocity);
                    }
                }
                if (this.g != null) {
                    this.g.recycle();
                    this.g = null;
                    return;
                }
                return;
            case 2:
                float b = b(motionEvent);
                float c = c(motionEvent);
                float f = b - this.f5823a;
                float f2 = c - this.b;
                if (!this.h) {
                    if (Math.sqrt((f * f) + (f2 * f2)) >= this.c) {
                        z = true;
                    }
                    this.h = z;
                }
                if (this.h) {
                    this.f.a(f, f2);
                    this.f5823a = b;
                    this.b = c;
                    if (this.g != null) {
                        this.g.addMovement(motionEvent);
                        return;
                    }
                    return;
                }
                return;
            case 3:
                if (this.g != null) {
                    this.g.recycle();
                    this.g = null;
                    return;
                }
                return;
            default:
                return;
        }
    }
}
