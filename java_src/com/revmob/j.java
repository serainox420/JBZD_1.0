package com.revmob;

import android.app.Activity;
import android.widget.RelativeLayout;
import com.revmob.ads.banner.RevMobBanner;
import com.revmob.internal.RMLog;
import com.revmob.internal.u;
import com.revmob.internal.w;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class j implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ Activity f4816a;
    private /* synthetic */ String b;
    private /* synthetic */ RevMobAdsListener c;
    private /* synthetic */ int d;
    private /* synthetic */ int e;
    private /* synthetic */ int f;
    private /* synthetic */ int g;
    private /* synthetic */ int h;
    private /* synthetic */ RevMob i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(RevMob revMob, Activity activity, String str, RevMobAdsListener revMobAdsListener, int i, int i2, int i3, int i4, int i5) {
        this.i = revMob;
        this.f4816a = activity;
        this.b = str;
        this.c = revMobAdsListener;
        this.d = i;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        RevMobBanner revMobBanner;
        RelativeLayout.LayoutParams layoutParams;
        RelativeLayout.LayoutParams layoutParams2;
        RelativeLayout relativeLayout;
        RelativeLayout relativeLayout2;
        RevMobBanner revMobBanner2;
        RelativeLayout.LayoutParams layoutParams3;
        int screenWidth;
        int screenWidth2;
        RelativeLayout.LayoutParams layoutParams4;
        RelativeLayout relativeLayout3;
        RelativeLayout relativeLayout4;
        try {
            RevMobBanner unused = RevMob.e = this.i.createBanner(this.f4816a, this.b, this.c);
            revMobBanner = RevMob.e;
            revMobBanner.determineDefaultDimensions();
            RelativeLayout unused2 = RevMob.d = new RelativeLayout(this.f4816a.getApplicationContext());
            if (this.d == -144 && this.e == -144 && this.f == -144 && this.g == -144) {
                screenWidth = this.i.screenWidth(this.f4816a);
                float f = RevMobBanner.DEFAULT_HEIGHT_IN_DIP;
                screenWidth2 = this.i.screenWidth(this.f4816a);
                RelativeLayout.LayoutParams unused3 = RevMob.f = new RelativeLayout.LayoutParams(screenWidth, (int) ((f * screenWidth2) / RevMobBanner.DEFAULT_WIDTH_IN_DIP));
                layoutParams4 = RevMob.f;
                layoutParams4.addRule(14);
                if (this.h == 48) {
                    relativeLayout4 = RevMob.d;
                    relativeLayout4.setGravity(49);
                } else {
                    relativeLayout3 = RevMob.d;
                    relativeLayout3.setGravity(81);
                }
            } else {
                RelativeLayout.LayoutParams unused4 = RevMob.f = new RelativeLayout.LayoutParams(this.f, this.g);
                layoutParams = RevMob.f;
                layoutParams.leftMargin = this.d;
                layoutParams2 = RevMob.f;
                layoutParams2.topMargin = this.e;
            }
            Activity activity = this.f4816a;
            relativeLayout = RevMob.d;
            activity.addContentView(relativeLayout, new RelativeLayout.LayoutParams(-1, -1));
            relativeLayout2 = RevMob.d;
            revMobBanner2 = RevMob.e;
            layoutParams3 = RevMob.f;
            relativeLayout2.addView(revMobBanner2, layoutParams3);
            Activity unused5 = RevMob.g = this.f4816a;
        } catch (Exception e) {
            RMLog.e(e.toString());
            u.a(e, null, w.c, null, "preloadBanner");
        }
    }
}
