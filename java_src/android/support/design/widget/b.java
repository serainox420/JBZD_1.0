package android.support.design.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.RestrictTo;
import android.support.design.R;
import android.support.design.widget.CoordinatorLayout;
import android.support.design.widget.SwipeDismissBehavior;
import android.support.design.widget.b;
import android.support.design.widget.o;
import android.support.v4.view.ai;
import android.support.v4.view.be;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.FrameLayout;
import com.facebook.imagepipeline.common.RotationOptions;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.List;
/* compiled from: BaseTransientBottomBar.java */
/* loaded from: classes.dex */
public abstract class b<B extends b<B>> {

    /* renamed from: a  reason: collision with root package name */
    static final Handler f98a = new Handler(Looper.getMainLooper(), new Handler.Callback() { // from class: android.support.design.widget.b.1
        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    ((b) message.obj).b();
                    return true;
                case 1:
                    ((b) message.obj).b(message.arg1);
                    return true;
                default:
                    return false;
            }
        }
    });
    final f b;
    final o.a c;
    private final ViewGroup d;
    private final c e;
    private List<a<B>> f;
    private final AccessibilityManager g;

    /* compiled from: BaseTransientBottomBar.java */
    /* loaded from: classes.dex */
    public interface c {
        void a(int i, int i2);

        void b(int i, int i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseTransientBottomBar.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public interface d {
        void a(View view);

        void b(View view);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseTransientBottomBar.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public interface e {
        void a(View view, int i, int i2, int i3, int i4);
    }

    /* compiled from: BaseTransientBottomBar.java */
    /* loaded from: classes.dex */
    public static abstract class a<B> {
        public void a(B b, int i) {
        }

        public void a(B b) {
        }
    }

    void a(int i) {
        o.a().a(this.c, i);
    }

    public boolean a() {
        return o.a().e(this.c);
    }

    final void b() {
        if (this.b.getParent() == null) {
            ViewGroup.LayoutParams layoutParams = this.b.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.c) {
                CoordinatorLayout.c cVar = (CoordinatorLayout.c) layoutParams;
                C0006b c0006b = new C0006b();
                c0006b.a(0.1f);
                c0006b.b(0.6f);
                c0006b.a(0);
                c0006b.a(new SwipeDismissBehavior.a() { // from class: android.support.design.widget.b.3
                    @Override // android.support.design.widget.SwipeDismissBehavior.a
                    public void a(View view) {
                        view.setVisibility(8);
                        b.this.a(0);
                    }

                    @Override // android.support.design.widget.SwipeDismissBehavior.a
                    public void a(int i) {
                        switch (i) {
                            case 0:
                                o.a().d(b.this.c);
                                return;
                            case 1:
                            case 2:
                                o.a().c(b.this.c);
                                return;
                            default:
                                return;
                        }
                    }
                });
                cVar.a(c0006b);
                cVar.g = 80;
            }
            this.d.addView(this.b);
        }
        this.b.setOnAttachStateChangeListener(new d() { // from class: android.support.design.widget.b.4
            @Override // android.support.design.widget.b.d
            public void a(View view) {
            }

            @Override // android.support.design.widget.b.d
            public void b(View view) {
                if (b.this.a()) {
                    b.f98a.post(new Runnable() { // from class: android.support.design.widget.b.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            b.this.c(3);
                        }
                    });
                }
            }
        });
        if (ai.F(this.b)) {
            if (e()) {
                c();
                return;
            } else {
                d();
                return;
            }
        }
        this.b.setOnLayoutChangeListener(new e() { // from class: android.support.design.widget.b.5
            @Override // android.support.design.widget.b.e
            public void a(View view, int i, int i2, int i3, int i4) {
                b.this.b.setOnLayoutChangeListener(null);
                if (b.this.e()) {
                    b.this.c();
                } else {
                    b.this.d();
                }
            }
        });
    }

    void c() {
        if (Build.VERSION.SDK_INT >= 14) {
            ai.b(this.b, this.b.getHeight());
            ai.r(this.b).c(BitmapDescriptorFactory.HUE_RED).a(android.support.design.widget.a.b).a(250L).a(new be() { // from class: android.support.design.widget.b.6
                @Override // android.support.v4.view.be, android.support.v4.view.bd
                public void a(View view) {
                    b.this.e.a(70, RotationOptions.ROTATE_180);
                }

                @Override // android.support.v4.view.be, android.support.v4.view.bd
                public void b(View view) {
                    b.this.d();
                }
            }).c();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.b.getContext(), R.anim.design_snackbar_in);
        loadAnimation.setInterpolator(android.support.design.widget.a.b);
        loadAnimation.setDuration(250L);
        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.design.widget.b.7
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                b.this.d();
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.b.startAnimation(loadAnimation);
    }

    private void d(final int i) {
        if (Build.VERSION.SDK_INT >= 14) {
            ai.r(this.b).c(this.b.getHeight()).a(android.support.design.widget.a.b).a(250L).a(new be() { // from class: android.support.design.widget.b.8
                @Override // android.support.v4.view.be, android.support.v4.view.bd
                public void a(View view) {
                    b.this.e.b(0, RotationOptions.ROTATE_180);
                }

                @Override // android.support.v4.view.be, android.support.v4.view.bd
                public void b(View view) {
                    b.this.c(i);
                }
            }).c();
            return;
        }
        Animation loadAnimation = AnimationUtils.loadAnimation(this.b.getContext(), R.anim.design_snackbar_out);
        loadAnimation.setInterpolator(android.support.design.widget.a.b);
        loadAnimation.setDuration(250L);
        loadAnimation.setAnimationListener(new Animation.AnimationListener() { // from class: android.support.design.widget.b.2
            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationEnd(Animation animation) {
                b.this.c(i);
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationStart(Animation animation) {
            }

            @Override // android.view.animation.Animation.AnimationListener
            public void onAnimationRepeat(Animation animation) {
            }
        });
        this.b.startAnimation(loadAnimation);
    }

    final void b(int i) {
        if (e() && this.b.getVisibility() == 0) {
            d(i);
        } else {
            c(i);
        }
    }

    void d() {
        o.a().b(this.c);
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                this.f.get(size).a(this);
            }
        }
    }

    void c(int i) {
        o.a().a(this.c);
        if (this.f != null) {
            for (int size = this.f.size() - 1; size >= 0; size--) {
                this.f.get(size).a(this, i);
            }
        }
        if (Build.VERSION.SDK_INT < 11) {
            this.b.setVisibility(8);
        }
        ViewParent parent = this.b.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.b);
        }
    }

    boolean e() {
        return !this.g.isEnabled();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseTransientBottomBar.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class f extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private e f108a;
        private d b;

        /* JADX INFO: Access modifiers changed from: package-private */
        public f(Context context) {
            this(context, null);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public f(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.SnackbarLayout);
            if (obtainStyledAttributes.hasValue(R.styleable.SnackbarLayout_elevation)) {
                ai.h(this, obtainStyledAttributes.getDimensionPixelSize(R.styleable.SnackbarLayout_elevation, 0));
            }
            obtainStyledAttributes.recycle();
            setClickable(true);
        }

        @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
        protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
            super.onLayout(z, i, i2, i3, i4);
            if (this.f108a != null) {
                this.f108a.a(this, i, i2, i3, i4);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onAttachedToWindow() {
            super.onAttachedToWindow();
            if (this.b != null) {
                this.b.a(this);
            }
            ai.w(this);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onDetachedFromWindow() {
            super.onDetachedFromWindow();
            if (this.b != null) {
                this.b.b(this);
            }
        }

        void setOnLayoutChangeListener(e eVar) {
            this.f108a = eVar;
        }

        void setOnAttachStateChangeListener(d dVar) {
            this.b = dVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseTransientBottomBar.java */
    /* renamed from: android.support.design.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public final class C0006b extends SwipeDismissBehavior<f> {
        C0006b() {
        }

        @Override // android.support.design.widget.SwipeDismissBehavior
        public boolean a(View view) {
            return view instanceof f;
        }

        @Override // android.support.design.widget.SwipeDismissBehavior, android.support.design.widget.CoordinatorLayout.Behavior
        public boolean a(CoordinatorLayout coordinatorLayout, f fVar, MotionEvent motionEvent) {
            switch (motionEvent.getActionMasked()) {
                case 0:
                    if (coordinatorLayout.a(fVar, (int) motionEvent.getX(), (int) motionEvent.getY())) {
                        o.a().c(b.this.c);
                        break;
                    }
                    break;
                case 1:
                case 3:
                    o.a().d(b.this.c);
                    break;
            }
            return super.a(coordinatorLayout, (CoordinatorLayout) fVar, motionEvent);
        }
    }
}
