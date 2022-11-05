package com.adcolony.sdk;

import android.os.Bundle;
import com.google.android.gms.gcm.GcmListenerService;
/* loaded from: classes.dex */
public class AdColonyPubServicesPushGcmListenerService extends GcmListenerService {

    /* renamed from: a  reason: collision with root package name */
    private static final String f995a = "AdColonyPubServicesPushGcmListenerService";
    private android.support.v4.app.as b;

    @Override // com.google.android.gms.gcm.GcmListenerService
    public void onMessageReceived(String str, Bundle bundle) {
        cb.b(f995a, "OnMessageReceived", true);
        bz.aK().aI().a(bundle);
    }
}
