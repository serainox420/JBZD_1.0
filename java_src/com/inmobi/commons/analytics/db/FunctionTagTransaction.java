package com.inmobi.commons.analytics.db;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.analytics.util.SessionInfo;
import com.inmobi.commons.internal.Log;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2.dex */
public class FunctionTagTransaction extends AnalyticsFunctions {

    /* renamed from: a  reason: collision with root package name */
    private Context f3742a;
    private Intent b;
    private Bundle c;

    public FunctionTagTransaction(Context context, Intent intent, Bundle bundle) {
        this.f3742a = context;
        this.b = intent;
        this.c = bundle;
    }

    private AnalyticsEvent a() {
        int value;
        AnalyticsEvent analyticsEvent;
        Exception e;
        AnalyticsEvent analyticsEvent2;
        try {
            if (SessionInfo.getSessionId(this.f3742a) != null && this.b != null) {
                AnalyticsEvent analyticsEvent3 = new AnalyticsEvent(AnalyticsEvent.TYPE_TAG_TRANSACTION);
                int intExtra = this.b.getIntExtra("RESPONSE_CODE", 0);
                String stringExtra = this.b.getStringExtra("INAPP_PURCHASE_DATA");
                if (intExtra == 0) {
                    try {
                        JSONObject jSONObject = new JSONObject(stringExtra);
                        analyticsEvent3.setTransactionId(jSONObject.getString("orderId"));
                        analyticsEvent3.setTransactionProductId(jSONObject.getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID));
                        long j = jSONObject.getLong("purchaseTime");
                        if (0 == j) {
                            j = System.currentTimeMillis();
                        }
                        analyticsEvent3.setEventTimeStamp(j / 1000);
                        int i = jSONObject.getInt("purchaseState");
                        if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.PURCHASED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.PURCHASED.getValue();
                        } else if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.FAILED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.FAILED.getValue();
                        } else if (AnalyticsEvent.TRANSACTION_STATUS_GOOGLE_API_VALUES.REFUNDED.getValue() == i) {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.REFUNDED.getValue();
                        } else {
                            value = AnalyticsEvent.TRANSACTION_STATUS_SERVER_CODE.RESTORED.getValue();
                        }
                        analyticsEvent3.setTransactionStatus(value);
                        try {
                            analyticsEvent = a(analyticsEvent3);
                        } catch (Exception e2) {
                            analyticsEvent = analyticsEvent3;
                            e = e2;
                        }
                        try {
                            analyticsEvent.setEventSessionId(SessionInfo.getSessionId(this.f3742a));
                            analyticsEvent.setEventSessionTimeStamp(SessionInfo.getSessionTime(this.f3742a));
                            analyticsEvent2 = analyticsEvent;
                        } catch (Exception e3) {
                            e = e3;
                            Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error sending transaction info. Bundle details invalid");
                            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed to send extra params transaction", e);
                            analyticsEvent2 = analyticsEvent;
                            insertInDatabase(analyticsEvent2);
                            return analyticsEvent2;
                        }
                        insertInDatabase(analyticsEvent2);
                        return analyticsEvent2;
                    } catch (JSONException e4) {
                        Log.debug(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Error sending transaction info. Transaction details invalid");
                        Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed transaction", e4);
                        return null;
                    }
                }
                return analyticsEvent3;
            }
        } catch (Exception e5) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception in tag transaction", e5);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0063, code lost:
        if (com.inmobi.commons.analytics.db.AnalyticsEvent.IN_APP.equals(r7) == false) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0065, code lost:
        r11.setTransactionItemType(com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE.INAPP.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x006e, code lost:
        r11.setTransactionItemPrice(r4 / 1000000.0d);
        r11.setTransactionCurrencyCode(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0082, code lost:
        if (com.inmobi.commons.analytics.db.AnalyticsEvent.SUBS.equals(r7) == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0084, code lost:
        r11.setTransactionItemType(com.inmobi.commons.analytics.db.AnalyticsEvent.TRANSACTION_ITEM_TYPE.SUBSCRIPTION.getValue());
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0053, code lost:
        r11.setTransactionItemCount(1);
        r11.setTransactionItemDescription(r3);
        r11.setTransactionItemName(r8);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private AnalyticsEvent a(AnalyticsEvent analyticsEvent) {
        try {
            if (this.c.getInt("RESPONSE_CODE") == 0) {
                ArrayList<String> stringArrayList = this.c.getStringArrayList("DETAILS_LIST");
                int i = 0;
                while (true) {
                    int i2 = i;
                    if (i2 >= stringArrayList.size()) {
                        break;
                    }
                    JSONObject jSONObject = new JSONObject(stringArrayList.get(i2));
                    String string = jSONObject.getString(AnalyticsSQLiteHelper.TRANSACTION_PRODUCT_ID);
                    long j = jSONObject.getLong("price_amount_micros");
                    String string2 = jSONObject.getString("price_currency_code");
                    String optString = jSONObject.optString("type");
                    String optString2 = jSONObject.optString("title");
                    String optString3 = jSONObject.optString("description");
                    if (string.equals(analyticsEvent.getTransactionProductId())) {
                        break;
                    }
                    i = i2 + 1;
                }
            }
        } catch (Exception e) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Failed to set purchase bundle info", e);
        }
        return analyticsEvent;
    }

    @Override // com.inmobi.commons.analytics.db.AnalyticsFunctions
    public AnalyticsEvent processFunction() {
        return a();
    }
}
