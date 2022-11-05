package com.mopub.common;
/* loaded from: classes3.dex */
public final class MoPubReward {
    public static final int DEFAULT_REWARD_AMOUNT = 0;
    public static final int NO_REWARD_AMOUNT = -123;
    public static final String NO_REWARD_LABEL = "";

    /* renamed from: a  reason: collision with root package name */
    private final boolean f4352a;
    private final String b;
    private final int c;

    private MoPubReward(boolean z, String str, int i) {
        this.f4352a = z;
        this.b = str;
        this.c = i;
    }

    public static MoPubReward failure() {
        return new MoPubReward(false, "", 0);
    }

    public static MoPubReward success(String str, int i) {
        return new MoPubReward(true, str, i);
    }

    public final boolean isSuccessful() {
        return this.f4352a;
    }

    public final String getLabel() {
        return this.b;
    }

    public final int getAmount() {
        return this.c;
    }
}
