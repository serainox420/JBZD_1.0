package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.flurry.sdk.hs;
import com.flurry.sdk.km;
import com.flurry.sdk.ly;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import com.inmobi.commons.internal.InternalSDKUtil;
/* loaded from: classes.dex */
public final class FlurryInstallReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    static final String f2378a = FlurryInstallReceiver.class.getSimpleName();

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        km.a(4, f2378a, "Received an Install nofication of " + intent.getAction());
        String string = intent.getExtras().getString(AdTrackerConstants.REFERRER);
        km.a(4, f2378a, "Received an Install referrer of " + string);
        if (string == null || !InternalSDKUtil.ACTION_RECEIVER_REFERRER.equals(intent.getAction())) {
            km.a(5, f2378a, "referrer is null");
            return;
        }
        if (!string.contains("=")) {
            km.a(4, f2378a, "referrer is before decoding: " + string);
            string = ly.d(string);
            km.a(4, f2378a, "referrer is: " + string);
        }
        new hs(context).a(string);
    }
}
