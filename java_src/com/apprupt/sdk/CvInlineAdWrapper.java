package com.apprupt.sdk;

import android.content.Context;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.RelativeLayout;
import com.apprupt.sdk.CvCloseButton;
import com.apprupt.sdk.Logger;
import com.apprupt.sdk.MRAIDView;
import com.apprupt.sdk.adview.CloseButtonPosition;
import com.apprupt.sdk.adview.ExpandProperties;
import com.apprupt.sdk.adview.OrientationProperties;
import com.apprupt.sdk.mediation.Adapter;
import com.apprupt.sdk.mediation.InlineAdWrapper;
import com.apprupt.sdk.mediation.Mediator;
import com.apprupt.sdk.mediation.Size;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes.dex */
public class CvInlineAdWrapper extends CvAdWrapper implements InlineAdWrapper {
    private final Logger.log b;
    private MRAIDView c;
    private MRAIDRelativeLayout d;
    private InlineAdWrapper.Listener e;
    private CvCloseButton f;
    private CvExpandActivity g;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MRAIDRelativeLayout extends RelativeLayout {
        private Size b;
        private boolean c;
        private Timer d;
        private int e;
        private Runnable f;

        public MRAIDRelativeLayout(Context context) {
            super(context);
            this.b = new Size(1, 320, 50);
            this.c = false;
            this.d = null;
            this.e = 0;
            this.f = new AnonymousClass1();
            setDescendantFocusability(262144);
            setFocusable(false);
            setFocusableInTouchMode(false);
        }

        @Override // android.widget.RelativeLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            ViewParent parent = getParent();
            if (parent != null) {
                ((View) parent).getWidth();
            }
            Size.Computed a2 = this.b.a(getContext(), View.MeasureSpec.getSize(i), View.MeasureSpec.getSize(i2), false);
            setMeasuredDimension(a2.f1998a, a2.b);
            ViewGroup.LayoutParams layoutParams = getLayoutParams();
            if (layoutParams != null) {
                layoutParams.width = this.b.a(32) ? -1 : a2.f1998a;
                layoutParams.height = a2.b;
            }
            setLayoutParams(layoutParams);
            boolean z = (CvInlineAdWrapper.this.c == null || CvInlineAdWrapper.this.c.a() == MRAIDView.MraidState.EXPANDED || !equals(CvInlineAdWrapper.this.c.getParent())) ? false : true;
            if (z) {
                CvInlineAdWrapper.this.c.f1918a = true;
                ViewGroup.LayoutParams layoutParams2 = CvInlineAdWrapper.this.c.getLayoutParams();
                if (layoutParams2 != null) {
                    layoutParams2.width = a2.f1998a;
                    layoutParams2.height = a2.b;
                    CvInlineAdWrapper.this.c.setLayoutParams(layoutParams2);
                }
            }
            super.onMeasure(i, i2);
            ViewParent parent2 = getParent();
            if (Build.VERSION.SDK_INT < 23 && z && !this.c && parent2 != null && !(parent2 instanceof AdView)) {
                CvViewHelper.a(this.f);
            }
            this.c = false;
        }

