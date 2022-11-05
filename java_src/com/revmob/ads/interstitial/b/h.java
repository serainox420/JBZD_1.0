package com.revmob.ads.interstitial.b;

import com.revmob.FullscreenActivity;
import com.revmob.internal.t;
/* loaded from: classes3.dex */
public final class h extends a implements t {
    public h(FullscreenActivity fullscreenActivity) {
        super(fullscreenActivity);
    }

    @Override // com.revmob.internal.t
    public final void a() {
        this.f4762a.e();
    }

    @Override // com.revmob.internal.t
    public final boolean a(String str) {
        if (str.endsWith("#close")) {
            return c();
        }
        if (!str.endsWith("#click")) {
            return true;
        }
        return b();
    }
}
