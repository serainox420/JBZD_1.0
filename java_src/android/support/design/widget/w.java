package android.support.design.widget;

import android.support.v4.view.ai;
import android.view.View;
/* compiled from: ViewOffsetHelper.java */
/* loaded from: classes.dex */
class w {

    /* renamed from: a  reason: collision with root package name */
    private final View f142a;
    private int b;
    private int c;
    private int d;
    private int e;

    public w(View view) {
        this.f142a = view;
    }

    public void a() {
        this.b = this.f142a.getTop();
        this.c = this.f142a.getLeft();
        d();
    }

    private void d() {
        ai.e(this.f142a, this.d - (this.f142a.getTop() - this.b));
        ai.f(this.f142a, this.e - (this.f142a.getLeft() - this.c));
    }

    public boolean a(int i) {
        if (this.d != i) {
            this.d = i;
            d();
            return true;
        }
        return false;
    }

    public boolean b(int i) {
        if (this.e != i) {
            this.e = i;
            d();
            return true;
        }
        return false;
    }

    public int b() {
        return this.d;
    }

    public int c() {
        return this.b;
    }
}
