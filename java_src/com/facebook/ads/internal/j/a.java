package com.facebook.ads.internal.j;

import android.content.Context;
import android.graphics.Rect;
import android.os.Build;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import com.facebook.ads.internal.h;
import com.facebook.ads.internal.util.am;
import com.facebook.ads.internal.util.p;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2199a = a.class.getSimpleName();
    private final View b;
    private final int c;
    private final int d;
    private final AbstractC0098a e;
    private final Handler f;
    private final Runnable g;
    private final boolean h;
    private int i;
    private int j;
    private boolean k;
    private com.facebook.ads.internal.j.b l;
    private Map<String, Integer> m;
    private long n;
    private int o;

    /* renamed from: com.facebook.ads.internal.j.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public static abstract class AbstractC0098a {
        public abstract void a();

        public void b() {
        }
    }

    /* loaded from: classes.dex */
    private static final class b extends am<a> {
        public b(a aVar) {
            super(aVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            int i = 0;
            a a2 = a();
            if (a2 == null) {
                return;
            }
            View view = a2.b;
            AbstractC0098a abstractC0098a = a2.e;
            if (view == null || abstractC0098a == null) {
                return;
            }
            com.facebook.ads.internal.j.b a3 = a.a(view, a2.c);
            if (a3.a()) {
                a.d(a2);
            } else {
                a2.o = 0;
            }
            boolean z = a2.o > a2.d;
            boolean z2 = a2.l != null && a2.l.a();
            if (z || !a3.a()) {
                a2.l = a3;
            }
            String valueOf = String.valueOf(a3.b());
            synchronized (a2) {
                if (a2.m.containsKey(valueOf)) {
                    i = ((Integer) a2.m.get(valueOf)).intValue();
                }
                a2.m.put(valueOf, Integer.valueOf(i + 1));
            }
            if (z && !z2) {
                a2.n = System.currentTimeMillis();
                abstractC0098a.a();
                if (!a2.h) {
                    return;
                }
            } else if (!z && z2) {
                abstractC0098a.b();
            }
            if (a2.k) {
                return;
            }
            a2.f.postDelayed(a2.g, a2.j);
        }
    }

    public a(View view, int i, int i2, boolean z, AbstractC0098a abstractC0098a) {
        this.f = new Handler();
        this.g = new b(this);
        this.i = 0;
        this.j = 1000;
        this.k = true;
        this.l = new com.facebook.ads.internal.j.b(c.UNKNOWN);
        this.m = new HashMap();
        this.n = 0L;
        this.o = 0;
        this.b = view;
        this.c = i;
        this.e = abstractC0098a;
        this.h = z;
        this.d = i2 < 0 ? 0 : i2;
    }

    public a(View view, int i, AbstractC0098a abstractC0098a) {
        this(view, i, 0, false, abstractC0098a);
    }

    public a(View view, int i, boolean z, AbstractC0098a abstractC0098a) {
        this(view, i, 0, z, abstractC0098a);
    }

    public static com.facebook.ads.internal.j.b a(View view, int i) {
        if (view == null) {
            a(view, false, "adView is null.");
            return new com.facebook.ads.internal.j.b(c.AD_IS_NULL);
        } else if (view.getParent() == null) {
            a(view, false, "adView has no parent.");
            return new com.facebook.ads.internal.j.b(c.INVALID_PARENT);
        } else if (view.getWindowVisibility() != 0) {
            a(view, false, "adView window is not set to VISIBLE.");
            return new com.facebook.ads.internal.j.b(c.INVALID_WINDOW);
        } else if (view.getVisibility() != 0) {
            a(view, false, "adView is not set to VISIBLE.");
            return new com.facebook.ads.internal.j.b(c.AD_IS_NOT_VISIBLE);
        } else if (view.getMeasuredWidth() <= 0 || view.getMeasuredHeight() <= 0) {
            a(view, false, "adView has invisible dimensions (w=" + view.getMeasuredWidth() + ", h=" + view.getMeasuredHeight());
            return new com.facebook.ads.internal.j.b(c.INVALID_DIMENSIONS);
        } else if (Build.VERSION.SDK_INT >= 11 && view.getAlpha() < 0.9f) {
            a(view, false, "adView is too transparent.");
            return new com.facebook.ads.internal.j.b(c.AD_IS_TRANSPARENT);
        } else {
            int width = view.getWidth();
            int height = view.getHeight();
            int[] iArr = new int[2];
            try {
                view.getLocationOnScreen(iArr);
                Context context = view.getContext();
                DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                Rect rect = new Rect(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                float f = BitmapDescriptorFactory.HUE_RED;
                if (rect.intersect(iArr[0], iArr[1], iArr[0] + width, iArr[1] + height)) {
                    f = ((rect.width() * rect.height()) * 1.0f) / (width * height);
                }
                boolean i2 = h.i(context);
                int j = h.j(context);
                if (i2) {
                    f *= 100.0f;
                    if (f < j) {
                        a(view, false, String.format("adView visible area is too small [%.2f%% visible, current threshold %d%%]", Float.valueOf(f), Integer.valueOf(j)));
                        return new com.facebook.ads.internal.j.b(c.AD_INSUFFICIENT_VISIBLE_AREA, f);
                    }
                } else if (iArr[0] < 0 || displayMetrics.widthPixels - iArr[0] < width) {
                    a(view, false, "adView is not fully on screen horizontally.");
                    return new com.facebook.ads.internal.j.b(c.AD_OFFSCREEN_HORIZONTALLY, f);
                } else {
                    int i3 = (int) ((height * (100.0d - i)) / 100.0d);
                    if (iArr[1] < 0 && Math.abs(iArr[1]) > i3) {
                        a(view, false, "adView is not visible from the top.");
                        return new com.facebook.ads.internal.j.b(c.AD_OFFSCREEN_TOP, f);
                    } else if ((height + iArr[1]) - displayMetrics.heightPixels > i3) {
                        a(view, false, "adView is not visible from the bottom.");
                        return new com.facebook.ads.internal.j.b(c.AD_OFFSCREEN_BOTTOM, f);
                    }
                }
                if (!p.b(context)) {
                    a(view, false, "Screen is not interactive.");
                    return new com.facebook.ads.internal.j.b(c.SCREEN_NOT_INTERACTIVE, f);
                } else if (!p.c(context)) {
                    a(view, false, "Keyguard is obstructing view.");
                    return new com.facebook.ads.internal.j.b(c.AD_IS_OBSTRUCTED_BY_KEYGUARD, f);
                } else {
                    a(view, true, "adView is visible.");
                    return new com.facebook.ads.internal.j.b(c.IS_VIEWABLE, f);
                }
            } catch (NullPointerException e) {
                a(view, false, "Cannot get location on screen.");
                return new com.facebook.ads.internal.j.b(c.INVALID_DIMENSIONS);
            }
        }
    }

    private static void a(View view, boolean z, String str) {
    }

    static /* synthetic */ int d(a aVar) {
        int i = aVar.o;
        aVar.o = i + 1;
        return i;
    }

    public void a() {
        this.f.postDelayed(this.g, this.i);
        this.k = false;
        this.o = 0;
    }

    public void a(int i) {
        this.i = i;
    }

    public void a(Map<String, String> map) {
        map.put("vrc", String.valueOf(this.l.b()));
        map.put("vp", String.valueOf(this.l.c()));
        map.put("vh", new JSONObject(this.m).toString());
        map.put("vt", com.facebook.ads.internal.util.h.a(this.n));
    }

    public void b() {
        this.f.removeCallbacks(this.g);
        this.k = true;
        this.o = 0;
    }

    public void b(int i) {
        this.j = i;
    }
}
