package com.revmob.ads.banner;

import android.view.View;
import com.revmob.internal.t;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class c implements t {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ RevMobBanner f4748a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(RevMobBanner revMobBanner) {
        this.f4748a = revMobBanner;
    }

    @Override // com.revmob.internal.t
    public final void a() {
    }

    @Override // com.revmob.internal.t
    public final boolean a(String str) {
        boolean z;
        View view;
        View.OnClickListener onClickListener;
        View view2;
        if (str.endsWith("#click")) {
            z = this.f4748a.j;
            if (z) {
                return true;
            }
            view = this.f4748a.e;
            view.setOnClickListener(null);
            onClickListener = this.f4748a.h;
            view2 = this.f4748a.e;
            onClickListener.onClick(view2);
            return true;
        }
        return true;
    }
}
