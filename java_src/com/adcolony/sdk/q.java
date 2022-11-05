package com.adcolony.sdk;

import android.content.Context;
import android.net.Uri;
import android.view.MotionEvent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.openx.view.mraid.JSInterface;
import java.io.File;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class q extends ImageView {

    /* renamed from: a  reason: collision with root package name */
    private int f1494a;
    private int b;
    private int c;
    private int d;
    private int e;
    private boolean f;
    private boolean g;
    private boolean h;
    private String i;
    private String j;
    private z k;
    private c l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, z zVar, int i, c cVar) {
        super(context);
        this.f1494a = i;
        this.k = zVar;
        this.l = cVar;
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
        s.b(a2, "view_id", this.f1494a);
        s.a(a2, "ad_session_id", this.j);
        s.b(a2, "container_x", this.b + x);
        s.b(a2, "container_y", this.c + y);
        s.b(a2, "view_x", x);
        s.b(a2, "view_y", y);
        s.b(a2, "id", this.l.n);
        switch (action) {
            case 0:
                new z("AdContainer.on_touch_began", this.l.l, a2).b();
                break;
            case 1:
                if (!this.l.q) {
                    a.m.r = a.m.g.e.get(this.j);
                }
                if (x > 0 && x < this.d && y > 0 && y < this.e) {
                    new z("AdContainer.on_touch_ended", this.l.l, a2).b();
                    break;
                } else {
                    new z("AdContainer.on_touch_cancelled", this.l.l, a2).b();
                    break;
                }
            case 2:
                new z("AdContainer.on_touch_moved", this.l.l, a2).b();
                break;
            case 3:
                new z("AdContainer.on_touch_cancelled", this.l.l, a2).b();
                break;
            case 5:
                int action2 = (motionEvent.getAction() & 65280) >> 8;
                s.b(a2, "container_x", ((int) motionEvent.getX(action2)) + this.b);
                s.b(a2, "container_y", ((int) motionEvent.getY(action2)) + this.c);
                s.b(a2, "view_x", (int) motionEvent.getX(action2));
                s.b(a2, "view_y", (int) motionEvent.getY(action2));
                new z("AdContainer.on_touch_began", this.l.l, a2).b();
                break;
            case 6:
                int action3 = (motionEvent.getAction() & 65280) >> 8;
                int x2 = (int) motionEvent.getX(action3);
                int y2 = (int) motionEvent.getY(action3);
                s.b(a2, "container_x", ((int) motionEvent.getX(action3)) + this.b);
                s.b(a2, "container_y", ((int) motionEvent.getY(action3)) + this.c);
                s.b(a2, "view_x", (int) motionEvent.getX(action3));
                s.b(a2, "view_y", (int) motionEvent.getY(action3));
                if (!this.l.q) {
                    a.m.r = a.m.g.e.get(this.j);
                }
                if (x2 > 0 && x2 < this.d && y2 > 0 && y2 < this.e) {
                    new z("AdContainer.on_touch_ended", this.l.l, a2).b();
                    break;
                } else {
                    new z("AdContainer.on_touch_cancelled", this.l.l, a2).b();
                    break;
                }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(z zVar) {
        return s.c(zVar.b, "id") == this.f1494a && s.c(zVar.b, "container_id") == this.l.n && s.b(zVar.b, "ad_session_id").equals(this.l.m);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.j = s.b(this.k.b, "ad_session_id");
        this.b = s.c(this.k.b, JSInterface.JSON_X);
        this.c = s.c(this.k.b, JSInterface.JSON_Y);
        this.d = s.c(this.k.b, "width");
        this.e = s.c(this.k.b, "height");
        this.i = s.b(this.k.b, "filepath");
        this.f = s.d(this.k.b, "dpi");
        this.g = s.d(this.k.b, "invert_y");
        this.h = s.d(this.k.b, "wrap_content");
        setImageURI(Uri.fromFile(new File(this.i)));
        if (this.f) {
            float j = (a.m.m.j() * this.e) / getDrawable().getIntrinsicHeight();
            this.e = (int) (getDrawable().getIntrinsicHeight() * j);
            this.d = (int) (j * getDrawable().getIntrinsicWidth());
            this.b -= this.d;
            this.c = this.g ? this.c + this.e : this.c - this.e;
        }
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = this.h ? new FrameLayout.LayoutParams(-2, -2) : new FrameLayout.LayoutParams(this.d, this.e);
        layoutParams.setMargins(this.b, this.c, 0, 0);
        layoutParams.gravity = 0;
        this.l.addView(this, layoutParams);
        this.l.o.add(a.a("ImageView.set_visible", new ac() { // from class: com.adcolony.sdk.q.1
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (q.this.a(zVar)) {
                    q.this.d(zVar);
                }
            }
        }, true));
        this.l.o.add(a.a("ImageView.set_bounds", new ac() { // from class: com.adcolony.sdk.q.2
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (q.this.a(zVar)) {
                    q.this.b(zVar);
                }
            }
        }, true));
        this.l.o.add(a.a("ImageView.set_image", new ac() { // from class: com.adcolony.sdk.q.3
            @Override // com.adcolony.sdk.ac
            public void a(z zVar) {
                if (q.this.a(zVar)) {
                    q.this.c(zVar);
                }
            }
        }, true));
        this.l.p.add("ImageView.set_visible");
        this.l.p.add("ImageView.set_bounds");
        this.l.p.add("ImageView.set_image");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(z zVar) {
        this.b = s.c(zVar.b, JSInterface.JSON_X);
        this.c = s.c(zVar.b, JSInterface.JSON_Y);
        this.d = s.c(zVar.b, "width");
        this.e = s.c(zVar.b, "height");
        if (this.f) {
            float j = (a.m.m.j() * this.e) / getDrawable().getIntrinsicHeight();
            this.e = (int) (getDrawable().getIntrinsicHeight() * j);
            this.d = (int) (j * getDrawable().getIntrinsicWidth());
            this.b -= this.d;
            this.c -= this.e;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.b, this.c, 0, 0);
        layoutParams.width = this.d;
        layoutParams.height = this.e;
        setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(z zVar) {
        this.i = s.b(zVar.b, "filepath");
        setImageURI(Uri.fromFile(new File(this.i)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(z zVar) {
        if (s.d(zVar.b, "visible")) {
            setVisibility(0);
        } else {
            setVisibility(4);
        }
    }

    int[] b() {
        return new int[]{this.b, this.c, this.d, this.e};
    }
}
