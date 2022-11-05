package com.google.android.gms.safetynet;
/* loaded from: classes2.dex */
public class SafeBrowsingThreat {
    public static final int TYPE_POTENTIALLY_HARMFUL_APPLICATION = 4;
    public static final int TYPE_SOCIAL_ENGINEERING = 5;
    private int zzbDf;

    public SafeBrowsingThreat(int i) {
        this.zzbDf = i;
    }

    public int getThreatType() {
        return this.zzbDf;
    }
}
