package com.adcolony.sdk;

import com.facebook.GraphResponse;
/* loaded from: classes.dex */
public class AdColonyReward {

    /* renamed from: a  reason: collision with root package name */
    private int f999a;
    private String b;
    private String c;
    private boolean d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdColonyReward(z zVar) {
        this.f999a = s.c(zVar.b, "reward_amount");
        this.b = s.b(zVar.b, "reward_name");
        this.d = s.d(zVar.b, GraphResponse.SUCCESS_KEY);
        this.c = s.b(zVar.b, "zone_id");
    }

    public int getRewardAmount() {
        return this.f999a;
    }

    public String getRewardName() {
        return this.b;
    }

    public String getZoneID() {
        return this.c;
    }

    public boolean success() {
        return this.d;
    }
}
