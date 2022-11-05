package com.facebook.ads.internal.adapters;

import android.content.Context;
import com.facebook.ads.RewardData;
import com.facebook.ads.internal.server.AdPlacementType;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class x implements AdAdapter {

    /* renamed from: a  reason: collision with root package name */
    protected RewardData f2111a;

    public abstract String a();

    public abstract void a(Context context, y yVar, Map<String, Object> map);

    public void a(RewardData rewardData) {
        this.f2111a = rewardData;
    }

    public abstract boolean b();

    @Override // com.facebook.ads.internal.adapters.AdAdapter
    public AdPlacementType getPlacementType() {
        return AdPlacementType.REWARDED_VIDEO;
    }
}
