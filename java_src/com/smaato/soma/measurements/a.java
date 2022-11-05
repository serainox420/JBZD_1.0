package com.smaato.soma.measurements;

import android.graphics.Rect;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import com.smaato.soma.b.c;
import com.smaato.soma.exception.DimensionCalculationFailed;
import com.smaato.soma.exception.GettingBannerPositionFailed;
import com.smaato.soma.exception.GettingViewScreenLocationFailed;
import com.smaato.soma.exception.IntersectionCalculationFailed;
import com.smaato.soma.exception.RegisterClickFailed;
import com.smaato.soma.exception.RequestLimiterFailed;
import com.smaato.soma.exception.RequestTimeFrameCalculationFailed;
import com.smaato.soma.j;
import com.smaato.soma.l;
/* compiled from: BannerMeasurements.java */
/* loaded from: classes3.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static a f5156a;
    private static int b = 0;
    private static long c = 0;
    private static long d = 0;

    private a() {
    }

    public static final a a() {
        if (f5156a == null) {
            f5156a = new a();
        }
        return f5156a;
    }

    public final boolean b() throws RequestLimiterFailed {
        try {
            if (c == 0) {
                c = System.currentTimeMillis();
            }
            if (f() && b < 15) {
                return true;
            }
            if (!f()) {
                c = System.currentTimeMillis();
                b = 0;
                return true;
            }
            b.a().a(FraudesType.UBER_FREQUENT_REQUEST);
            return false;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RequestLimiterFailed(e2);
        }
    }

    public final void c() {
        b++;
    }

    public final void d() {
        d = System.currentTimeMillis();
    }

    public final void e() throws RegisterClickFailed {
        try {
            if (System.currentTimeMillis() - d <= 3000) {
                b.a().a(FraudesType.AUTO_CLICK);
            }
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RegisterClickFailed(e2);
        }
    }

    private boolean f() throws RequestTimeFrameCalculationFailed {
        try {
            return System.currentTimeMillis() - c <= 60000;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new RequestTimeFrameCalculationFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BannerMeasurements.java */
    /* renamed from: com.smaato.soma.measurements.a$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends l<Void> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ j f5157a;

        AnonymousClass1(j jVar) {
            this.f5157a = jVar;
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            final boolean b;
            Handler handler = new Handler();
            if (!a.this.d(this.f5157a)) {
                handler.postDelayed(new Runnable() { // from class: com.smaato.soma.measurements.a.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.measurements.a.1.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                if (!a.this.d(AnonymousClass1.this.f5157a)) {
                                    b.a().a(FraudesType.BANNER_OFF_SCREEN);
                                    return null;
                                }
                                return null;
                            }
                        }.c();
                    }
                }, 3000L);
            }
            if (!a.this.c(this.f5157a)) {
                handler.postDelayed(new Runnable() { // from class: com.smaato.soma.measurements.a.1.2
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.measurements.a.1.2.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                if (!a.this.c(AnonymousClass1.this.f5157a)) {
                                    b.a().a(FraudesType.BANNER_DIMENSION);
                                    return null;
                                }
                                return null;
                            }
                        }.c();
                    }
                }, 3000L);
            }
            if (!(this.f5157a instanceof c) && !(b = a.this.b(this.f5157a))) {
                handler.postDelayed(new Runnable() { // from class: com.smaato.soma.measurements.a.1.3
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.measurements.a.1.3.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                if (!b) {
                                    b.a().a(FraudesType.BANNER_OVERLAP);
                                    return null;
                                }
                                return null;
                            }
                        }.c();
                    }
                }, 3000L);
            }
            return null;
        }
    }

    public final void a(j jVar) {
        new AnonymousClass1(jVar).c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean b(j jVar) throws GettingBannerPositionFailed {
        try {
            ViewGroup viewGroup = (ViewGroup) jVar.getParent();
            if (viewGroup == null) {
                return false;
            }
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                if (viewGroup.getChildAt(i) != jVar && a(jVar, viewGroup.getChildAt(i))) {
                    return false;
                }
            }
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new GettingBannerPositionFailed(e2);
        }
    }

    private boolean a(j jVar, View view) throws IntersectionCalculationFailed {
        try {
            return Rect.intersects(new Rect(jVar.getLeft(), jVar.getTop(), jVar.getRight(), jVar.getBottom()), new Rect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom()));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new IntersectionCalculationFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c(j jVar) throws DimensionCalculationFailed {
        try {
            if (jVar.getWidth() < 320) {
                if (jVar.getHeight() < 50) {
                    return false;
                }
            }
            return true;
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new DimensionCalculationFailed(e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean d(j jVar) throws GettingViewScreenLocationFailed {
        try {
            return jVar.getGlobalVisibleRect(new Rect(jVar.getLeft(), jVar.getTop(), jVar.getRight(), jVar.getBottom()));
        } catch (RuntimeException e) {
            throw e;
        } catch (Exception e2) {
            throw new GettingViewScreenLocationFailed(e2);
        }
    }
}
