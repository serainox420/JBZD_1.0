package com.inmobi.monetization.internal;

import com.facebook.GraphResponse;
import com.facebook.internal.AnalyticsEvents;
import com.facebook.internal.NativeProtocol;
import com.inmobi.commons.analytics.bootstrapper.AnalyticsInitializer;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.network.Request;
import com.inmobi.commons.network.Response;
import com.inmobi.commons.network.ServiceProvider;
import com.inmobi.commons.network.abstraction.INetworkListener;
import com.inmobi.monetization.internal.objects.LtvpRuleCache;
import com.mdotm.android.constants.MdotMConstants;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class LtvpRuleProcessor implements INetworkListener {

    /* renamed from: a  reason: collision with root package name */
    private ServiceProvider f3857a = ServiceProvider.getInstance();

    /* loaded from: classes2.dex */
    public enum ActionsRule {
        MEDIATION(0),
        NO_ADS(1),
        ACTIONS_TO_MEDIATION(2),
        ACTIONS_ONLY(3);
        

        /* renamed from: a  reason: collision with root package name */
        int f3858a;

        ActionsRule(int i) {
            this.f3858a = i;
        }

        public int getValue() {
            return this.f3858a;
        }

        static ActionsRule a(int i) {
            switch (i) {
                case 1:
                    return NO_ADS;
                case 2:
                    return ACTIONS_TO_MEDIATION;
                case 3:
                    return ACTIONS_ONLY;
                default:
                    return MEDIATION;
            }
        }
    }

    private LtvpRuleProcessor() {
    }

    public static LtvpRuleProcessor getInstance() {
        return new LtvpRuleProcessor();
    }

    public ActionsRule getLtvpRuleConfig(long j) {
        int ltvpRule;
        ActionsRule.MEDIATION.getValue();
        LtvpRuleCache ltvpRuleCache = LtvpRuleCache.getInstance(InternalSDKUtil.getContext());
        if (ltvpRuleCache.getHardExpiryForLtvpRule() <= System.currentTimeMillis() || ltvpRuleCache.getHardExpiryForLtvpRule() == 0) {
            Log.internal(Constants.LOG_TAG, "Hard Expiry or 1st rule fetch. Default mediation. Fetching Rule");
            dispatchLtvpRule();
            ltvpRuleCache.clearLtvpRuleCache();
            return ActionsRule.MEDIATION;
        }
        if (ltvpRuleCache.getSoftExpiryForLtvpRule() <= System.currentTimeMillis()) {
            Log.internal(Constants.LOG_TAG, "Soft Expiry. Default mediation. Fetching Rule");
            dispatchLtvpRule();
            ltvpRule = ltvpRuleCache.getLtvpRule(j);
        } else {
            Log.internal(Constants.LOG_TAG, "Valid rule");
            ltvpRule = ltvpRuleCache.getLtvpRule(j);
        }
        return ActionsRule.a(ltvpRule);
    }

    public void dispatchLtvpRule() {
        Log.internal(Constants.LOG_TAG, "Fetching LTVP Rule");
        Request request = new Request(AnalyticsInitializer.getConfigParams().getEndPoints().getRulesUrl(), Request.Format.KEY_VAL, Request.Method.GET);
        request.fillAppInfo();
        request.fillDeviceInfo();
        this.f3857a.executeTask(request, this);
    }

    @Override // com.inmobi.commons.network.abstraction.INetworkListener
    public void onRequestSucceded(Request request, Response response) {
        try {
            if (response.getStatusCode() == 200) {
                JSONObject jSONObject = new JSONObject(response.getResponseBody());
                if (!jSONObject.getBoolean(GraphResponse.SUCCESS_KEY)) {
                    int i = jSONObject.getInt(NativeProtocol.BRIDGE_ARG_ERROR_CODE);
                    Log.internal(Constants.LOG_TAG, "Received LTVP rule fetch failure: " + i + " : " + jSONObject.getString(AnalyticsEvents.PARAMETER_SHARE_ERROR_MESSAGE));
                    return;
                }
                JSONObject jSONObject2 = jSONObject.getJSONObject(MdotMConstants.RESPONSE);
                Log.debug(Constants.LOG_TAG, "Received LTVP rule fetch success: " + jSONObject2.toString());
                LtvpRulesObject ltvpRulesObject = new LtvpRulesObject();
                String string = jSONObject2.getString("rule_id");
                long j = jSONObject2.getLong("ts");
                JSONObject jSONObject3 = jSONObject2.getJSONObject("exp");
                long j2 = jSONObject3.getLong("se");
                long j3 = jSONObject3.getLong("he");
                HashMap<String, Integer> hashMap = new HashMap<>();
                JSONObject jSONObject4 = jSONObject2.getJSONObject("rules");
                Iterator<String> keys = jSONObject4.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, Integer.valueOf(jSONObject4.getInt(String.valueOf(next))));
                }
                ltvpRulesObject.setRuleId(string);
                ltvpRulesObject.setTimeStamp(j);
                ltvpRulesObject.setSoftExpiry(j2);
                ltvpRulesObject.setHardExpiry(j3);
                ltvpRulesObject.setRules(hashMap);
                Log.internal(Constants.LOG_TAG, "Ltvp Rule received" + ltvpRulesObject.getRules().toString());
                LtvpRuleCache.getInstance(InternalSDKUtil.getContext()).setLtvpRuleConfig(ltvpRulesObject);
            }
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Exception getting ltvp rule", e);
        }
    }

    @Override // com.inmobi.commons.network.abstraction.INetworkListener
    public void onRequestFailed(Request request, Response response) {
        try {
            Log.internal(Constants.LOG_TAG, "Ltvp Rule error" + response.getError().toString());
        } catch (Exception e) {
            Log.internal(Constants.LOG_TAG, "Ltvp Rule exception", e);
        }
    }
}
