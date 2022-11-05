package com.revmob.ads.banner;

import android.view.View;
import android.view.ViewTreeObserver;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4750a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(RevMobBanner revMobBanner) {
        this.f4750a = revMobBanner;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        View view2;
        view = this.f4750a.e;
        if (view != null) {
            view2 = this.f4750a.e;
            if (!view2.isShown()) {
                return;
            }
            this.f4750a.reportShowOrHidden();
        }
    }
}
