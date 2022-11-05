package com.intentsoftware.addapptr.ad;

import android.view.View;
import android.view.ViewGroup;
import com.intentsoftware.addapptr.AdNetwork;
import com.intentsoftware.addapptr.ad.NativeAd;
/* compiled from: NativeAdData.java */
/* loaded from: classes2.dex */
public interface d {
    void attachToLayout(ViewGroup viewGroup);

    void detachFromLayout();

    NativeAd.Type getAdType();

    String getAsset(String str);

    View getBrandingLogo();

    AdNetwork getNetwork();

    NativeAd.a getRating();

    boolean isExpired();

    boolean isReady();
}
