package com.applovin.impl.adview;

import android.view.MotionEvent;
import android.view.View;
/* loaded from: classes.dex */
class p implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ o f1563a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(o oVar) {
        this.f1563a = oVar;
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        if (!view.hasFocus()) {
            view.requestFocus();
            return false;
        }
        return false;
    }
}
