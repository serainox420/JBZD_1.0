package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.mopub.common.IntentActions;
import com.mopub.mobileads.CustomEventInterstitial;
/* loaded from: classes3.dex */
public class EventForwardingBroadcastReceiver extends BaseBroadcastReceiver {
    private static IntentFilter b;

    /* renamed from: a  reason: collision with root package name */
    private final CustomEventInterstitial.CustomEventInterstitialListener f4420a;

    public EventForwardingBroadcastReceiver(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, long j) {
        super(j);
        this.f4420a = customEventInterstitialListener;
        getIntentFilter();
    }

    @Override // com.mopub.mobileads.BaseBroadcastReceiver
    public IntentFilter getIntentFilter() {
        if (b == null) {
            b = new IntentFilter();
            b.addAction(IntentActions.ACTION_INTERSTITIAL_FAIL);
            b.addAction(IntentActions.ACTION_INTERSTITIAL_SHOW);
            b.addAction(IntentActions.ACTION_INTERSTITIAL_DISMISS);
            b.addAction(IntentActions.ACTION_INTERSTITIAL_CLICK);
        }
        return b;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (this.f4420a != null && shouldConsumeBroadcast(intent)) {
            String action = intent.getAction();
            if (IntentActions.ACTION_INTERSTITIAL_FAIL.equals(action)) {
                this.f4420a.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else if (IntentActions.ACTION_INTERSTITIAL_SHOW.equals(action)) {
                this.f4420a.onInterstitialShown();
            } else if (IntentActions.ACTION_INTERSTITIAL_DISMISS.equals(action)) {
                this.f4420a.onInterstitialDismissed();
                unregister(this);
            } else if (IntentActions.ACTION_INTERSTITIAL_CLICK.equals(action)) {
                this.f4420a.onInterstitialClicked();
            }
        }
    }
}
