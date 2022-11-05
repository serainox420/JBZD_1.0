package android.support.v7.view.menu;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.o;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.PopupWindow;
/* compiled from: MenuPopupHelper.java */
@RestrictTo
/* loaded from: classes.dex */
public class n {

    /* renamed from: a  reason: collision with root package name */
    private final Context f728a;
    private final h b;
    private final boolean c;
    private final int d;
    private final int e;
    private View f;
    private int g;
    private boolean h;
    private o.a i;
    private m j;
    private PopupWindow.OnDismissListener k;
    private final PopupWindow.OnDismissListener l;

    public n(Context context, h hVar, View view, boolean z, int i) {
        this(context, hVar, view, z, i, 0);
    }

    public n(Context context, h hVar, View view, boolean z, int i, int i2) {
        this.g = 8388611;
        this.l = new PopupWindow.OnDismissListener() { // from class: android.support.v7.view.menu.n.1
            @Override // android.widget.PopupWindow.OnDismissListener
            public void onDismiss() {
                n.this.e();
            }
        };
        this.f728a = context;
        this.b = hVar;
        this.f = view;
        this.c = z;
        this.d = i;
        this.e = i2;
    }

    public void a(PopupWindow.OnDismissListener onDismissListener) {
        this.k = onDismissListener;
    }

    public void a(View view) {
        this.f = view;
    }

    public void a(boolean z) {
        this.h = z;
        if (this.j != null) {
            this.j.b(z);
        }
    }

    public void a(int i) {
        this.g = i;
    }

    public void a() {
        if (!c()) {
            throw new IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
    }

    public m b() {
        if (this.j == null) {
            this.j = g();
        }
        return this.j;
    }

    public boolean c() {
        if (f()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(0, 0, false, false);
        return true;
    }

    public boolean a(int i, int i2) {
        if (f()) {
            return true;
        }
        if (this.f == null) {
            return false;
        }
        a(i, i2, true, true);
        return true;
    }

    private m g() {
        m tVar;
        Display defaultDisplay = ((WindowManager) this.f728a.getSystemService("window")).getDefaultDisplay();
        Point point = new Point();
        if (Build.VERSION.SDK_INT >= 17) {
            defaultDisplay.getRealSize(point);
        } else if (Build.VERSION.SDK_INT >= 13) {
            defaultDisplay.getSize(point);
        } else {
            point.set(defaultDisplay.getWidth(), defaultDisplay.getHeight());
        }
        if (Math.min(point.x, point.y) >= this.f728a.getResources().getDimensionPixelSize(R.dimen.abc_cascading_menus_min_smallest_width)) {
            tVar = new e(this.f728a, this.f, this.d, this.e, this.c);
        } else {
            tVar = new t(this.f728a, this.b, this.f, this.d, this.e, this.c);
        }
        tVar.a(this.b);
        tVar.a(this.l);
        tVar.a(this.f);
        tVar.a(this.i);
        tVar.b(this.h);
        tVar.a(this.g);
        return tVar;
    }

    private void a(int i, int i2, boolean z, boolean z2) {
        m b = b();
        b.c(z2);
        if (z) {
            if ((android.support.v4.view.f.a(this.g, ai.g(this.f)) & 7) == 5) {
                i -= this.f.getWidth();
            }
            b.b(i);
            b.c(i2);
            int i3 = (int) ((this.f728a.getResources().getDisplayMetrics().density * 48.0f) / 2.0f);
            b.a(new Rect(i - i3, i2 - i3, i + i3, i3 + i2));
        }
        b.d();
    }

    public void d() {
        if (f()) {
            this.j.e();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void e() {
        this.j = null;
        if (this.k != null) {
            this.k.onDismiss();
        }
    }

    public boolean f() {
        return this.j != null && this.j.f();
    }

    public void a(o.a aVar) {
        this.i = aVar;
        if (this.j != null) {
            this.j.a(aVar);
        }
    }
}
