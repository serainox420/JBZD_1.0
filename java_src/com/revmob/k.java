package com.revmob;

import com.revmob.ads.banner.RevMobBanner;
import com.revmob.internal.u;
import com.revmob.internal.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class k implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        RevMobBanner revMobBanner;
        try {
            revMobBanner = RevMob.e;
            revMobBanner.hide();
        } catch (Exception e) {
            u.a(e, null, w.c, null, "hideLoadedBanner");
        }
    }
}
