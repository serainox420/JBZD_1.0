package com.inmobi.commons.analytics.net;

import android.content.Context;
import android.os.Build;
import com.applovin.impl.sdk.NativeAdImpl;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.db.AnalyticsSQLiteHelper;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
import com.inmobi.commons.thirdparty.Base62;
import com.pubmatic.sdk.common.CommonConstants;
import io.fabric.sdk.android.services.common.a;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class AnalyticsPayloadBuilder {
    public AnalyticsPayload getPayloadList(List<AnalyticsEvent> list, Context context) {
        int i;
        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "PayloadBuilder->getPayloadList:");
        JSONArray jSONArray = new JSONArray();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2 = i) {
            arrayList.clear();
            AnalyticsEvent analyticsEvent = list.get(i2);
            String eventSessionId = analyticsEvent.getEventSessionId();
            i = i2;
            while (i < list.size() && eventSessionId.equals(list.get(i).getEventSessionId())) {
                arrayList2.add(Long.valueOf(list.get(i).getEventTableId()));
                arrayList.add(list.get(i));
                i++;
            }
            jSONArray.put(a(a(eventSessionId, analyticsEvent.getEventSessionTimeStamp(), context), a(arrayList)));
        }
        AnalyticsPayload analyticsPayload = new AnalyticsPayload(null, arrayList2);
        if (jSONArray.length() != 0) {
            analyticsPayload.setCompletePayload(jSONArray.toString());
            analyticsPayload.setPayloadSize(list.size());
        }
        return analyticsPayload;
    }

    private JSONObject a(JSONObject jSONObject, JSONArray jSONArray) {
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("session", jSONObject);
        } catch (JSONException e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Session addition to payload failed");
        }
        try {
            jSONObject2.put("events", jSONArray);
        } catch (JSONException e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Events addition to payload failed");
        }
        return jSONObject2;
    }

    private JSONObject a(String str, long j, Context context) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("ft", SessionInfo.getFirstTime());
            jSONObject.put("a", context.getPackageName());
            jSONObject.put("an", AnalyticsUtils.getApplicationName(context));
            jSONObject.put("av", AnalyticsUtils.getAppVersion(context));
            jSONObject.put("p", a.ANDROID_CLIENT_TYPE);
            jSONObject.put(NativeAdImpl.QUERY_PARAM_VIDEO_PERCENT_VIEWED, Build.VERSION.RELEASE);
            jSONObject.put("ca", InternalSDKUtil.getConnectivityType(context));
            jSONObject.put("ma", Build.MANUFACTURER);
            jSONObject.put("mo", Build.MODEL);
            jSONObject.put(AnalyticsEvent.TYPE_START_SESSION, str);
            jSONObject.put("sts", j);
            jSONObject.put("sv", InternalSDKUtil.INMOBI_SDK_RELEASE_VERSION);
            if (AnalyticsUtils.getCountryISO(context) != null) {
                jSONObject.put("co", AnalyticsUtils.getCountryISO(context));
            }
        } catch (NullPointerException e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "null passed as context", e);
        } catch (JSONException e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Creation of session object failed", e2);
        }
        return jSONObject;
    }

    private JSONArray a(List<AnalyticsEvent> list) {
        JSONArray jSONArray = new JSONArray();
        for (AnalyticsEvent analyticsEvent : list) {
            JSONObject jSONObject = new JSONObject();
            try {
                String fromBase10 = Base62.fromBase10(analyticsEvent.getEventId());
                if (fromBase10 != null) {
                    jSONObject.put("eid", fromBase10);
                }
                jSONObject.put("t", analyticsEvent.getEventType());
                jSONObject.put("ts", analyticsEvent.getEventTimeStamp());
                jSONObject.put("ld", analyticsEvent.getEventLevelId());
                jSONObject.put("ls", analyticsEvent.getEventLevelStatus());
                jSONObject.put("ln", analyticsEvent.getEventLevelName());
                if (analyticsEvent.getEventAttributeMap() != null) {
                    try {
                        jSONObject.put(AnalyticsSQLiteHelper.EVENT_LIST_AM, new JSONObject(analyticsEvent.getEventAttributeMap()));
                    } catch (Exception e) {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Events attribute map is incorrect. Not sending custom event map.");
                    }
                }
                jSONObject.put("tt", analyticsEvent.getEventTimeTaken());
                if (analyticsEvent.getEventAttemptCount() != null) {
                    jSONObject.put("ac", 1);
                }
                jSONObject.put("at", analyticsEvent.getEventAttemptTime());
                jSONObject.put("en", analyticsEvent.getEventCustomName());
                if (AnalyticsEvent.TYPE_USER_ATTRIBUTE.equals(analyticsEvent.getEventType())) {
                    jSONObject.put("k", analyticsEvent.getAttributeName());
                    jSONObject.put("v", analyticsEvent.getAttributeValue());
                }
                if (AnalyticsEvent.TYPE_TAG_TRANSACTION.equals(analyticsEvent.getEventType())) {
                    jSONObject.put("in", analyticsEvent.getTransactionItemName());
                    int transactionItemCount = analyticsEvent.getTransactionItemCount();
                    if (transactionItemCount > 0) {
                        jSONObject.put("n", transactionItemCount);
                    }
                    jSONObject.put("id", analyticsEvent.getTransactionItemDescription());
                    jSONObject.put(CommonConstants.REQUESTPARAM_IP, analyticsEvent.getTransactionItemPrice());
                    jSONObject.put("c", analyticsEvent.getTransactionCurrencyCode());
                    jSONObject.put(AnalyticsEvent.TYPE_TAG_TRANSACTION, analyticsEvent.getTransactionProductId());
                    jSONObject.put("ti", analyticsEvent.getTransactionId());
                    int transactionItemType = analyticsEvent.getTransactionItemType();
                    if (AnalyticsEvent.TRANSACTION_ITEM_TYPE.INVALID.getValue() != transactionItemType) {
                        jSONObject.put("it", transactionItemType);
                    }
                    int transactionStatus = analyticsEvent.getTransactionStatus();
                    if (AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.INVALID.getValue() != transactionStatus) {
                        jSONObject.put("tp", transactionStatus);
                    }
                }
            } catch (Exception e2) {
                Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Creation of events json object failed", e2);
            }
            jSONArray.put(jSONObject);
        }
        return jSONArray;
    }
}
