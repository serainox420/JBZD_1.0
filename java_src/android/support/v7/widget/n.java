package android.support.v7.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.ColorStateList;
import android.view.View;
/* compiled from: CardViewApi21.java */
@TargetApi(21)
/* loaded from: classes.dex */
class n implements q {
    @Override // android.support.v7.widget.q
    public void a(o oVar, Context context, ColorStateList colorStateList, float f, float f2, float f3) {
        oVar.a(new aj(colorStateList, f));
        View d = oVar.d();
        d.setClipToOutline(true);
        d.setElevation(f2);
        b(oVar, f3);
    }

    @Override // android.support.v7.widget.q
    public void a(o oVar, float f) {
        j(oVar).a(f);
    }

    @Override // android.support.v7.widget.q
    public void a() {
    }

    @Override // android.support.v7.widget.q
    public void b(o oVar, float f) {
        j(oVar).a(f, oVar.a(), oVar.b());
        f(oVar);
    }

    @Override // android.support.v7.widget.q
    public float a(o oVar) {
        return j(oVar).a();
    }

    @Override // android.support.v7.widget.q
    public float b(o oVar) {
        return d(oVar) * 2.0f;
    }

    @Override // android.support.v7.widget.q
    public float c(o oVar) {
        return d(oVar) * 2.0f;
    }

    @Override // android.support.v7.widget.q
    public float d(o oVar) {
        return j(oVar).b();
    }

    @Override // android.support.v7.widget.q
    public void c(o oVar, float f) {
        oVar.d().setElevation(f);
    }

    @Override // android.support.v7.widget.q
    public float e(o oVar) {
        return oVar.d().getElevation();
    }

    public void f(o oVar) {
        if (!oVar.a()) {
            oVar.a(0, 0, 0, 0);
            return;
        }
        float a2 = a(oVar);
        float d = d(oVar);
        int ceil = (int) Math.ceil(ak.b(a2, d, oVar.b()));
        int ceil2 = (int) Math.ceil(ak.a(a2, d, oVar.b()));
        oVar.a(ceil, ceil2, ceil, ceil2);
    }

    @Override // android.support.v7.widget.q
    public void g(o oVar) {
        b(oVar, a(oVar));
    }

    @Override // android.support.v7.widget.q
    public void h(o oVar) {
        b(oVar, a(oVar));
    }

    @Override // android.support.v7.widget.q
    public void a(o oVar, ColorStateList colorStateList) {
        j(oVar).a(colorStateList);
    }

    @Override // android.support.v7.widget.q
    public ColorStateList i(o oVar) {
        return j(oVar).c();
    }

    private aj j(o oVar) {
        return (aj) oVar.c();
    }
}
