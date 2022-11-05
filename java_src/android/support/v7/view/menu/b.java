package android.support.v7.view.menu;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.view.ai;
import android.support.v7.view.menu.o;
import android.support.v7.view.menu.p;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
/* compiled from: BaseMenuPresenter.java */
@RestrictTo
/* loaded from: classes.dex */
public abstract class b implements o {

    /* renamed from: a  reason: collision with root package name */
    protected Context f709a;
    protected Context b;
    protected h c;
    protected LayoutInflater d;
    protected LayoutInflater e;
    protected p f;
    private o.a g;
    private int h;
    private int i;
    private int j;

    public abstract void a(j jVar, p.a aVar);

    public b(Context context, int i, int i2) {
        this.f709a = context;
        this.d = LayoutInflater.from(context);
        this.h = i;
        this.i = i2;
    }

    @Override // android.support.v7.view.menu.o
    public void a(Context context, h hVar) {
        this.b = context;
        this.e = LayoutInflater.from(this.b);
        this.c = hVar;
    }

    public p a(ViewGroup viewGroup) {
        if (this.f == null) {
            this.f = (p) this.d.inflate(this.h, viewGroup, false);
            this.f.a(this.c);
            a(true);
        }
        return this.f;
    }

    @Override // android.support.v7.view.menu.o
    public void a(boolean z) {
        int i;
        int i2;
        ViewGroup viewGroup = (ViewGroup) this.f;
        if (viewGroup != null) {
            if (this.c != null) {
                this.c.j();
                ArrayList<j> i3 = this.c.i();
                int size = i3.size();
                int i4 = 0;
                i = 0;
                while (i4 < size) {
                    j jVar = i3.get(i4);
                    if (a(i, jVar)) {
                        View childAt = viewGroup.getChildAt(i);
                        j itemData = childAt instanceof p.a ? ((p.a) childAt).getItemData() : null;
                        View a2 = a(jVar, childAt, viewGroup);
                        if (jVar != itemData) {
                            a2.setPressed(false);
                            ai.y(a2);
                        }
                        if (a2 != childAt) {
                            a(a2, i);
                        }
                        i2 = i + 1;
                    } else {
                        i2 = i;
                    }
                    i4++;
                    i = i2;
                }
            } else {
                i = 0;
            }
            while (i < viewGroup.getChildCount()) {
                if (!a(viewGroup, i)) {
                    i++;
                }
            }
        }
    }

    protected void a(View view, int i) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup != null) {
            viewGroup.removeView(view);
        }
        ((ViewGroup) this.f).addView(view, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean a(ViewGroup viewGroup, int i) {
        viewGroup.removeViewAt(i);
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(o.a aVar) {
        this.g = aVar;
    }

    public o.a d() {
        return this.g;
    }

    public p.a b(ViewGroup viewGroup) {
        return (p.a) this.d.inflate(this.i, viewGroup, false);
    }

    public View a(j jVar, View view, ViewGroup viewGroup) {
        p.a b;
        if (view instanceof p.a) {
            b = (p.a) view;
        } else {
            b = b(viewGroup);
        }
        a(jVar, b);
        return (View) b;
    }

    public boolean a(int i, j jVar) {
        return true;
    }

    @Override // android.support.v7.view.menu.o
    public void a(h hVar, boolean z) {
        if (this.g != null) {
            this.g.a(hVar, z);
        }
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(u uVar) {
        if (this.g != null) {
            return this.g.a(uVar);
        }
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a() {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean a(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public boolean b(h hVar, j jVar) {
        return false;
    }

    @Override // android.support.v7.view.menu.o
    public int b() {
        return this.j;
    }

    public void a(int i) {
        this.j = i;
    }
}
