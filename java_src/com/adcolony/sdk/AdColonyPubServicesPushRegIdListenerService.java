package com.adcolony.sdk;

import android.content.Intent;
import com.google.android.gms.iid.InstanceIDListenerService;
/* loaded from: classes.dex */
public class AdColonyPubServicesPushRegIdListenerService extends InstanceIDListenerService {
    @Override // com.google.android.gms.iid.InstanceIDListenerService
    public void onTokenRefresh() {
        startService(new Intent(this, AdColonyPubServicesPushRegIdIntentService.class));
    }
}
