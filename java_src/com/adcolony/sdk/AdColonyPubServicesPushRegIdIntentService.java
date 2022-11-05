package com.adcolony.sdk;

import android.app.IntentService;
import android.content.Intent;
import com.google.android.gms.gcm.GoogleCloudMessaging;
import com.google.android.gms.iid.InstanceID;
/* loaded from: classes.dex */
public class AdColonyPubServicesPushRegIdIntentService extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    private static final String f997a = "AdColonyPubServicesPushRegIdIntentService";

    public AdColonyPubServicesPushRegIdIntentService() {
        super(f997a);
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        try {
            String token = InstanceID.getInstance(this).getToken(bz.aK().ak(), GoogleCloudMessaging.INSTANCE_ID_SCOPE, null);
            cb.b(f997a, "GCM Registration Token: " + token, true);
            a(token);
            bz.aK().aB().a(token);
        } catch (Exception e) {
            cb.a(f997a, "Exception occurred when retrieving registration token->" + e + ". Registration to GCM incomplete.", e);
            bz.aK().aB().a(e);
        }
    }

    private void a(String str) {
        bz.aK().t(str);
    }
}
