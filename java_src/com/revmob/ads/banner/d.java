package com.revmob.ads.banner;

import android.view.View;
import com.revmob.internal.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class d implements t {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4749a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(RevMobBanner revMobBanner) {
        this.f4749a = revMobBanner;
    }

    @Override // com.revmob.internal.t
    public final void a() {
    }

    @Override // com.revmob.internal.t
    public final boolean a(String str) {
        boolean z;
        View view;
        com.revmob.ads.banner.a.b bVar;
        View.OnClickListener onClickListener;
        View view2;
        z = this.f4749a.j;
        if (!z) {
            view = this.f4749a.e;
            view.setOnClickListener(null);
            bVar = this.f4749a.c;
            bVar.a(str);
            onClickListener = this.f4749a.h;
            view2 = this.f4749a.e;
            onClickListener.onClick(view2);
            return true;
        }
        return true;
    }
}
