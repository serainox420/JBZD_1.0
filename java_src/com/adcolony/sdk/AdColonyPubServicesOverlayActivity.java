package com.adcolony.sdk;

import android.os.Bundle;
/* loaded from: classes.dex */
public class AdColonyPubServicesOverlayActivity extends OverlayActivityImpl {
    @Override // com.adcolony.sdk.bi, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        cp.b().a(this);
    }
}
