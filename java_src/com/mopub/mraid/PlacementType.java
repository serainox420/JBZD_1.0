package com.mopub.mraid;

import java.util.Locale;
/* loaded from: classes3.dex */
public enum PlacementType {
    INLINE,
    INTERSTITIAL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public String a() {
        return toString().toLowerCase(Locale.US);
    }
}
