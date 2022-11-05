package com.facebook.ads.internal.view.d.b;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.content.Context;
import android.os.Handler;
import com.facebook.ads.internal.g.r;
import com.facebook.ads.internal.g.s;
import com.facebook.ads.internal.view.d.a.q;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
@TargetApi(12)
/* loaded from: classes.dex */
public abstract class d extends m {
    private final Handler b;
    private final boolean c;
    private com.facebook.ads.internal.view.m d;
    private final s<com.facebook.ads.internal.view.d.a.h> e;
    private final s<com.facebook.ads.internal.view.d.a.j> f;
    private final s<q> g;

    /* renamed from: com.facebook.ads.internal.view.d.b.d$3  reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends s<q> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.facebook.ads.internal.view.d.b.d$3$1  reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 extends AnimatorListenerAdapter {
            AnonymousClass1() {
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                d.this.b.postDelayed(new Runnable() { // from class: com.facebook.ads.internal.view.d.b.d.3.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.animate().alpha(BitmapDescriptorFactory.HUE_RED).setDuration(500L).setListener(new AnimatorListenerAdapter() { // from class: com.facebook.ads.internal.view.d.b.d.3.1.1.1
                            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator2) {
                                d.this.setVisibility(8);
                            }
                        });
                    }
                }, 2000L);
            }
        }

        AnonymousClass3() {
        }

        @Override // com.facebook.ads.internal.g.s
        public Class<q> a() {
            return q.class;
        }

        @Override // com.facebook.ads.internal.g.s
        public void a(q qVar) {
            if (d.this.d != null && qVar.b().getAction() == 0) {
                d.this.b.removeCallbacksAndMessages(null);
                d.this.setVisibility(0);
                d.this.animate().alpha(1.0f).setDuration(500L).setListener(new AnonymousClass1());
            }
        }
    }

    public d(Context context) {
        this(context, false);
    }

    public d(Context context, boolean z) {
        super(context);
        this.e = new s<com.facebook.ads.internal.view.d.a.h>() { // from class: com.facebook.ads.internal.view.d.b.d.1
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.h> a() {
                return com.facebook.ads.internal.view.d.a.h.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.h hVar) {
                d.this.b.removeCallbacksAndMessages(null);
                d.this.clearAnimation();
                d.this.setAlpha(1.0f);
                d.this.setVisibility(0);
            }
        };
        this.f = new s<com.facebook.ads.internal.view.d.a.j>() { // from class: com.facebook.ads.internal.view.d.b.d.2
            @Override // com.facebook.ads.internal.g.s
            public Class<com.facebook.ads.internal.view.d.a.j> a() {
                return com.facebook.ads.internal.view.d.a.j.class;
            }

            @Override // com.facebook.ads.internal.g.s
            public void a(com.facebook.ads.internal.view.d.a.j jVar) {
                d.this.b.removeCallbacksAndMessages(null);
                d.this.clearAnimation();
                d.this.setAlpha(BitmapDescriptorFactory.HUE_RED);
                d.this.setVisibility(8);
            }
        };
        this.g = new AnonymousClass3();
        this.c = z;
        this.b = new Handler();
        if (!this.c) {
            setAlpha(BitmapDescriptorFactory.HUE_RED);
            setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.ads.internal.view.d.b.m
    public void a(com.facebook.ads.internal.view.m mVar) {
        if (!this.c) {
            mVar.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.e);
            mVar.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.f);
            mVar.getEventBus().a((r<s, com.facebook.ads.internal.g.q>) this.g);
            this.d = mVar;
        }
    }
}
