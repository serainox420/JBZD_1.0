package com.applovin.adview;

import android.media.MediaPlayer;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class l implements MediaPlayer.OnErrorListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1523a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1523a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Handler handler;
        handler = this.f1523a.u;
        handler.post(new m(this, i, i2));
        return true;
    }
}
