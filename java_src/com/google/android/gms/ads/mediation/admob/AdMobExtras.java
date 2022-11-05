package com.google.android.gms.ads.mediation.admob;

import android.os.Bundle;
import com.google.ads.mediation.h;
@Deprecated
/* loaded from: classes.dex */
public final class AdMobExtras implements h {
    private final Bundle mExtras;

    public AdMobExtras(Bundle bundle) {
        this.mExtras = bundle != null ? new Bundle(bundle) : null;
    }

    public Bundle getExtras() {
        return this.mExtras;
    }
}
