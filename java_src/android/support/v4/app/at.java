package android.support.v4.app;

import android.view.View;
import android.view.ViewTreeObserver;
/* compiled from: OneShotPreDrawListener.java */
/* loaded from: classes.dex */
class at implements View.OnAttachStateChangeListener, ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a  reason: collision with root package name */
    private final View f249a;
    private ViewTreeObserver b;
    private final Runnable c;

    private at(View view, Runnable runnable) {
        this.f249a = view;
        this.b = view.getViewTreeObserver();
        this.c = runnable;
    }

    public static at a(View view, Runnable runnable) {
        at atVar = new at(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(atVar);
        view.addOnAttachStateChangeListener(atVar);
        return atVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        a();
        this.c.run();
        return true;
    }

    public void a() {
        if (this.b.isAlive()) {
            this.b.removeOnPreDrawListener(this);
        } else {
            this.f249a.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f249a.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.b = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        a();
    }
}
