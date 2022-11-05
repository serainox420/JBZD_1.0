package com.applovin.impl.sdk;

import android.content.Intent;
import android.net.Uri;
import com.applovin.sdk.AppLovinEventParameters;
import com.applovin.sdk.AppLovinEventService;
import com.applovin.sdk.AppLovinEventTypes;
import com.applovin.sdk.AppLovinSdk;
import com.loopme.debugging.Params;
import com.pubmatic.sdk.common.pubmatic.PubMaticConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* loaded from: classes.dex */
public class EventServiceImpl implements AppLovinEventService {

    /* renamed from: a  reason: collision with root package name */
    private final AppLovinSdkImpl f1577a;
    private final List b;

    public EventServiceImpl(AppLovinSdk appLovinSdk) {
        this.f1577a = (AppLovinSdkImpl) appLovinSdk;
        this.b = Arrays.asList(((String) ((AppLovinSdkImpl) appLovinSdk).a(bx.aX)).split(","));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Uri a(bt btVar, t tVar) {
        r dataCollector = this.f1577a.getDataCollector();
        v a2 = dataCollector.a();
        u b = dataCollector.b();
        boolean contains = this.b.contains(btVar.a());
        Uri.Builder appendQueryParameter = Uri.parse((String) this.f1577a.a(bx.aW)).buildUpon().appendQueryParameter("event", contains ? btVar.a() : "postinstall").appendQueryParameter("ts", Long.toString(btVar.c())).appendQueryParameter("platform", "Android").appendQueryParameter(PubMaticConstants.MODEL_PARAM, a2.f1670a).appendQueryParameter("package_name", b.c).appendQueryParameter("sdk_key", this.f1577a.getSdkKey()).appendQueryParameter("idfa", tVar.b).appendQueryParameter("dnt", Boolean.toString(tVar.f1668a)).appendQueryParameter("ia", Long.toString(b.d)).appendQueryParameter("api_did", (String) this.f1577a.a(bx.c)).appendQueryParameter("brand", a2.c).appendQueryParameter(PubMaticConstants.MODEL_PARAM, a2.f1670a).appendQueryParameter("revision", a2.d).appendQueryParameter(Params.SDK_VERSION, AppLovinSdk.VERSION).appendQueryParameter(PubMaticConstants.OS_PARAM, a2.b).appendQueryParameter("app_version", this.f1577a.getDataCollector().b().b);
        if (!contains) {
            appendQueryParameter = appendQueryParameter.appendQueryParameter("sub_event", btVar.a());
        }
        return appendQueryParameter.build();
    }

    private Map a(Map map) {
        HashMap hashMap = new HashMap();
        if (map != null) {
            for (Map.Entry entry : map.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (!(key instanceof String) || !(value instanceof String)) {
                    this.f1577a.getLogger().w("EventServiceImpl", "Unexpected class type in trackEvent(); all keys and values passed as parameters must be String. Encountered " + key.getClass().getCanonicalName() + "/" + value.getClass().getCanonicalName() + "; will use toString() value instead, which may be unexpected...");
                    hashMap.put(key.toString(), value.toString());
                } else {
                    hashMap.put((String) key, (String) value);
                }
            }
        }
        return hashMap;
    }

    private void a(bt btVar) {
        if (!((Boolean) this.f1577a.a(bx.aY)).booleanValue()) {
            return;
        }
        this.f1577a.getLogger().d("EventServiceImpl", "Tracking event: " + btVar);
        a(new w(this, btVar));
    }

    private void a(ck ckVar) {
        this.f1577a.a().a(new cj(this.f1577a, ckVar), cs.BACKGROUND);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackCheckout(String str, Map map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap(1);
        hashMap.put("transaction_id", str);
        trackEvent("checkout", hashMap);
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str) {
        trackEvent(str, new HashMap());
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackEvent(String str, Map map) {
        a(new bt(str, a(map), System.currentTimeMillis(), di.b(UUID.randomUUID().toString())));
    }

    @Override // com.applovin.sdk.AppLovinEventService
    public void trackInAppPurchase(Intent intent, Map map) {
        HashMap hashMap = map != null ? new HashMap(map) : new HashMap();
        try {
            hashMap.put(AppLovinEventParameters.IN_APP_PURCHASE_DATA, intent.getStringExtra("INAPP_PURCHASE_DATA"));
            hashMap.put(AppLovinEventParameters.IN_APP_DATA_SIGNATURE, intent.getStringExtra("INAPP_DATA_SIGNATURE"));
        } catch (Exception e) {
            this.f1577a.getLogger().userError("EventServiceImpl", "Unable to track in app purchase; invalid purchanse intent", e);
        }
        trackEvent(AppLovinEventTypes.USER_COMPLETED_IN_APP_PURCHASE, hashMap);
    }
}
