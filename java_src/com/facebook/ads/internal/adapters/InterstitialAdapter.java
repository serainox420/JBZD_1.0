package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class InterstitialAdapter implements AdAdapter {
    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public final AdPlacementType getPlacementType() {
        return AdPlacementType.INTERSTITIAL;
    }

    public abstract void loadInterstitialAd(Context context, InterstitialAdapterListener interstitialAdapterListener, Map<String, Object> map, com.facebook.ads.internal.g.f fVar);

    public abstract boolean show();
}
