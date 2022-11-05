package com.adcolony.sdk;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class g extends View {

    /* renamed from: a  reason: collision with root package name */
    private int f1419a;
    private int b;
    private int c;
    private int d;
    private int e;
    private String f;
    private String g;
    private c h;
    private z i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public g(Context context, z zVar, int i, c cVar) {
        super(context);
        this.h = cVar;
        this.i = zVar;
        this.f1419a = i;
    }

    boolean a(z zVar) {
        return s.c(zVar.b, "id") == this.f1419a && s.c(zVar.b, "container_id") == this.h.n && s.b(zVar.b, "ad_session_id").equals(this.h.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.g = s.b(this.i.b, "ad_session_id");
        this.b = s.c(this.i.b, JSInterface.JSON_X);
        this.c = s.c(this.i.b, JSInterface.JSON_Y);
        this.d = s.c(this.i.b, "width");
        this.e = s.c(this.i.b, "height");
        this.f = s.b(this.i.b, "color");
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.d, this.e);
        layoutParams.setMargins(this.b, this.c, 0, 0);
        layoutParams.gravity = 0;
        this.h.addView(this, layoutParams);
        setBackgroundColor(au.g(this.f));
        this.h.o.add(a.a("ColorView.set_bounds", new ac() { // from class: com.adcolony.sdk.g.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (g.this.a(zVar)) {
                    g.this.b(zVar);
                }
            }
        }, true));
        this.h.o.add(a.a("ColorView.set_visible", new ac() { // from class: com.adcolony.sdk.g.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (g.this.a(zVar)) {
                    g.this.d(zVar);
                }
            }
        }, true));
        this.h.o.add(a.a("ColorView.set_color", new ac() { // from class: com.adcolony.sdk.g.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (g.this.a(zVar)) {
                    g.this.c(zVar);
                }
            }
        }, true));
        this.h.p.add("ColorView.set_bounds");
        this.h.p.add("ColorView.set_visible");
        this.h.p.add("ColorView.set_color");
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
        s.b(a2, "view_id", this.f1419a);
        s.a(a2, "ad_session_id", this.g);
        s.b(a2, "container_x", this.b + x);
        s.b(a2, "container_y", this.c + y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.h.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.h.l, a2).b();
                break;
            case 1:
                if (!this.h.q) {
                    a.m.r = a.m.g.e.get(this.g);
                }
                new z("AdContainer.on_touch_ended", this.h.l, a2).b();
                break;
            case 2:
                new z("AdContainer.on_touch_moved", this.h.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.h.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action2)) + this.b);
                s.b(a2, "container_y", ((int) motionEvent.getY(action2)) + this.c);
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.h.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action3)) + this.b);
                s.b(a2, "container_y", ((int) motionEvent.getY(action3)) + this.c);
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                if (!this.h.q) {
                    a.m.r = a.m.g.e.get(this.g);
                }
                new z("AdContainer.on_touch_ended", this.h.l, a2).b();
                break;
        }
        return true;
    }

    void b(z zVar) {
        this.b = s.c(zVar.b, JSInterface.JSON_X);
        this.c = s.c(zVar.b, JSInterface.JSON_Y);
        this.d = s.c(zVar.b, "width");
        this.e = s.c(zVar.b, "height");
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.b, this.c, 0, 0);
        layoutParams.width = this.d;
        layoutParams.height = this.e;
        setLayoutParams(layoutParams);
    }

    void c(z zVar) {
        setBackgroundColor(au.g(s.b(zVar.b, "color")));
    }

    void d(z zVar) {
        if (s.d(zVar.b, "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }
}
