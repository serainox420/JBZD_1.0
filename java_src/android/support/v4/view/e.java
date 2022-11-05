package android.support.v4.view;

import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Message;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.ViewConfiguration;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: GestureDetectorCompat.java */
/* loaded from: classes.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    private final a f459a;

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    interface a {
        void a(GestureDetector.OnDoubleTapListener onDoubleTapListener);

        void a(boolean z);

        boolean a(MotionEvent motionEvent);
    }

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        private static final int j = ViewConfiguration.getLongPressTimeout();
        private static final int k = ViewConfiguration.getTapTimeout();
        private static final int l = ViewConfiguration.getDoubleTapTimeout();

        /* renamed from: a  reason: collision with root package name */
        final GestureDetector.OnGestureListener f460a;
        GestureDetector.OnDoubleTapListener b;
        boolean c;
        boolean d;
        MotionEvent e;
        private int f;
        private int g;
        private int h;
        private int i;
        private final Handler m;
        private boolean n;
        private boolean o;
        private boolean p;
        private MotionEvent q;
        private boolean r;
        private float s;
        private float t;
        private float u;
        private float v;
        private boolean w;
        private VelocityTracker x;

        /* compiled from: GestureDetectorCompat.java */
        /* loaded from: classes.dex */
        private class a extends Handler {
            a() {
            }

            a(Handler handler) {
                super(handler.getLooper());
            }

            @Override // android.os.Handler
            public void handleMessage(Message message) {
                switch (message.what) {
                    case 1:
                        b.this.f460a.onShowPress(b.this.e);
                        return;
                    case 2:
                        b.this.a();
                        return;
                    case 3:
                        if (b.this.b != null) {
                            if (!b.this.c) {
                                b.this.b.onSingleTapConfirmed(b.this.e);
                                return;
                            } else {
                                b.this.d = true;
                                return;
                            }
                        }
                        return;
                    default:
                        throw new RuntimeException("Unknown message " + message);
                }
            }
        }

        public b(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            if (handler != null) {
                this.m = new a(handler);
            } else {
                this.m = new a();
            }
            this.f460a = onGestureListener;
            if (onGestureListener instanceof GestureDetector.OnDoubleTapListener) {
                a((GestureDetector.OnDoubleTapListener) onGestureListener);
            }
            a(context);
        }

        private void a(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            if (this.f460a == null) {
                throw new IllegalArgumentException("OnGestureListener must not be null");
            }
            this.w = true;
            ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
            int scaledTouchSlop = viewConfiguration.getScaledTouchSlop();
            int scaledDoubleTapSlop = viewConfiguration.getScaledDoubleTapSlop();
            this.h = viewConfiguration.getScaledMinimumFlingVelocity();
            this.i = viewConfiguration.getScaledMaximumFlingVelocity();
            this.f = scaledTouchSlop * scaledTouchSlop;
            this.g = scaledDoubleTapSlop * scaledDoubleTapSlop;
        }

        @Override // android.support.v4.view.e.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.b = onDoubleTapListener;
        }

        @Override // android.support.v4.view.e.a
        public void a(boolean z) {
            this.w = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:46:0x00eb  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0104  */
        @Override // android.support.v4.view.e.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean a(MotionEvent motionEvent) {
            boolean onFling;
            boolean z;
            boolean z2;
            int action = motionEvent.getAction();
            if (this.x == null) {
                this.x = VelocityTracker.obtain();
            }
            this.x.addMovement(motionEvent);
            boolean z3 = (action & 255) == 6;
            int b = z3 ? t.b(motionEvent) : -1;
            int pointerCount = motionEvent.getPointerCount();
            float f = 0.0f;
            float f2 = 0.0f;
            for (int i = 0; i < pointerCount; i++) {
                if (b != i) {
                    f2 += motionEvent.getX(i);
                    f += motionEvent.getY(i);
                }
            }
            int i2 = z3 ? pointerCount - 1 : pointerCount;
            float f3 = f2 / i2;
            float f4 = f / i2;
            switch (action & 255) {
                case 0:
                    if (this.b != null) {
                        boolean hasMessages = this.m.hasMessages(3);
                        if (hasMessages) {
                            this.m.removeMessages(3);
                        }
                        if (this.e != null && this.q != null && hasMessages && a(this.e, this.q, motionEvent)) {
                            this.r = true;
                            z2 = this.b.onDoubleTap(this.e) | false | this.b.onDoubleTapEvent(motionEvent);
                            this.s = f3;
                            this.u = f3;
                            this.t = f4;
                            this.v = f4;
                            if (this.e != null) {
                                this.e.recycle();
                            }
                            this.e = MotionEvent.obtain(motionEvent);
                            this.o = true;
                            this.p = true;
                            this.c = true;
                            this.n = false;
                            this.d = false;
                            if (this.w) {
                                this.m.removeMessages(2);
                                this.m.sendEmptyMessageAtTime(2, this.e.getDownTime() + k + j);
                            }
                            this.m.sendEmptyMessageAtTime(1, this.e.getDownTime() + k);
                            return z2 | this.f460a.onDown(motionEvent);
                        }
                        this.m.sendEmptyMessageDelayed(3, l);
                    }
                    z2 = false;
                    this.s = f3;
                    this.u = f3;
                    this.t = f4;
                    this.v = f4;
                    if (this.e != null) {
                    }
                    this.e = MotionEvent.obtain(motionEvent);
                    this.o = true;
                    this.p = true;
                    this.c = true;
                    this.n = false;
                    this.d = false;
                    if (this.w) {
                    }
                    this.m.sendEmptyMessageAtTime(1, this.e.getDownTime() + k);
                    return z2 | this.f460a.onDown(motionEvent);
                case 1:
                    this.c = false;
                    MotionEvent obtain = MotionEvent.obtain(motionEvent);
                    if (this.r) {
                        onFling = this.b.onDoubleTapEvent(motionEvent) | false;
                    } else if (this.n) {
                        this.m.removeMessages(3);
                        this.n = false;
                        onFling = false;
                    } else if (this.o) {
                        onFling = this.f460a.onSingleTapUp(motionEvent);
                        if (this.d && this.b != null) {
                            this.b.onSingleTapConfirmed(motionEvent);
                        }
                    } else {
                        VelocityTracker velocityTracker = this.x;
                        int pointerId = motionEvent.getPointerId(0);
                        velocityTracker.computeCurrentVelocity(1000, this.i);
                        float b2 = ag.b(velocityTracker, pointerId);
                        float a2 = ag.a(velocityTracker, pointerId);
                        onFling = (Math.abs(b2) > ((float) this.h) || Math.abs(a2) > ((float) this.h)) ? this.f460a.onFling(this.e, motionEvent, a2, b2) : false;
                    }
                    if (this.q != null) {
                        this.q.recycle();
                    }
                    this.q = obtain;
                    if (this.x != null) {
                        this.x.recycle();
                        this.x = null;
                    }
                    this.r = false;
                    this.d = false;
                    this.m.removeMessages(1);
                    this.m.removeMessages(2);
                    return onFling;
                case 2:
                    if (this.n) {
                        return false;
                    }
                    float f5 = this.s - f3;
                    float f6 = this.t - f4;
                    if (this.r) {
                        return false | this.b.onDoubleTapEvent(motionEvent);
                    }
                    if (!this.o) {
                        if (Math.abs(f5) < 1.0f && Math.abs(f6) < 1.0f) {
                            return false;
                        }
                        boolean onScroll = this.f460a.onScroll(this.e, motionEvent, f5, f6);
                        this.s = f3;
                        this.t = f4;
                        return onScroll;
                    }
                    int i3 = (int) (f3 - this.u);
                    int i4 = (int) (f4 - this.v);
                    int i5 = (i3 * i3) + (i4 * i4);
                    if (i5 > this.f) {
                        z = this.f460a.onScroll(this.e, motionEvent, f5, f6);
                        this.s = f3;
                        this.t = f4;
                        this.o = false;
                        this.m.removeMessages(3);
                        this.m.removeMessages(1);
                        this.m.removeMessages(2);
                    } else {
                        z = false;
                    }
                    if (i5 > this.f) {
                        this.p = false;
                    }
                    return z;
                case 3:
                    b();
                    return false;
                case 4:
                default:
                    return false;
                case 5:
                    this.s = f3;
                    this.u = f3;
                    this.t = f4;
                    this.v = f4;
                    c();
                    return false;
                case 6:
                    this.s = f3;
                    this.u = f3;
                    this.t = f4;
                    this.v = f4;
                    this.x.computeCurrentVelocity(1000, this.i);
                    int b3 = t.b(motionEvent);
                    int pointerId2 = motionEvent.getPointerId(b3);
                    float a3 = ag.a(this.x, pointerId2);
                    float b4 = ag.b(this.x, pointerId2);
                    for (int i6 = 0; i6 < pointerCount; i6++) {
                        if (i6 != b3) {
                            int pointerId3 = motionEvent.getPointerId(i6);
                            if ((ag.b(this.x, pointerId3) * b4) + (ag.a(this.x, pointerId3) * a3) < BitmapDescriptorFactory.HUE_RED) {
                                this.x.clear();
                                return false;
                            }
                        }
                    }
                    return false;
            }
        }

        private void b() {
            this.m.removeMessages(1);
            this.m.removeMessages(2);
            this.m.removeMessages(3);
            this.x.recycle();
            this.x = null;
            this.r = false;
            this.c = false;
            this.o = false;
            this.p = false;
            this.d = false;
            if (this.n) {
                this.n = false;
            }
        }

        private void c() {
            this.m.removeMessages(1);
            this.m.removeMessages(2);
            this.m.removeMessages(3);
            this.r = false;
            this.o = false;
            this.p = false;
            this.d = false;
            if (this.n) {
                this.n = false;
            }
        }

        private boolean a(MotionEvent motionEvent, MotionEvent motionEvent2, MotionEvent motionEvent3) {
            if (this.p && motionEvent3.getEventTime() - motionEvent2.getEventTime() <= l) {
                int x = ((int) motionEvent.getX()) - ((int) motionEvent3.getX());
                int y = ((int) motionEvent.getY()) - ((int) motionEvent3.getY());
                return (x * x) + (y * y) < this.g;
            }
            return false;
        }

        void a() {
            this.m.removeMessages(3);
            this.d = false;
            this.n = true;
            this.f460a.onLongPress(this.e);
        }
    }

    /* compiled from: GestureDetectorCompat.java */
    /* loaded from: classes.dex */
    static class c implements a {

        /* renamed from: a  reason: collision with root package name */
        private final GestureDetector f462a;

        public c(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
            this.f462a = new GestureDetector(context, onGestureListener, handler);
        }

        @Override // android.support.v4.view.e.a
        public boolean a(MotionEvent motionEvent) {
            return this.f462a.onTouchEvent(motionEvent);
        }

        @Override // android.support.v4.view.e.a
        public void a(boolean z) {
            this.f462a.setIsLongpressEnabled(z);
        }

        @Override // android.support.v4.view.e.a
        public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
            this.f462a.setOnDoubleTapListener(onDoubleTapListener);
        }
    }

    public e(Context context, GestureDetector.OnGestureListener onGestureListener) {
        this(context, onGestureListener, null);
    }

    public e(Context context, GestureDetector.OnGestureListener onGestureListener, Handler handler) {
        if (Build.VERSION.SDK_INT > 17) {
            this.f459a = new c(context, onGestureListener, handler);
        } else {
            this.f459a = new b(context, onGestureListener, handler);
        }
    }

    public boolean a(MotionEvent motionEvent) {
        return this.f459a.a(motionEvent);
    }

    public void a(boolean z) {
        this.f459a.a(z);
    }

    public void a(GestureDetector.OnDoubleTapListener onDoubleTapListener) {
        this.f459a.a(onDoubleTapListener);
    }
}
