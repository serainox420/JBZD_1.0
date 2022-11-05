package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.facebook.ads.AdError;
/* loaded from: classes.dex */
public class z extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private String f2112a;
    private y b;
    private x c;

    public z(String str, x xVar, y yVar) {
        this.c = xVar;
        this.b = yVar;
        this.f2112a = str;
    }

    public IntentFilter a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(com.facebook.ads.internal.j.REWARDED_VIDEO_COMPLETE.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARDED_VIDEO_ERROR.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARDED_VIDEO_AD_CLICK.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARDED_VIDEO_IMPRESSION.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARDED_VIDEO_CLOSED.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARD_SERVER_SUCCESS.a(this.f2112a));
        intentFilter.addAction(com.facebook.ads.internal.j.REWARD_SERVER_FAILED.a(this.f2112a));
        return intentFilter;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (com.facebook.ads.internal.j.REWARDED_VIDEO_COMPLETE.a(this.f2112a).equals(action)) {
            this.b.d(this.c);
        } else if (com.facebook.ads.internal.j.REWARDED_VIDEO_ERROR.a(this.f2112a).equals(action)) {
            this.b.a(this.c, AdError.INTERNAL_ERROR);
        } else if (com.facebook.ads.internal.j.REWARDED_VIDEO_AD_CLICK.a(this.f2112a).equals(action)) {
            this.b.b(this.c);
        } else if (com.facebook.ads.internal.j.REWARDED_VIDEO_IMPRESSION.a(this.f2112a).equals(action)) {
            this.b.c(this.c);
        } else if (com.facebook.ads.internal.j.REWARDED_VIDEO_CLOSED.a(this.f2112a).equals(action)) {
            this.b.a();
        } else if (com.facebook.ads.internal.j.REWARD_SERVER_FAILED.a(this.f2112a).equals(action)) {
            this.b.e(this.c);
        } else if (!com.facebook.ads.internal.j.REWARD_SERVER_SUCCESS.a(this.f2112a).equals(action)) {
        } else {
            this.b.f(this.c);
        }
    }
}
