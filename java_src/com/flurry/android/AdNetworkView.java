package com.flurry.android;

import android.content.Context;
import com.flurry.sdk.bc;
import com.flurry.sdk.gz;
import com.flurry.sdk.r;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class AdNetworkView extends gz {

    /* renamed from: a  reason: collision with root package name */
    private final AdCreative f2364a;

    public AdNetworkView(Context context, r rVar, AdCreative adCreative) {
        super(context, rVar, null);
        this.f2364a = adCreative;
    }

    public AdNetworkView(Context context, AdCreative adCreative) {
        super(context, null, null);
        this.f2364a = adCreative;
    }

    public AdCreative getAdCreative() {
        return this.f2364a;
    }

    public void onAdFilled(Map<String, String> map) {
        super.onEvent(bc.EV_FILLED, map);
    }

    public void onAdUnFilled(Map<String, String> map) {
        super.onEvent(bc.EV_UNFILLED, map);
    }

    public void onAdPrepared(Map<String, String> map) {
        super.onEvent(bc.EV_PREPARED, map);
    }

    public void onAdShown(Map<String, String> map) {
        super.onEvent(bc.EV_RENDERED, map);
    }

    public void onAdClicked(Map<String, String> map) {
        super.onEvent(bc.EV_CLICKED, map);
    }

    public void onAdClosed(Map<String, String> map) {
        super.onEvent(bc.EV_AD_CLOSED, map);
    }

    public void onRenderFailed(Map<String, String> map) {
        super.onEvent(bc.EV_RENDER_FAILED, map);
    }
}
