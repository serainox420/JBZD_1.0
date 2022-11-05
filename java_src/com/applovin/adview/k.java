package com.applovin.adview;

import android.media.MediaPlayer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class k implements MediaPlayer.OnCompletionListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1522a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1522a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public void onCompletion(MediaPlayer mediaPlayer) {
        this.f1522a.m = true;
        this.f1522a.s();
    }
}
