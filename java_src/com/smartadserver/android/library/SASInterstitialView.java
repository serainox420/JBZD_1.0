package com.smartadserver.android.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.smartadserver.android.library.exception.SASAdDisplayException;
import com.smartadserver.android.library.g.c;
import com.smartadserver.android.library.model.SASAdElement;
import com.smartadserver.android.library.ui.SASAdView;
import java.util.Timer;
import java.util.TimerTask;
/* loaded from: classes3.dex */
public class SASInterstitialView extends SASAdView {
    private static final String s = SASInterstitialView.class.getSimpleName();
    private Timer r;
    private SASAdView.d t;
    private RelativeLayout u;

    public SASInterstitialView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        d(context);
    }

    private void d(Context context) {
        this.t = new SASAdView.d() { // from class: com.smartadserver.android.library.SASInterstitialView.1
            @Override // com.smartadserver.android.library.ui.SASAdView.d
            public synchronized void onStateChanged(SASAdView.i iVar) {
                if (iVar.a() == 0) {
                    notifyAll();
                }
            }
        };
        a(this.t);
        this.u = new RelativeLayout(context);
        this.u.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
    }

    /* loaded from: classes3.dex */
    private class a implements SASAdView.g {

        /* renamed from: a  reason: collision with root package name */
        SASAdView.a f5310a;

        public a(SASAdView.a aVar) {
            this.f5310a = aVar;
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.a
        public void adLoadingCompleted(SASAdElement sASAdElement) {
            int adDuration;
            c.a(SASInterstitialView.s, "adLoadingCompleted in interstitial");
            if (SASInterstitialView.this.getExpandParentView() == null) {
                if (this.f5310a != null) {
                    this.f5310a.adLoadingFailed(new SASAdDisplayException("Interstitial view could not be displayed. Ensure either that the parent Activity is passed to its constructor or that this interstitial is part of the UI hierarchy "));
                    return;
                }
                return;
            }
            RuntimeException e = null;
            try {
                if (this.f5310a != null) {
                    this.f5310a.adLoadingCompleted(sASAdElement);
                }
            } catch (RuntimeException e2) {
                e = e2;
            }
            com.smartadserver.android.library.controller.mraid.a mRAIDController = SASInterstitialView.this.getMRAIDController();
            SASInterstitialView.this.a(new Runnable() { // from class: com.smartadserver.android.library.SASInterstitialView.a.1
                @Override // java.lang.Runnable
                public void run() {
                    SASInterstitialView.this.setVisibility(0);
                }
            });
            synchronized (SASInterstitialView.this.t) {
                if (mRAIDController != null) {
                    String state = mRAIDController.getState();
                    if (state != null && !"expanded".equals(state)) {
                        mRAIDController.expand();
                        try {
                            SASInterstitialView.this.t.wait();
                        } catch (InterruptedException e3) {
                            e3.printStackTrace();
                        }
                    }
                }
            }
            SASInterstitialView.this.c(SASInterstitialView.this.getLoaderView());
            if ("expanded".equals(mRAIDController.getState()) && (adDuration = sASAdElement.getAdDuration()) > 0) {
                SASInterstitialView.this.r = new Timer();
                SASInterstitialView.this.r.schedule(new TimerTask() { // from class: com.smartadserver.android.library.SASInterstitialView.a.2
                    @Override // java.util.TimerTask, java.lang.Runnable
                    public void run() {
                        if (!SASInterstitialView.this.q()) {
                            SASInterstitialView.this.a(new Runnable() { // from class: com.smartadserver.android.library.SASInterstitialView.a.2.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    SASInterstitialView.this.m();
                                }
                            });
                            SASInterstitialView.this.r.cancel();
                        }
                    }
                }, adDuration);
            }
            if (e != null) {
                throw e;
            }
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.a
        public void adLoadingFailed(Exception exc) {
            SASInterstitialView.this.c(SASInterstitialView.this.getLoaderView());
            if (this.f5310a != null) {
                this.f5310a.adLoadingFailed(exc);
            }
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.g
        public void a(SASAdElement sASAdElement) {
            if (this.f5310a instanceof SASAdView.g) {
                ((SASAdView.g) this.f5310a).a(sASAdElement);
            }
        }

        @Override // com.smartadserver.android.library.ui.SASAdView.g
        public void a(Exception exc) {
            if (this.f5310a instanceof SASAdView.g) {
                ((SASAdView.g) this.f5310a).a(exc);
            }
        }
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void a(String str, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, String str2, boolean z4) {
        super.a(str, i, i2, i3, i4, z, z2, z3, str2, false);
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void a() {
        super.a();
        n();
    }

    private void w() {
        if (this.r != null) {
            this.r.cancel();
            c.a(s, "cancel timer");
        }
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void b() {
        super.b();
        w();
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void c() {
        super.c();
        synchronized (this.t) {
            this.t.notifyAll();
        }
        w();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smartadserver.android.library.ui.SASAdView, android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(true, i, i2, i3, i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smartadserver.android.library.ui.SASAdView
    public void a(int i, String str, int i2, boolean z, String str2, SASAdView.a aVar, int i3, boolean z2, boolean z3) {
        super.a(i, str, i2, z, str2, new a(aVar), i3, z2, false);
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void a(final View view) {
        a(new Runnable() { // from class: com.smartadserver.android.library.SASInterstitialView.2
            @Override // java.lang.Runnable
            public void run() {
                FrameLayout expandParentView = SASInterstitialView.this.getExpandParentView();
                if (expandParentView != null && view != null) {
                    SASInterstitialView.this.u.addView(view);
                    int[] neededPadding = SASInterstitialView.this.getNeededPadding();
                    SASInterstitialView.this.u.setPadding(neededPadding[0], neededPadding[1], neededPadding[2], neededPadding[3]);
                    expandParentView.addView(SASInterstitialView.this.u);
                }
            }
        });
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void b(View view) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(View view) {
        if (view != null) {
            a(new Runnable() { // from class: com.smartadserver.android.library.SASInterstitialView.3
                @Override // java.lang.Runnable
                public void run() {
                    c.a(SASInterstitialView.s, "REMOVE INTERSTITIAL LOADER VIEW");
                    FrameLayout expandParentView = SASInterstitialView.this.getExpandParentView();
                    if (expandParentView != null && expandParentView.indexOfChild(SASInterstitialView.this.u) > -1) {
                        expandParentView.removeView(SASInterstitialView.this.u);
                        SASInterstitialView.this.u.removeAllViews();
                    }
                }
            });
        }
    }

    @Override // com.smartadserver.android.library.ui.SASAdView
    public void d() {
        super.d();
        synchronized (this.t) {
            this.t.notify();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smartadserver.android.library.ui.SASAdView
    public double e() {
        double e = super.e();
        SASAdElement currentAdElement = getCurrentAdElement();
        if (currentAdElement != null && currentAdElement.getSelectedMediationAd() != null) {
            String state = getMRAIDController().getState();
            if (state != null && "expanded".equals(state)) {
                return 1.0d;
            }
            return 0.0d;
        }
        return e;
    }
}
