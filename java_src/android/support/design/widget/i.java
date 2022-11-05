package android.support.design.widget;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.TargetApi;
import android.os.Build;
import android.support.design.widget.j;
import android.support.design.widget.r;
import android.support.v4.view.ai;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: FloatingActionButtonIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class i extends h {
    private float q;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(VisibilityAwareImageButton visibilityAwareImageButton, n nVar, r.d dVar) {
        super(visibilityAwareImageButton, nVar, dVar);
        this.q = this.n.getRotation();
    }

    @Override // android.support.design.widget.j
    boolean d() {
        return true;
    }

    @Override // android.support.design.widget.j
    void e() {
        float rotation = this.n.getRotation();
        if (this.q != rotation) {
            this.q = rotation;
            p();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void a(final j.a aVar, final boolean z) {
        if (!n()) {
            this.n.animate().cancel();
            if (o()) {
                this.c = 1;
                this.n.animate().scaleX(BitmapDescriptorFactory.HUE_RED).scaleY(BitmapDescriptorFactory.HUE_RED).alpha(BitmapDescriptorFactory.HUE_RED).setDuration(200L).setInterpolator(a.c).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.i.1
                    private boolean d;

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        i.this.n.a(0, z);
                        this.d = false;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                        this.d = true;
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        i.this.c = 0;
                        if (!this.d) {
                            i.this.n.a(z ? 8 : 4, z);
                            if (aVar != null) {
                                aVar.b();
                            }
                        }
                    }
                });
                return;
            }
            this.n.a(z ? 8 : 4, z);
            if (aVar != null) {
                aVar.b();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.design.widget.h, android.support.design.widget.j
    public void b(final j.a aVar, final boolean z) {
        if (!m()) {
            this.n.animate().cancel();
            if (o()) {
                this.c = 2;
                if (this.n.getVisibility() != 0) {
                    this.n.setAlpha(BitmapDescriptorFactory.HUE_RED);
                    this.n.setScaleY(BitmapDescriptorFactory.HUE_RED);
                    this.n.setScaleX(BitmapDescriptorFactory.HUE_RED);
                }
                this.n.animate().scaleX(1.0f).scaleY(1.0f).alpha(1.0f).setDuration(200L).setInterpolator(a.d).setListener(new AnimatorListenerAdapter() { // from class: android.support.design.widget.i.2
                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                        i.this.n.a(0, z);
                    }

                    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        i.this.c = 0;
                        if (aVar != null) {
                            aVar.a();
                        }
                    }
                });
                return;
            }
            this.n.a(0, z);
            this.n.setAlpha(1.0f);
            this.n.setScaleY(1.0f);
            this.n.setScaleX(1.0f);
            if (aVar != null) {
                aVar.a();
            }
        }
    }

    private boolean o() {
        return ai.F(this.n) && !this.n.isInEditMode();
    }

    private void p() {
        if (Build.VERSION.SDK_INT == 19) {
            if (this.q % 90.0f != BitmapDescriptorFactory.HUE_RED) {
                if (this.n.getLayerType() != 1) {
                    this.n.setLayerType(1, null);
                }
            } else if (this.n.getLayerType() != 0) {
                this.n.setLayerType(0, null);
            }
        }
        if (this.f113a != null) {
            this.f113a.a(-this.q);
        }
        if (this.f != null) {
            this.f.b(-this.q);
        }
    }
}
