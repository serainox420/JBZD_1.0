package com.facebook.ads.internal.adapters;

import com.facebook.ads.internal.server.AdPlacementType;
/* loaded from: classes.dex */
public interface AdAdapter {
    AdPlacementType getPlacementType();

    void onDestroy();
}