        /* renamed from: com.apprupt.sdk.CvInlineAdWrapper$MRAIDRelativeLayout$1  reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            AnonymousClass1() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (MRAIDRelativeLayout.this.d != null) {
                    MRAIDRelativeLayout.this.d.cancel();
                    MRAIDRelativeLayout.this.d = null;
                }
                MRAIDRelativeLayout.this.d = new Timer();
                MRAIDRelativeLayout.this.d.schedule(new TimerTask() { // from class: com.apprupt.sdk.CvInlineAdWrapper.MRAIDRelativeLayout.1.1
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.MRAIDRelativeLayout.1.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MRAIDRelativeLayout.this.d = null;
                                MRAIDRelativeLayout.this.c = true;
                                MRAIDRelativeLayout.this.requestLayout();
                                MRAIDRelativeLayout.this.invalidate();
                                CvInlineAdWrapper.this.b.d("REPEATING MEASUREMENT!!!!!!!!!!!!!!");
                            }
                        }, true);
                    }
                }, 300L);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CvInlineAdWrapper(Adapter adapter, CvMediator cvMediator) {
        super(adapter, cvMediator);
        this.b = Logger.a("InlineAdWrapper");
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        a((InlineAdWrapper.Listener) cvMediator.g());
    }

    @Override // com.apprupt.sdk.CvAdWrapper
    void l() {
        m().b(this);
    }

    @Override // com.apprupt.sdk.mediation.InlineAdWrapper
    public boolean a() {
        return this.c.c();
    }

    public Size p() {
        return n();
    }

    @Override // com.apprupt.sdk.mediation.InlineAdWrapper
    public void a(final Runnable runnable) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.1
            @Override // java.lang.Runnable
            public void run() {
                Context b = CvInlineAdWrapper.this.m().b();
                if (b instanceof CvContext) {
                    b = ((CvContext) b).getBaseContext();
                }
                CvInlineAdWrapper.this.c = new MRAIDView(b, CvInlineAdWrapper.this, false, new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CvInlineAdWrapper.this.b(runnable);
                    }
                });
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(Runnable runnable) {
        this.d = new MRAIDRelativeLayout(m().b());
        this.d.addView(this.c);
        a(p());
        runnable.run();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.apprupt.sdk.CvInlineAdWrapper$2  reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Size f1821a;

        AnonymousClass2(Size size) {
            this.f1821a = size;
        }

        @Override // java.lang.Runnable
        public void run() {
            CvInlineAdWrapper.this.d.b = this.f1821a;
            CvInlineAdWrapper.this.d.requestLayout();
            CvInlineAdWrapper.this.d.invalidate();
            new Timer().schedule(new TimerTask() { // from class: com.apprupt.sdk.CvInlineAdWrapper.2.1
                @Override // java.util.TimerTask, java.lang.Runnable
                public void run() {
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.2.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            ViewParent parent = CvInlineAdWrapper.this.d.getParent();
                            if (parent != null && (parent instanceof AdView)) {
                                ((AdView) parent).requestLayout();
                                ((AdView) parent).invalidate();
                            }
                        }
                    }, true);
                }
            }, 300L);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.apprupt.sdk.CvAdWrapper
    public void a(Size size) {
        CvViewHelper.a(new AnonymousClass2(size), true);
    }

    @Override // com.apprupt.sdk.mediation.InlineAdWrapper
    public void b() {
        try {
            if (this.g != null) {
                this.g.finish();
            }
        } catch (Exception e) {
        }
        this.e = null;
        this.c.b();
    }

    @Override // com.apprupt.sdk.mediation.InlineAdWrapper
    public View c() {
        return this.d;
    }

    public void a(InlineAdWrapper.Listener listener) {
        this.e = listener;
    }

    @Override // com.apprupt.sdk.mediation.InlineAdWrapper
    public InlineAdWrapper.Listener d() {
        return this.e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void c(final Size size) {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.3
            @Override // java.lang.Runnable
            public void run() {
                CvInlineAdWrapper.this.d.b = size;
                try {
                    ((ViewGroup) CvInlineAdWrapper.this.c.getParent()).removeView(CvInlineAdWrapper.this.c);
                    CvInlineAdWrapper.this.d.addView(CvInlineAdWrapper.this.c);
                } catch (Exception e) {
                }
                try {
                    if (CvInlineAdWrapper.this.g != null) {
                        ((CvContext) CvInlineAdWrapper.this.c.getContext()).b();
                        CvInlineAdWrapper.this.g.finish();
                    }
                    CvInlineAdWrapper.this.g = null;
                } catch (Exception e2) {
                }
                CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CvInlineAdWrapper.this.a(size);
                    }
                });
            }
        }, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CloseButtonPosition closeButtonPosition, final Runnable runnable) {
        CvCloseButton.Listener listener = new CvCloseButton.Listener() { // from class: com.apprupt.sdk.CvInlineAdWrapper.4
            @Override // com.apprupt.sdk.CvCloseButton.Listener
            public void a() {
                runnable.run();
            }
        };
        if (this.f == null) {
            this.f = new CvCloseButton(m().b(), closeButtonPosition);
        } else {
            this.f.a(closeButtonPosition);
        }
        this.f.a(listener);
        this.d.addView(this.f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q() {
        try {
            if (this.f != null) {
                this.f.a((CvCloseButton.Listener) null);
                this.d.removeView(this.f);
            }
        } catch (Exception e) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(CvExpandActivity cvExpandActivity) {
        this.g = cvExpandActivity;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void r() {
        CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvInlineAdWrapper.5
            @Override // java.lang.Runnable
            public void run() {
                CvInlineAdWrapper.this.q();
                CvExpandActivity.a(CvInlineAdWrapper.this);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public View s() {
        try {
            ViewParent parent = this.c.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.c);
            }
        } catch (Exception e) {
        }
        return this.c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExpandProperties t() {
        return this.c.f();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OrientationProperties u() {
        return this.c.g();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Runnable v() {
        return this.c.e();
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public void a(boolean z) {
        if (this.g != null) {
            this.g.a(!z);
        }
    }

    @Override // com.apprupt.sdk.mediation.AdWrapper
    public void a(int i) {
        if (this.g != null) {
            this.g.a(i);
        }
    }

    @Override // com.apprupt.sdk.CvAdWrapper, com.apprupt.sdk.mediation.AdWrapper
    public void a(Mediator mediator) {
        super.a(mediator);
        a((InlineAdWrapper.Listener) m().g());
    }
}
