package com.adcolony.sdk;

import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Map;
/* loaded from: classes.dex */
public class AdColonyPubServicesVIPInformation {
    private static final String b = "rank_name";
    private static final String c = "rank_level";
    private static final String d = "next_rank_name";
    private static final String e = "next_rank_level";
    private static final String f = "rank_percent_progress_micro";
    private static final String g = "bonus_per_currency_unit_micro";
    private static final String h = "bonus_per_product_unit_micro";
    private static final String i = "next_bonus_per_currency_unit_micro";
    private static final String j = "total_achievement_count";
    private static final String k = "pending_achievement_redemption_count";
    private static final String l = "pending_vip_redemption_count";
    private static final String m = "next_bonus_per_product_unit_micro";

    /* renamed from: a  reason: collision with root package name */
    private Map<String, Object> f998a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyPubServicesVIPInformation(Map<String, Object> map) {
        this.f998a = map;
    }

    public String rankName() {
        if (this.f998a == null || !this.f998a.containsKey(b) || this.f998a.get(b) == null) {
            return "";
        }
        return (String) this.f998a.get(b);
    }

    public int rankLevel() {
        if (this.f998a == null || !this.f998a.containsKey(c) || this.f998a.get(c) == null) {
            return 0;
        }
        return ((Integer) this.f998a.get(c)).intValue();
    }

    public String nextRankName() {
        if (this.f998a == null || !this.f998a.containsKey(d) || this.f998a.get(d) == null) {
            return "";
        }
        return (String) this.f998a.get(d);
    }

    public int nextRankLevel() {
        if (this.f998a == null || !this.f998a.containsKey(e) || this.f998a.get(e) == null) {
            return 0;
        }
        return ((Integer) this.f998a.get(e)).intValue();
    }

    public float rankPercentProgress() {
        if (this.f998a == null || !this.f998a.containsKey(f) || this.f998a.get(f) == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return (float) co.a(this.f998a.get(f));
    }

    public float bonusPerCurrencyLocaleUnit() {
        if (this.f998a == null || !this.f998a.containsKey(g) || this.f998a.get(g) == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return (float) co.a(this.f998a.get(g));
    }

    public float bonusPerProductUnit() {
        if (this.f998a == null || !this.f998a.containsKey(h) || this.f998a.get(h) == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return (float) co.a(this.f998a.get(h));
    }

    public float nextBonusPerCurrencyLocaleUnit() {
        if (this.f998a == null || !this.f998a.containsKey(i) || this.f998a.get(i) == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return (float) co.a(this.f998a.get(i));
    }

    public float nextBonusPerProductUnit() {
        if (this.f998a == null || !this.f998a.containsKey(m) || this.f998a.get(m) == null) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        return (float) co.a(this.f998a.get(m));
    }

    public int getPendingAchievementRedemptionCount() {
        if (this.f998a == null || !this.f998a.containsKey(k) || this.f998a.get(k) == null) {
            return 0;
        }
        return ((Integer) this.f998a.get(k)).intValue();
    }

    public int getTotalAchievementCount() {
        if (this.f998a == null || !this.f998a.containsKey(j) || this.f998a.get(j) == null) {
            return 0;
        }
        return ((Integer) this.f998a.get(j)).intValue();
    }

    public Map<String, Object> getData() {
        return this.f998a;
    }

    public String toJson() {
        return co.a(this.f998a);
    }
}
