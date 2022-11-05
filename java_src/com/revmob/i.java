package com.revmob;

import com.revmob.ads.banner.RevMobBanner;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class i implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        RevMobBanner revMobBanner;
        revMobBanner = RevMob.e;
        revMobBanner.show();
    }
}
