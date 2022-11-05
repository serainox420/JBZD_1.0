package com.adcolony.sdk;

import android.content.Context;
import android.opengl.GLSurfaceView;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import com.openx.view.mraid.JSInterface;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class o extends GLSurfaceView {

    /* renamed from: a  reason: collision with root package name */
    p f1487a;
    int b;
    int c;
    int d;
    int e;
    int f;
    String g;
    boolean h;
    c i;
    z j;
    boolean k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o(Context context, z zVar, int i, c cVar) {
        super(context);
        setEGLContextClientVersion(2);
        setPreserveEGLContextOnPause(true);
        this.b = i;
        this.j = zVar;
        this.i = cVar;
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
        s.b(a2, "view_id", this.b);
        s.a(a2, "ad_session_id", this.g);
        s.b(a2, "container_x", this.c + x);
        s.b(a2, "container_y", this.d + y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.i.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.i.l, a2).b();
                break;
            case 1:
                if (!this.i.q) {
                    a.m.r = a.m.g.e.get(this.g);
                }
                new z("AdContainer.on_touch_ended", this.i.l, a2).b();
                break;
            case 2:
                new z("AdContainer.on_touch_moved", this.i.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.i.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action2)) + this.c);
                s.b(a2, "container_y", ((int) motionEvent.getY(action2)) + this.d);
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.i.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action3)) + this.c);
                s.b(a2, "container_y", ((int) motionEvent.getY(action3)) + this.d);
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                if (!this.i.q) {
                    a.m.r = a.m.g.e.get(this.g);
                }
                new z("AdContainer.on_touch_ended", this.i.l, a2).b();
                break;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.g = s.b(this.j.b, "ad_session_id");
        this.c = s.c(this.j.b, JSInterface.JSON_X);
        this.d = s.c(this.j.b, JSInterface.JSON_Y);
        this.e = s.c(this.j.b, "width");
        this.f = s.c(this.j.b, "height");
        this.h = s.d(this.j.b, "transparent");
        setEGLConfigChooser(8, 8, 8, 8, 16, 8);
        if (this.h) {
            getHolder().setFormat(-3);
            setZOrderOnTop(true);
        } else {
            getHolder().setFormat(1);
        }
        this.f1487a = new p(this, true, this.g);
        setRenderer(this.f1487a);
        this.i.o.add(a.a("RenderView.set_visible", new ac() { // from class: com.adcolony.sdk.o.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (o.this.a(zVar)) {
                    o.this.c(zVar);
                }
            }
        }, true));
        this.i.o.add(a.a("RenderView.set_bounds", new ac() { // from class: com.adcolony.sdk.o.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (o.this.a(zVar)) {
                    o.this.b(zVar);
                }
            }
        }, true));
        this.i.p.add("RenderView.set_visible");
        this.i.p.add("RenderView.set_bounds");
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.e, this.f);
        layoutParams.setMargins(this.c, this.d, 0, 0);
        layoutParams.gravity = 0;
        this.i.addView(this, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean b() {
        if (this.k) {
            return false;
        }
        this.k = true;
        this.f1487a.a();
        return true;
    }

    @Override // android.opengl.GLSurfaceView
    protected void finalize() throws Throwable {
        b();
    }

    boolean a(z zVar) {
        return s.c(zVar.b, "id") == this.b && s.c(zVar.b, "container_id") == this.i.n && s.b(zVar.b, "ad_session_id").equals(this.i.m);
    }

    void b(z zVar) {
        this.c = s.c(zVar.b, JSInterface.JSON_X);
        this.d = s.c(zVar.b, JSInterface.JSON_Y);
        this.e = s.c(zVar.b, "width");
        this.f = s.c(zVar.b, "height");
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.c, this.d, 0, 0);
        layoutParams.width = this.e;
        layoutParams.height = this.f;
        setLayoutParams(layoutParams);
        getHolder().setFixedSize(this.e, this.f);
    }

    void c(z zVar) {
        if (s.d(zVar.b, "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }
}
