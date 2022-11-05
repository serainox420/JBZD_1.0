package com.smaato.soma;

import android.animation.Animator;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Build;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.smaato.soma.exception.RetrievingSDKVersionFailed;
import com.smaato.soma.exception.SettingToasterToGoneFailed;
import com.smaato.soma.exception.SettingToasterToVisibleFailed;
import com.smaato.soma.exception.ToasterBannerInitFailed;
import com.smaato.soma.internal.requests.settings.UserSettings;
/* compiled from: ToasterBanner.java */
/* loaded from: classes3.dex */
public class s extends RelativeLayout implements k {

    /* renamed from: a  reason: collision with root package name */
    private Context f5232a;
    private final View b;
    private com.smaato.soma.b.b c;
    private com.smaato.soma.b.c d;
    private boolean e;

    /* JADX INFO: Access modifiers changed from: private */
    public void c() throws ToasterBannerInitFailed {
        UserSettings userSettings;
        d dVar = null;
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.10
            });
            removeAllViews();
            this.c = new com.smaato.soma.b.b(this.f5232a);
            this.c.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.s.14
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    new l<Void>() { // from class: com.smaato.soma.s.14.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            s.this.b();
                            return null;
                        }
                    }.c();
                }
            });
            if (this.d != null) {
                userSettings = this.d.getUserSettings();
                dVar = this.d.getAdSettings();
            } else {
                userSettings = null;
            }
            this.d = new com.smaato.soma.b.c(this.f5232a, this);
            if (dVar != null && userSettings != null) {
                this.d.setAdSettings(dVar);
                this.d.setUserSettings(userSettings);
            }
            setBackgroundColor(0);
            this.c.setVisibility(8);
            this.d.setLayoutParams(new RelativeLayout.LayoutParams(-1, com.smaato.soma.internal.c.d.a().a(getContext())));
            setLayoutParams(new RelativeLayout.LayoutParams(-1, com.smaato.soma.internal.c.d.a().a(getContext()) + 20));
            addView(this.c);
            addView(this.d);
            this.c.bringToFront();
            if (this.b != null && getParent() == null) {
                ((ViewGroup) this.b).addView(this);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new ToasterBannerInitFailed(e2);
        }
    }

    @Override // com.smaato.soma.r
    public void a(final c cVar) {
        new l<Void>() { // from class: com.smaato.soma.s.15
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                s.this.d.a(cVar);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setLocationUpdateEnabled(final boolean z) {
        new l<Void>() { // from class: com.smaato.soma.s.16
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                s.this.d.setLocationUpdateEnabled(z);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public UserSettings getUserSettings() {
        return new l<UserSettings>() { // from class: com.smaato.soma.s.17
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public UserSettings b() throws Exception {
                return s.this.d.getUserSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setUserSettings(final UserSettings userSettings) {
        new l<Void>() { // from class: com.smaato.soma.s.18
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                s.this.d.setUserSettings(userSettings);
                return null;
            }
        }.c();
    }

    public int getBackgroundColor() {
        return new l<Integer>() { // from class: com.smaato.soma.s.1
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Integer b() throws Exception {
                return Integer.valueOf(s.this.d.getBackgroundColor());
            }
        }.c().intValue();
    }

    public void setBannerStateListener(final g gVar) {
        new l<Void>() { // from class: com.smaato.soma.s.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                s.this.d.setBannerStateListener(gVar);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public d getAdSettings() {
        return new l<d>() { // from class: com.smaato.soma.s.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public d b() throws Exception {
                return s.this.d.getAdSettings();
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void setAdSettings(final d dVar) {
        new l<Void>() { // from class: com.smaato.soma.s.4
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                s.this.d.setAdSettings(dVar);
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.i
    public void e() {
        new l<Void>() { // from class: com.smaato.soma.s.5
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (com.smaato.soma.internal.c.c.a().d()) {
                    s.this.c();
                    com.smaato.soma.internal.c.c.a().c();
                }
                s.this.b();
                s.this.d.e();
                System.gc();
                return null;
            }
        }.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ToasterBanner.java */
    /* renamed from: com.smaato.soma.s$7  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass7 extends l<Void> {
        AnonymousClass7() {
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            if (!s.this.g()) {
                s.this.d();
            } else {
                ((RelativeLayout.LayoutParams) s.this.d.getLayoutParams()).addRule(12);
                s.this.d.requestLayout();
                s.this.setVisibility(0);
                s.this.d.setVisibility(0);
                s.this.c.setVisibility(0);
                DisplayMetrics displayMetrics = new DisplayMetrics();
                ((WindowManager) s.this.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                int measuredHeight = displayMetrics.heightPixels - s.this.b.getMeasuredHeight();
                s.this.getLocationOnScreen(new int[2]);
                final int measuredHeight2 = (displayMetrics.heightPixels - s.this.getMeasuredHeight()) - measuredHeight;
                ObjectAnimator ofFloat = ObjectAnimator.ofFloat(s.this, "translationY", s.this.b.getMeasuredHeight(), (float) (measuredHeight2 - 20));
                ofFloat.setDuration(300L);
                ofFloat.start();
                ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.smaato.soma.s.7.1
                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationStart(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationRepeat(Animator animator) {
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationEnd(Animator animator) {
                        new l<Void>() { // from class: com.smaato.soma.s.7.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                ObjectAnimator ofFloat2 = ObjectAnimator.ofFloat(s.this, "translationY", (float) (measuredHeight2 - 20), measuredHeight2);
                                ofFloat2.setDuration(100L);
                                ofFloat2.start();
                                return null;
                            }
                        }.c();
                    }

                    @Override // android.animation.Animator.AnimatorListener
                    public void onAnimationCancel(Animator animator) {
                    }
                });
            }
            return null;
        }
    }

    public void a() {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.6
        });
        new AnonymousClass7().c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ToasterBanner.java */
    /* renamed from: com.smaato.soma.s$9  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass9 extends l<Void> {
        AnonymousClass9() {
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            try {
                if (!s.this.g()) {
                    s.this.f();
                } else {
                    DisplayMetrics displayMetrics = new DisplayMetrics();
                    ((WindowManager) s.this.getContext().getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
                    int measuredHeight = displayMetrics.heightPixels - s.this.b.getMeasuredHeight();
                    int[] iArr = new int[2];
                    s.this.getLocationOnScreen(iArr);
                    int measuredHeight2 = (displayMetrics.heightPixels - s.this.getMeasuredHeight()) - measuredHeight;
                    if (iArr[1] < displayMetrics.heightPixels) {
                        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(s.this, "translationY", measuredHeight2, s.this.b.getMeasuredHeight());
                        ofFloat.setDuration(300L);
                        ofFloat.addListener(new Animator.AnimatorListener() { // from class: com.smaato.soma.s.9.1
                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationStart(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationRepeat(Animator animator) {
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationEnd(Animator animator) {
                                new l<Void>() { // from class: com.smaato.soma.s.9.1.1
                                    @Override // com.smaato.soma.l
                                    /* renamed from: a */
                                    public Void b() throws Exception {
                                        s.this.setVisibility(8);
                                        s.this.d.setVisibility(8);
                                        s.this.c.setVisibility(8);
                                        return null;
                                    }
                                }.c();
                            }

                            @Override // android.animation.Animator.AnimatorListener
                            public void onAnimationCancel(Animator animator) {
                            }
                        });
                        ofFloat.start();
                    }
                }
            } catch (Exception e) {
            }
            return null;
        }
    }

    public void b() {
        com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.8
        });
        new AnonymousClass9().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() throws SettingToasterToVisibleFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.11
            });
            setVisibility(0);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new SettingToasterToVisibleFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() throws SettingToasterToGoneFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.12
            });
            setVisibility(8);
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new SettingToasterToGoneFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean g() throws RetrievingSDKVersionFailed {
        try {
            com.smaato.soma.debug.a.a(new Object() { // from class: com.smaato.soma.s.13
            });
            return Build.VERSION.SDK_INT >= 11;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RetrievingSDKVersionFailed(e2);
        }
    }

    public final void setScalingEnabled(boolean z) {
        this.e = z;
    }
}
