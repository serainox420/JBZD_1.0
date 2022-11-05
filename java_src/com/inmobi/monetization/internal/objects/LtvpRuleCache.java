package com.inmobi.monetization.internal.objects;

import android.content.Context;
import android.content.SharedPreferences;
import com.inmobi.commons.analytics.util.AnalyticsUtils;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.LtvpRulesObject;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class LtvpRuleCache {

    /* renamed from: a  reason: collision with root package name */
    static LtvpRuleCache f3905a;
    private static String c = "IMAdMLtvpRuleCache";
    private static String d = "IMAdMLtvpRuleId";
    private static String e = "IMAdMLtvpHardExpiry";
    private static String f = "IMAdMLtvpSoftExpiry";
    private SharedPreferences b;

    public static LtvpRuleCache getInstance(Context context) {
        if (f3905a == null) {
            synchronized (LtvpRuleCache.class) {
                if (f3905a == null) {
                    f3905a = new LtvpRuleCache(context);
                }
            }
        }
        return f3905a;
    }

    private LtvpRuleCache(Context context) {
        this.b = null;
        this.b = context.getSharedPreferences(c, 0);
    }

    public void clearLtvpRuleCache() {
        SharedPreferences.Editor edit = this.b.edit();
        edit.clear();
        edit.commit();
    }

    public void setLtvpRuleConfig(LtvpRulesObject ltvpRulesObject) {
        a(ltvpRulesObject.getRuleId());
        a(ltvpRulesObject.getHardExpiry() + ltvpRulesObject.getTimeStamp());
        b(ltvpRulesObject.getSoftExpiry() + ltvpRulesObject.getTimeStamp());
        a(ltvpRulesObject.getRules());
    }

    private void a(long j) {
        SharedPreferences.Editor edit = this.b.edit();
        edit.putLong(e, j);
        edit.commit();
    }

    private void b(long j) {
        SharedPreferences.Editor edit = this.b.edit();
        edit.putLong(f, j);
        edit.commit();
    }

    private void a(String str) {
        SharedPreferences.Editor edit = this.b.edit();
        edit.putString(d, str);
        edit.commit();
    }

    private void a(HashMap<String, Integer> hashMap) {
        try {
            SharedPreferences.Editor edit = this.b.edit();
            for (String str : hashMap.keySet()) {
                edit.putInt(str, hashMap.get(str).intValue());
            }
            edit.commit();
        } catch (Exception e2) {
            Log.internal(AnalyticsUtils.ANALYTICS_LOGGING_TAG, "Exception saving rule map", e2);
        }
    }

    public long getSoftExpiryForLtvpRule() {
        return this.b.getLong(f, 0L);
    }

    public long getHardExpiryForLtvpRule() {
        return this.b.getLong(e, 0L);
    }

    public int getLtvpRule(long j) {
        return this.b.getInt(String.valueOf(j), 0);
    }

    public String getLtvpRuleId() {
        return this.b.getString(d, "");
    }
}
