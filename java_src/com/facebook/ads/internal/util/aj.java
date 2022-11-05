package com.facebook.ads.internal.util;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.provider.Settings;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.WindowManager;
import com.facebook.ads.internal.b.c;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public class aj implements af<Bundle> {

    /* renamed from: a  reason: collision with root package name */
    private final String f2228a;
    private boolean b;
    private final Context c;
    private final com.facebook.ads.internal.g.f d;
    private final a e;
    private final String f;
    private final com.facebook.ads.internal.b.a g;
    private int h;
    private int i;
    private final ac j;

    /* loaded from: classes.dex */
    public interface a {
        boolean a();

        boolean b();

        boolean c();

        boolean getGlobalVisibleRect(Rect rect);

        long getInitialBufferTime();

        int getMeasuredHeight();

        int getMeasuredWidth();

        float getVolume();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public enum b {
        PLAY(0),
        SKIP(1),
        TIME(2),
        MRC(3),
        PAUSE(4),
        RESUME(5),
        MUTE(6),
        UNMUTE(7),
        VIEWABLE_IMPRESSION(10);
        
        public final int j;

        b(int i) {
            this.j = i;
        }
    }

    public aj(Context context, com.facebook.ads.internal.g.f fVar, a aVar, String str, String str2) {
        this(context, fVar, aVar, str, str2, null);
    }

    public aj(Context context, final com.facebook.ads.internal.g.f fVar, a aVar, String str, final String str2, Bundle bundle) {
        this.b = true;
        this.h = 0;
        this.i = 0;
        this.c = context;
        this.d = fVar;
        this.e = aVar;
        this.f = str;
        this.f2228a = str2;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.facebook.ads.internal.b.b(0.5d, -1.0d, 2.0d, true) { // from class: com.facebook.ads.internal.util.aj.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.ads.internal.b.b
            public void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar) {
                if (aj.this.a(b.MRC) != null) {
                    if (!str2.isEmpty()) {
                        fVar.d(str2, aj.this.b(b.MRC));
                    } else {
                        fVar.a(aj.this.a(b.MRC), aj.this.a());
                    }
                }
            }
        });
        arrayList.add(new com.facebook.ads.internal.b.b(1.0E-7d, -1.0d, 0.001d, false) { // from class: com.facebook.ads.internal.util.aj.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.facebook.ads.internal.b.b
            public void a(boolean z, boolean z2, com.facebook.ads.internal.b.c cVar) {
                if (!str2.isEmpty()) {
                    fVar.d(str2, aj.this.b(b.VIEWABLE_IMPRESSION));
                    return;
                }
                String a2 = aj.this.a(b.VIEWABLE_IMPRESSION);
                if (a2 == null) {
                    return;
                }
                fVar.a(a2, aj.this.a());
            }
        });
        if (bundle != null) {
            this.g = new com.facebook.ads.internal.b.a(context, (View) aVar, arrayList, bundle.getBundle("adQualityManager"));
            this.h = bundle.getInt("lastProgressTimeMS");
            this.i = bundle.getInt("lastBoundaryTimeMS");
        } else {
            this.g = new com.facebook.ads.internal.b.a(context, (View) aVar, arrayList);
        }
        this.j = new ac(new Handler(), this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> a() {
        HashMap hashMap = new HashMap();
        al.a(hashMap, this.e.a(), !this.e.c());
        a(hashMap);
        b(hashMap);
        c(hashMap);
        d(hashMap);
        return hashMap;
    }

    private void a(int i, boolean z) {
        if (i <= 0.0d || i < this.h) {
            return;
        }
        this.g.a((i - this.h) / 1000.0f, d());
        this.h = i;
        if (i - this.i >= 5000) {
            if (!this.f2228a.isEmpty()) {
                this.d.d(this.f2228a, b(b.TIME));
            } else if (a(b.TIME) != null) {
                this.d.a(a(b.TIME), a());
            }
            this.i += 5000;
            this.g.a();
        }
        if (!z) {
            return;
        }
        if (!this.f2228a.isEmpty()) {
            Map<String, String> b2 = b(b.TIME);
            b2.put("time", String.valueOf(i / 1000.0d));
            this.d.d(this.f2228a, b2);
        } else if (a(b.TIME) == null) {
        } else {
            Map<String, String> a2 = a();
            a2.put("time", String.valueOf(i / 1000.0d));
            this.d.a(a(b.TIME), a2);
        }
    }

    private void a(Map<String, String> map) {
        map.put("exoplayer", String.valueOf(this.e.b()));
        map.put("prep", Long.toString(this.e.getInitialBufferTime()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> b(b bVar) {
        Map<String, String> a2 = a();
        a2.put(NativeProtocol.WEB_DIALOG_ACTION, String.valueOf(bVar.j));
        return a2;
    }

    private void b(Map<String, String> map) {
        com.facebook.ads.internal.b.c b2 = this.g.b();
        c.a b3 = b2.b();
        map.put("vwa", String.valueOf(b3.c()));
        map.put("vwm", String.valueOf(b3.b()));
        map.put("vwmax", String.valueOf(b3.d()));
        map.put("vtime_ms", String.valueOf(b3.f() * 1000.0d));
        map.put("mcvt_ms", String.valueOf(b3.g() * 1000.0d));
        c.a c = b2.c();
        map.put("vla", String.valueOf(c.c()));
        map.put("vlm", String.valueOf(c.b()));
        map.put("vlmax", String.valueOf(c.d()));
        map.put("atime_ms", String.valueOf(c.f() * 1000.0d));
        map.put("mcat_ms", String.valueOf(c.g() * 1000.0d));
    }

    private void c(Map<String, String> map) {
        map.put("ptime", String.valueOf(this.i / 1000.0f));
        map.put("time", String.valueOf((this.i + 5000) / 1000.0f));
    }

    private void d(Map<String, String> map) {
        Rect rect = new Rect();
        this.e.getGlobalVisibleRect(rect);
        map.put("pt", String.valueOf(rect.top));
        map.put("pl", String.valueOf(rect.left));
        map.put("ph", String.valueOf(this.e.getMeasuredHeight()));
        map.put("pw", String.valueOf(this.e.getMeasuredWidth()));
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) this.c.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        map.put("vph", String.valueOf(displayMetrics.heightPixels));
        map.put("vpw", String.valueOf(displayMetrics.widthPixels));
    }

    protected String a(b bVar) {
        return this.f + "&action=" + bVar.j;
    }

    public void a(int i) {
        a(i, false);
    }

    public void a(int i, int i2) {
        a(i, true);
        this.i = i2;
        this.h = i2;
        this.g.a();
    }

    public void b() {
        this.c.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this.j);
    }

    public void b(int i) {
        a(i, true);
        this.i = 0;
        this.h = 0;
        this.g.a();
    }

    public void c() {
        this.c.getContentResolver().unregisterContentObserver(this.j);
    }

    protected float d() {
        return al.a(this.c) * this.e.getVolume();
    }

    public void e() {
        if (d() < 0.05d) {
            if (!this.b) {
                return;
            }
            f();
            this.b = false;
        } else if (this.b) {
        } else {
            g();
            this.b = true;
        }
    }

    public void f() {
        if (!this.f2228a.isEmpty()) {
            this.d.d(this.f2228a, b(b.MUTE));
        } else {
            this.d.a(a(b.MUTE), a());
        }
    }

    public void g() {
        if (!this.f2228a.isEmpty()) {
            this.d.d(this.f2228a, b(b.UNMUTE));
        } else {
            this.d.a(a(b.UNMUTE), a());
        }
    }

    @Override // com.facebook.ads.internal.util.af
    public Bundle getSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putInt("lastProgressTimeMS", this.h);
        bundle.putInt("lastBoundaryTimeMS", this.i);
        bundle.putBundle("adQualityManager", this.g.getSaveInstanceState());
        return bundle;
    }

    public void h() {
        if (!this.f2228a.isEmpty()) {
            this.d.d(this.f2228a, b(b.SKIP));
        } else {
            this.d.a(a(b.SKIP), a());
        }
    }

    public void i() {
        if (!this.f2228a.isEmpty()) {
            this.d.d(this.f2228a, b(b.PAUSE));
        } else {
            this.d.a(a(b.PAUSE), a());
        }
    }

    public void j() {
        if (!this.f2228a.isEmpty()) {
            this.d.d(this.f2228a, b(b.RESUME));
        } else {
            this.d.a(a(b.RESUME), a());
        }
    }

    public int k() {
        return this.h;
    }
}
