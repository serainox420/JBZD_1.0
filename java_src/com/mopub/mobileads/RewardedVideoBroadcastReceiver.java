package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.RewardedVastVideoInterstitial;
/* loaded from: classes3.dex */
public class RewardedVideoBroadcastReceiver extends BaseBroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static IntentFilter f4459a;
    private RewardedVastVideoInterstitial.a b;

    public RewardedVideoBroadcastReceiver(RewardedVastVideoInterstitial.a aVar, long j) {
        super(j);
        this.b = aVar;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (f4459a == null) {
            f4459a = new IntentFilter();
            f4459a.addAction(IntentActions.ACTION_REWARDED_VIDEO_COMPLETE);
        }
        return f4459a;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.b != null && shouldConsumeBroadcast(intent) && IntentActions.ACTION_REWARDED_VIDEO_COMPLETE.equals(intent.getAction())) {
            this.b.onVideoComplete();
            unregister(this);
        }
    }
}
