package com.revmob.ads.banner;

import android.view.View;
import android.view.ViewGroup;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ boolean f4755a;
    private /* synthetic */ RevMobBanner b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(RevMobBanner revMobBanner, boolean z) {
        this.b = revMobBanner;
        this.f4755a = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        View view;
        View view2;
        View view3;
        view = this.b.e;
        if (view != null) {
            view2 = this.b.e;
            ViewGroup viewGroup = (ViewGroup) view2.getParent();
            if (viewGroup != null) {
                view3 = this.b.e;
                viewGroup.removeView(view3);
            }
            if (!this.f4755a) {
                return;
            }
            this.b.e = null;
        }
    }
}
