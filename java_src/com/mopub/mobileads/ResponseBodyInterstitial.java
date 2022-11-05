package com.mopub.mobileads;

import android.content.Context;
import com.mopub.common.AdReport;
import com.mopub.common.DataKeys;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.CustomEventInterstitial;
import java.util.Map;
/* loaded from: classes3.dex */
public abstract class ResponseBodyInterstitial extends CustomEventInterstitial {

    /* renamed from: a  reason: collision with root package name */
    protected Context f4458a;
    protected AdReport b;
    protected long c;
    private EventForwardingBroadcastReceiver d;

    protected abstract void a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener);

    protected abstract void a(Map<String, String> map);

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public abstract void showInterstitial();

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void loadInterstitial(Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Map<String, Object> map, Map<String, String> map2) {
        this.f4458a = context;
        if (b(map2)) {
            a(map2);
            try {
                this.b = (AdReport) map.get(DataKeys.AD_REPORT_KEY);
                Long l = (Long) map.get(DataKeys.BROADCAST_IDENTIFIER_KEY);
                if (l == null) {
                    MoPubLog.e("Broadcast Identifier was not set in localExtras");
                    customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                } else {
                    this.c = l.longValue();
                    this.d = new EventForwardingBroadcastReceiver(customEventInterstitialListener, this.c);
                    this.d.register(this.d, context);
                    a(customEventInterstitialListener);
                }
                return;
            } catch (ClassCastException e) {
                MoPubLog.e("LocalExtras contained an incorrect type.");
                customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.INTERNAL_ERROR);
                return;
            }
        }
        customEventInterstitialListener.onInterstitialFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
    }

    @Override // com.mopub.mobileads.CustomEventInterstitial
    public void onInvalidate() {
        if (this.d != null) {
            this.d.unregister(this.d);
        }
    }

    private boolean b(Map<String, String> map) {
        return map.containsKey(DataKeys.HTML_RESPONSE_BODY_KEY);
    }
}
