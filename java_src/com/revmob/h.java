package com.revmob;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.revmob.ads.banner.RevMobBanner;
import com.revmob.internal.RMLog;
import com.revmob.internal.u;
import com.revmob.internal.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class h implements Runnable {
    @Override // java.lang.Runnable
    public final void run() {
        RevMobBanner revMobBanner;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        RelativeLayout relativeLayout3;
        RelativeLayout relativeLayout4;
        RelativeLayout relativeLayout5;
        RevMobBanner revMobBanner2;
        RevMobBanner revMobBanner3;
        RevMobBanner revMobBanner4;
        try {
            revMobBanner = RevMob.e;
            if (revMobBanner != null) {
                revMobBanner2 = RevMob.e;
                if (revMobBanner2.getParent() != null) {
                    revMobBanner3 = RevMob.e;
                    revMobBanner4 = RevMob.e;
                    ((ViewGroup) revMobBanner3.getParent()).removeView(revMobBanner4);
                }
            }
            relativeLayout = RevMob.d;
            if (relativeLayout != null) {
                relativeLayout2 = RevMob.d;
                if (relativeLayout2.getParent() != null) {
                    relativeLayout4 = RevMob.d;
                    relativeLayout5 = RevMob.d;
                    ((ViewGroup) relativeLayout4.getParent()).removeView(relativeLayout5);
                }
                relativeLayout3 = RevMob.d;
                relativeLayout3.setVisibility(8);
                RelativeLayout unused = RevMob.d = null;
            }
            RevMobBanner unused2 = RevMob.e = null;
            Activity unused3 = RevMob.g = null;
        } catch (Exception e) {
            RMLog.e(e.toString());
            u.a(e, null, w.c, null, "releaseBanner");
        }
    }
}
