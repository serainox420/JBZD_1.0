package com.adcolony.sdk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.mopub.mobileads.resource.DrawableConstants;
import com.openx.view.mraid.JSInterface;
import java.util.ArrayList;
import java.util.HashMap;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    HashMap<Integer, av> f1225a;
    HashMap<Integer, as> b;
    HashMap<Integer, o> c;
    HashMap<Integer, aw> d;
    HashMap<Integer, g> e;
    HashMap<Integer, m> f;
    HashMap<Integer, q> g;
    HashMap<Integer, Boolean> h;
    HashMap<Integer, View> i;
    int j;
    int k;
    int l;
    String m;
    int n;
    ArrayList<ac> o;
    ArrayList<String> p;
    boolean q;
    boolean r;
    boolean s;
    Context t;
    VideoView u;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, String str) {
        super(context);
        this.t = context;
        this.m = str;
        setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
    }

    boolean a(z zVar) {
        return s.c(zVar.b, "container_id") == this.n && s.b(zVar.b, "ad_session_id").equals(this.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b(z zVar) {
        this.f1225a = new HashMap<>();
        this.b = new HashMap<>();
        this.c = new HashMap<>();
        this.d = new HashMap<>();
        this.e = new HashMap<>();
        this.f = new HashMap<>();
        this.g = new HashMap<>();
        this.h = new HashMap<>();
        this.i = new HashMap<>();
        this.o = new ArrayList<>();
        this.p = new ArrayList<>();
        this.n = s.c(zVar.b, "id");
        this.j = s.c(zVar.b, "width");
        this.k = s.c(zVar.b, "height");
        this.l = s.c(zVar.b, "module_id");
        this.q = this.n == 1;
        if (this.j == 0 && this.k == 0) {
            this.j = a.m.m.l();
            this.k = a.m.v.getMultiWindowEnabled() ? a.m.m.m() - au.e() : a.m.m.m();
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(this.j, this.k));
        }
        this.o.add(a.a("VideoView.create", new ac() { // from class: com.adcolony.sdk.c.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.g(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("VideoView.destroy", new ac() { // from class: com.adcolony.sdk.c.5
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.h(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("WebView.create", new ac() { // from class: com.adcolony.sdk.c.6
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.i(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("WebView.destroy", new ac() { // from class: com.adcolony.sdk.c.7
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.j(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("RenderView.create", new ac() { // from class: com.adcolony.sdk.c.8
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.m(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("RenderView.destroy", new ac() { // from class: com.adcolony.sdk.c.9
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.n(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("TextView.create", new ac() { // from class: com.adcolony.sdk.c.10
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.k(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("TextView.destroy", new ac() { // from class: com.adcolony.sdk.c.11
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.l(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("ImageView.create", new ac() { // from class: com.adcolony.sdk.c.12
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.e(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("ImageView.destroy", new ac() { // from class: com.adcolony.sdk.c.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.f(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("ColorView.create", new ac() { // from class: com.adcolony.sdk.c.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.c(zVar2);
                }
            }
        }, true));
        this.o.add(a.a("ColorView.destroy", new ac() { // from class: com.adcolony.sdk.c.4
            @Override // com.adcolony.sdk.ac
            public void a(z zVar2) {
                if (c.this.a(zVar2)) {
                    c.this.d(zVar2);
                }
            }
        }, true));
        this.p.add("VideoView.create");
        this.p.add("VideoView.destroy");
        this.p.add("WebView.create");
        this.p.add("WebView.destroy");
        this.p.add("RenderView.create");
        this.p.add("RenderView.destroy");
        this.p.add("TextView.create");
        this.p.add("TextView.destroy");
        this.p.add("ImageView.create");
        this.p.add("ImageView.destroy");
        this.p.add("ColorView.create");
        this.p.add("ColorView.destroy");
        this.u = new VideoView(this.t);
        this.u.setVisibility(8);
        addView(this.u);
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction() & 255;
        if (action != 0 && action != 1 && action != 3 && action != 2 && action != 5 && action != 6) {
            return false;
        }
        int x = (int) motionEvent.getX();
        int y = (int) motionEvent.getY();
        JSONObject a2 = s.a();
        s.b(a2, "view_id", -1);
        s.a(a2, "ad_session_id", this.m);
        s.b(a2, "container_x", x);
        s.b(a2, "container_y", y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.l, a2).b();
                break;
            case 1:
                if (!this.q) {
                    a.m.r = a.m.g.e.get(this.m);
                }
                new z("AdContainer.on_touch_ended", this.l, a2).b();
                break;
            case 2:
                new z("AdContainer.on_touch_moved", this.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", (int) motionEvent.getX(action2));
                s.b(a2, "container_y", (int) motionEvent.getY(action2));
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", (int) motionEvent.getX(action3));
                s.b(a2, "container_y", (int) motionEvent.getY(action3));
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                s.b(a2, JSInterface.JSON_X, (int) motionEvent.getX(action3));
                s.b(a2, JSInterface.JSON_Y, (int) motionEvent.getY(action3));
                if (!this.q) {
                    a.m.r = a.m.g.e.get(this.m);
                }
                new z("AdContainer.on_touch_ended", this.l, a2).b();
                break;
        }
        return true;
    }

    void c(z zVar) {
        int c = s.c(zVar.b, "id");
        g gVar = new g(this.t, zVar, c, this);
        gVar.a();
        this.e.put(Integer.valueOf(c), gVar);
        this.i.put(Integer.valueOf(c), gVar);
    }

    boolean d(z zVar) {
        int c = s.c(zVar.b, "id");
        View remove = this.i.remove(Integer.valueOf(c));
        g remove2 = this.e.remove(Integer.valueOf(c));
        if (remove == null || remove2 == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        removeView(remove2);
        return true;
    }

    void e(z zVar) {
        int c = s.c(zVar.b, "id");
        q qVar = new q(this.t, zVar, c, this);
        qVar.a();
        this.g.put(Integer.valueOf(c), qVar);
        this.i.put(Integer.valueOf(c), qVar);
    }

    boolean f(z zVar) {
        int c = s.c(zVar.b, "id");
        View remove = this.i.remove(Integer.valueOf(c));
        q remove2 = this.g.remove(Integer.valueOf(c));
        if (remove == null || remove2 == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        removeView(remove2);
        return true;
    }

    void g(z zVar) {
        int c = s.c(zVar.b, "id");
        av avVar = new av(this.t, zVar, c, this);
        avVar.b();
        this.f1225a.put(Integer.valueOf(c), avVar);
        this.i.put(Integer.valueOf(c), avVar);
    }

    boolean h(z zVar) {
        int c = s.c(zVar.b, "id");
        View remove = this.i.remove(Integer.valueOf(c));
        av remove2 = this.f1225a.remove(Integer.valueOf(c));
        if (remove == null || remove2 == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        if (remove2.e != null) {
            remove2.c();
        }
        remove2.a();
        removeView(remove2);
        return true;
    }

    boolean i(z zVar) {
        aw awVar;
        int c = s.c(zVar.b, "id");
        if (s.d(zVar.b, "is_module")) {
            awVar = a.m.A.get(Integer.valueOf(s.c(zVar.b, "module_id")));
            if (awVar == null) {
                u.g.b("Module WebView created with invalid id");
                return false;
            }
            awVar.a(zVar, c, this);
        } else {
            Context context = this.t;
            ab abVar = a.m.d;
            int i = abVar.c;
            abVar.c = i + 1;
            awVar = new aw(context, zVar, c, i, this);
        }
        this.d.put(Integer.valueOf(c), awVar);
        this.i.put(Integer.valueOf(c), awVar);
        JSONObject a2 = s.a();
        s.b(a2, "module_id", awVar.f1092a);
        zVar.a(a2).b();
        return true;
    }

    boolean j(z zVar) {
        int c = s.c(zVar.b, "id");
        View remove = this.i.remove(Integer.valueOf(c));
        aw remove2 = this.d.remove(Integer.valueOf(c));
        if (remove2 == null || remove == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        a.m.d.a(remove2.f1092a);
        removeView(remove2);
        return true;
    }

    void k(z zVar) {
        int c = s.c(zVar.b, "id");
        if (s.d(zVar.b, "editable")) {
            m mVar = new m(this.t, zVar, c, this);
            mVar.a();
            this.f.put(Integer.valueOf(c), mVar);
            this.i.put(Integer.valueOf(c), mVar);
            this.h.put(Integer.valueOf(c), true);
        } else if (!s.d(zVar.b, "button")) {
            as asVar = new as(this.t, zVar, c, this);
            asVar.a();
            this.b.put(Integer.valueOf(c), asVar);
            this.i.put(Integer.valueOf(c), asVar);
            this.h.put(Integer.valueOf(c), false);
        } else {
            as asVar2 = new as(this.t, 16974145, zVar, c, this);
            asVar2.a();
            this.b.put(Integer.valueOf(c), asVar2);
            this.i.put(Integer.valueOf(c), asVar2);
            this.h.put(Integer.valueOf(c), false);
        }
    }

    boolean l(z zVar) {
        as remove;
        int c = s.c(zVar.b, "id");
        View remove2 = this.i.remove(Integer.valueOf(c));
        if (this.h.remove(Integer.valueOf(this.n)).booleanValue()) {
            remove = this.f.remove(Integer.valueOf(c));
        } else {
            remove = this.b.remove(Integer.valueOf(c));
        }
        if (remove2 == null || remove == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        removeView(remove);
        return true;
    }

    void m(z zVar) {
        int c = s.c(zVar.b, "id");
        o oVar = new o(this.t, zVar, c, this);
        oVar.a();
        this.c.put(Integer.valueOf(c), oVar);
        this.i.put(Integer.valueOf(c), oVar);
    }

    boolean n(z zVar) {
        int c = s.c(zVar.b, "id");
        View remove = this.i.remove(Integer.valueOf(c));
        o remove2 = this.c.remove(Integer.valueOf(c));
        if (remove == null || remove2 == null) {
            a.m.g.a(zVar.f1506a, "" + c);
            return false;
        }
        remove2.b();
        removeView(remove2);
        return true;
    }

    void a() {
        JSONObject a2 = s.a();
        s.a(a2, "id", this.m);
        new z("AdSession.on_error", this.l, a2).b();
    }
}
