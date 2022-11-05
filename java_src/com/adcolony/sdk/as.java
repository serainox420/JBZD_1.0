package com.adcolony.sdk;

import android.content.Context;
import android.graphics.Typeface;
import android.view.MotionEvent;
import android.widget.Button;
import android.widget.FrameLayout;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import com.pubmatic.sdk.common.CommonConstants;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class as extends Button {
    private c A;
    private z B;

    /* renamed from: a  reason: collision with root package name */
    private final int f1067a;
    private final int b;
    private final int c;
    private final int d;
    private final int e;
    private final int f;
    private final int g;
    private final int h;
    private final int i;
    private final int j;
    private final int k;
    private final int l;
    private int m;
    private int n;
    private int o;
    private int p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private String w;
    private String x;
    private String y;
    private String z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(Context context, z zVar, int i, c cVar) {
        super(context);
        this.f1067a = 0;
        this.b = 1;
        this.c = 2;
        this.d = 3;
        this.e = 1;
        this.f = 2;
        this.g = 3;
        this.h = 0;
        this.i = 1;
        this.j = 2;
        this.k = 1;
        this.l = 2;
        this.m = i;
        this.B = zVar;
        this.A = cVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public as(Context context, int i, z zVar, int i2, c cVar) {
        super(context, null, i);
        this.f1067a = 0;
        this.b = 1;
        this.c = 2;
        this.d = 3;
        this.e = 1;
        this.f = 2;
        this.g = 3;
        this.h = 0;
        this.i = 1;
        this.j = 2;
        this.k = 1;
        this.l = 2;
        this.m = i2;
        this.B = zVar;
        this.A = cVar;
    }

    void a(z zVar) {
        this.u = s.c(zVar.b, JSInterface.JSON_X);
        this.v = s.c(zVar.b, JSInterface.JSON_Y);
        setGravity(a(true, this.u) | a(false, this.v));
    }

    int a(boolean z, int i) {
        switch (i) {
            case 0:
                if (z) {
                    return 1;
                }
                return 16;
            case 1:
                if (z) {
                    return 3;
                }
                return 48;
            case 2:
                if (z) {
                    return 5;
                }
                return 80;
            default:
                return 17;
        }
    }

    void b(z zVar) {
        JSONObject a2 = s.a();
        s.a(a2, CommonConstants.RESPONSE_TEXT, getText().toString());
        zVar.a(a2).b();
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0 && action != 1 && action != 3 && action != 2 && action != 5 && action != 6) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        JSONObject a2 = s.a();
        s.b(a2, "view_id", this.m);
        s.a(a2, "ad_session_id", this.z);
        s.b(a2, "container_x", this.n + x);
        s.b(a2, "container_y", this.o + y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.A.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.A.l, a2).b();
                break;
            case 1:
                if (!this.A.q) {
                    a.m.r = a.m.g.e.get(this.z);
                }
                if (x > 0 && x < getWidth() && y > 0 && y < getHeight()) {
                    new z("AdContainer.on_touch_ended", this.A.l, a2).b();
                    break;
                } else {
                    new z("AdContainer.on_touch_cancelled", this.A.l, a2).b();
                    break;
                }
                break;
            case 2:
                new z("AdContainer.on_touch_moved", this.A.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.A.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action2)) + this.n);
                s.b(a2, "container_y", ((int) motionEvent.getY(action2)) + this.o);
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.A.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                int x2 = (int) motionEvent.getX(action3);
                int y2 = (int) motionEvent.getY(action3);
                s.b(a2, "container_x", ((int) motionEvent.getX(action3)) + this.n);
                s.b(a2, "container_y", ((int) motionEvent.getY(action3)) + this.o);
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                if (!this.A.q) {
                    a.m.r = a.m.g.e.get(this.z);
                }
                if (x2 > 0 && x2 < getWidth() && y2 > 0 && y2 < getHeight()) {
                    new z("AdContainer.on_touch_ended", this.A.l, a2).b();
                    break;
                } else {
                    new z("AdContainer.on_touch_cancelled", this.A.l, a2).b();
                    break;
                }
                break;
        }
        return true;
    }

    boolean c(z zVar) {
        return s.c(zVar.b, "id") == this.m && s.c(zVar.b, "container_id") == this.A.n && s.b(zVar.b, "ad_session_id").equals(this.A.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        int i;
        int i2;
        this.z = s.b(this.B.b, "ad_session_id");
        this.n = s.c(this.B.b, JSInterface.JSON_X);
        this.o = s.c(this.B.b, JSInterface.JSON_Y);
        this.p = s.c(this.B.b, "width");
        this.q = s.c(this.B.b, "height");
        this.s = s.c(this.B.b, "font_family");
        this.r = s.c(this.B.b, "font_style");
        this.t = s.c(this.B.b, "font_size");
        this.w = s.b(this.B.b, "background_color");
        this.x = s.b(this.B.b, "font_color");
        this.y = s.b(this.B.b, CommonConstants.RESPONSE_TEXT);
        this.u = s.c(this.B.b, "align_x");
        this.v = s.c(this.B.b, "align_y");
        if (this.y.equals("")) {
            this.y = DrawableConstants.CtaButton.DEFAULT_CTA_TEXT;
        }
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = s.d(this.B.b, "wrap_content") ? new FrameLayout.LayoutParams(-2, -2) : new FrameLayout.LayoutParams(this.p, this.q);
        layoutParams.gravity = 0;
        setText(this.y);
        setTextSize(this.t);
        if (s.d(this.B.b, "overlay")) {
            this.n = 0;
            this.o = 0;
            i2 = (int) (a.m.m.j() * 6.0f);
            i = (int) (a.m.m.j() * 6.0f);
            int j = (int) (4.0f * a.m.m.j());
            setPadding(j, j, j, j);
            layoutParams.gravity = 85;
        } else {
            i = 0;
            i2 = 0;
        }
        layoutParams.setMargins(this.n, this.o, i2, i);
        this.A.addView(this, layoutParams);
        switch (this.s) {
            case 0:
                setTypeface(Typeface.DEFAULT);
                break;
            case 1:
                setTypeface(Typeface.SERIF);
                break;
            case 2:
                setTypeface(Typeface.SANS_SERIF);
                break;
            case 3:
                setTypeface(Typeface.MONOSPACE);
                break;
        }
        switch (this.r) {
            case 0:
                setTypeface(getTypeface(), 0);
                break;
            case 1:
                setTypeface(getTypeface(), 1);
                break;
            case 2:
                setTypeface(getTypeface(), 2);
                break;
            case 3:
                setTypeface(getTypeface(), 3);
                break;
        }
        setGravity(a(true, this.u) | a(false, this.v));
        if (!this.w.equals("")) {
            setBackgroundColor(au.g(this.w));
        }
        if (!this.x.equals("")) {
            setTextColor(au.g(this.x));
        }
        this.A.o.add(a.a("TextView.set_visible", new ac() { // from class: com.adcolony.sdk.as.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.k(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_bounds", new ac() { // from class: com.adcolony.sdk.as.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.d(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_font_color", new ac() { // from class: com.adcolony.sdk.as.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.f(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_background_color", new ac() { // from class: com.adcolony.sdk.as.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.e(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_typeface", new ac() { // from class: com.adcolony.sdk.as.6
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.j(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_font_size", new ac() { // from class: com.adcolony.sdk.as.7
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.g(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_font_style", new ac() { // from class: com.adcolony.sdk.as.8
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.h(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.get_text", new ac() { // from class: com.adcolony.sdk.as.9
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.b(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.set_text", new ac() { // from class: com.adcolony.sdk.as.10
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.i(zVar);
                }
            }
        }, true));
        this.A.o.add(a.a("TextView.align", new ac() { // from class: com.adcolony.sdk.as.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (as.this.c(zVar)) {
                    as.this.a(zVar);
                }
            }
        }, true));
        this.A.p.add("TextView.set_visible");
        this.A.p.add("TextView.set_bounds");
        this.A.p.add("TextView.set_font_color");
        this.A.p.add("TextView.set_background_color");
        this.A.p.add("TextView.set_typeface");
        this.A.p.add("TextView.set_font_size");
        this.A.p.add("TextView.set_font_style");
        this.A.p.add("TextView.get_text");
        this.A.p.add("TextView.set_text");
        this.A.p.add("TextView.align");
        u.d.b("TextView added to layout");
    }

    void d(z zVar) {
        this.n = s.c(zVar.b, JSInterface.JSON_X);
        this.o = s.c(zVar.b, JSInterface.JSON_Y);
        this.p = s.c(zVar.b, "width");
        this.q = s.c(zVar.b, "height");
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.n, this.o, 0, 0);
        layoutParams.width = this.p;
        layoutParams.height = this.q;
        setLayoutParams(layoutParams);
    }

    void e(z zVar) {
        this.w = s.b(zVar.b, "background_color");
        setBackgroundColor(au.g(this.w));
    }

    void f(z zVar) {
        this.x = s.b(zVar.b, "font_color");
        setTextColor(au.g(this.x));
    }

    void g(z zVar) {
        this.t = s.c(zVar.b, "font_size");
        setTextSize(this.t);
    }

    void h(z zVar) {
        int c = s.c(zVar.b, "font_style");
        this.r = c;
        switch (c) {
            case 0:
                setTypeface(getTypeface(), 0);
                return;
            case 1:
                setTypeface(getTypeface(), 1);
                return;
            case 2:
                setTypeface(getTypeface(), 2);
                return;
            case 3:
                setTypeface(getTypeface(), 3);
                return;
            default:
                return;
        }
    }

    void i(z zVar) {
        this.y = s.b(zVar.b, CommonConstants.RESPONSE_TEXT);
        setText(this.y);
    }

    void j(z zVar) {
        int c = s.c(zVar.b, "font_family");
        this.s = c;
        switch (c) {
            case 0:
                setTypeface(Typeface.DEFAULT);
                return;
            case 1:
                setTypeface(Typeface.SERIF);
                return;
            case 2:
                setTypeface(Typeface.SANS_SERIF);
                return;
            case 3:
                setTypeface(Typeface.MONOSPACE);
                return;
            default:
                return;
        }
    }

    void k(z zVar) {
        if (s.d(zVar.b, "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }
}
