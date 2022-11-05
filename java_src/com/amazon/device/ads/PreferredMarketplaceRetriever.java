package com.amazon.device.ads;

import android.content.Context;
/* loaded from: classes.dex */
interface PreferredMarketplaceRetriever {
    String retrievePreferredMarketplace(Context context);

    /* loaded from: classes.dex */
    public static class NullPreferredMarketplaceRetriever implements PreferredMarketplaceRetriever {
        @Override // com.amazon.device.ads.PreferredMarketplaceRetriever
        public String retrievePreferredMarketplace(Context context) {
            return null;
        }
    }
}
