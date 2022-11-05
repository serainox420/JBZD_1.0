package com.revmob.ads.interstitial;

import android.view.View;
import android.view.animation.AlphaAnimation;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class m implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4777a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(a aVar) {
        this.f4777a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ArrayList arrayList;
        arrayList = this.f4777a.P;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            AlphaAnimation alphaAnimation = new AlphaAnimation(1.0f, (float) BitmapDescriptorFactory.HUE_RED);
            alphaAnimation.setDuration(500L);
            alphaAnimation.setAnimationListener(new n(view));
            view.startAnimation(alphaAnimation);
        }
    }
}
