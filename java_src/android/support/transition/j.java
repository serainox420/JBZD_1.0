package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.support.transition.y;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: FadePort.java */
@TargetApi(14)
/* loaded from: classes.dex */
class j extends an {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f179a = false;
    private int b;

    public j() {
        this(3);
    }

    public j(int i) {
        this.b = i;
    }

    private Animator a(View view, float f, float f2, AnimatorListenerAdapter animatorListenerAdapter) {
        ObjectAnimator objectAnimator = null;
        if (f == f2) {
            if (animatorListenerAdapter != null) {
                animatorListenerAdapter.onAnimationEnd(null);
            }
        } else {
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", f, f2);
            if (f179a) {
                Log.d("Fade", "Created animator " + objectAnimator);
            }
            if (animatorListenerAdapter != null) {
                objectAnimator.addListener(animatorListenerAdapter);
            }
        }
        return objectAnimator;
    }

    private void d(ae aeVar) {
        int[] iArr = new int[2];
        aeVar.b.getLocationOnScreen(iArr);
        aeVar.f165a.put("android:fade:screenX", Integer.valueOf(iArr[0]));
        aeVar.f165a.put("android:fade:screenY", Integer.valueOf(iArr[1]));
    }

    @Override // android.support.transition.an, android.support.transition.y
    public void a(ae aeVar) {
        super.a(aeVar);
        d(aeVar);
    }

    @Override // android.support.transition.an
    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        if ((this.b & 1) != 1 || aeVar2 == null) {
            return null;
        }
        final View view = aeVar2.b;
        if (f179a) {
            Log.d("Fade", "Fade.onAppear: startView, startVis, endView, endVis = " + (aeVar != null ? aeVar.b : null) + ", " + i + ", " + view + ", " + i2);
        }
        view.setAlpha(BitmapDescriptorFactory.HUE_RED);
        a(new y.c() { // from class: android.support.transition.j.1

            /* renamed from: a  reason: collision with root package name */
            boolean f180a = false;
            float b;

            @Override // android.support.transition.y.c, android.support.transition.y.b
            public void a(y yVar) {
                if (!this.f180a) {
                    view.setAlpha(1.0f);
                }
            }

            @Override // android.support.transition.y.c, android.support.transition.y.b
            public void b(y yVar) {
                this.b = view.getAlpha();
                view.setAlpha(1.0f);
            }

            @Override // android.support.transition.y.c, android.support.transition.y.b
            public void c(y yVar) {
                view.setAlpha(this.b);
            }
        });
        return a(view, BitmapDescriptorFactory.HUE_RED, 1.0f, null);
    }

    @Override // android.support.transition.an
    public Animator b(final ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, final int i2) {
        final View view;
        final View view2;
        View view3;
        if ((this.b & 2) != 2) {
            return null;
        }
        final View view4 = aeVar != null ? aeVar.b : null;
        View view5 = aeVar2 != null ? aeVar2.b : null;
        if (f179a) {
            Log.d("Fade", "Fade.onDisappear: startView, startVis, endView, endVis = " + view4 + ", " + i + ", " + view5 + ", " + i2);
        }
        if (view5 == null || view5.getParent() == null) {
            if (view5 != null) {
                view = null;
                view2 = view5;
                view4 = view5;
            } else {
                if (view4 != null) {
                    if (view4.getParent() == null) {
                        view = null;
                        view2 = view4;
                    } else if ((view4.getParent() instanceof View) && view4.getParent().getParent() == null) {
                        int id = ((View) view4.getParent()).getId();
                        if (id == -1 || viewGroup.findViewById(id) == null || !this.q) {
                            view3 = null;
                            view4 = null;
                        } else {
                            view3 = view4;
                        }
                        view = null;
                        view2 = view3;
                    }
                }
                view = null;
                view2 = null;
                view4 = null;
            }
        } else if (i2 == 4) {
            view = view5;
            view2 = null;
            view4 = view5;
        } else if (view4 == view5) {
            view = view5;
            view2 = null;
            view4 = view5;
        } else {
            view = null;
            view2 = view4;
        }
        if (view2 != null) {
            int intValue = ((Integer) aeVar.f165a.get("android:fade:screenX")).intValue();
            int intValue2 = ((Integer) aeVar.f165a.get("android:fade:screenY")).intValue();
            int[] iArr = new int[2];
            viewGroup.getLocationOnScreen(iArr);
            android.support.v4.view.ai.f(view2, (intValue - iArr[0]) - view2.getLeft());
            android.support.v4.view.ai.e(view2, (intValue2 - iArr[1]) - view2.getTop());
            ag.a(viewGroup).a(view2);
            return a(view4, 1.0f, BitmapDescriptorFactory.HUE_RED, new AnimatorListenerAdapter() { // from class: android.support.transition.j.2
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    view4.setAlpha(1.0f);
                    if (view != null) {
                        view.setVisibility(i2);
                    }
                    if (view2 != null) {
                        ag.a(viewGroup).b(view2);
                    }
                }
            });
        } else if (view == null) {
            return null;
        } else {
            view.setVisibility(0);
            return a(view4, 1.0f, BitmapDescriptorFactory.HUE_RED, new AnimatorListenerAdapter() { // from class: android.support.transition.j.3

                /* renamed from: a  reason: collision with root package name */
                boolean f182a = false;
                float b = -1.0f;

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationCancel(Animator animator) {
                    this.f182a = true;
                    if (this.b >= BitmapDescriptorFactory.HUE_RED) {
                        view4.setAlpha(this.b);
                    }
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animator) {
                    if (!this.f182a) {
                        view4.setAlpha(1.0f);
                    }
                    if (view != null && !this.f182a) {
                        view.setVisibility(i2);
                    }
                    if (view2 != null) {
                        ag.a(viewGroup).a(view2);
                    }
                }
            });
        }
    }
}
