package com.revmob.ads.interstitial;

import android.view.MotionEvent;
import android.view.View;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class k implements View.OnTouchListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4775a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(a aVar) {
        this.f4775a = aVar;
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        a.e(this.f4775a);
        return false;
    }
}
