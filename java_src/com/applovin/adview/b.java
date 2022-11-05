package com.applovin.adview;

import android.media.MediaPlayer;
import com.applovin.impl.adview.AppLovinVideoView;
import java.lang.ref.WeakReference;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class b implements MediaPlayer.OnPreparedListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ AppLovinInterstitialActivity f1513a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(AppLovinInterstitialActivity appLovinInterstitialActivity) {
        this.f1513a = appLovinInterstitialActivity;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public void onPrepared(MediaPlayer mediaPlayer) {
        boolean c;
        AppLovinVideoView appLovinVideoView;
        AppLovinVideoView appLovinVideoView2;
        this.f1513a.E = new WeakReference(mediaPlayer);
        c = this.f1513a.c();
        int i = c ? 0 : 1;
        mediaPlayer.setVolume(i, i);
        int videoWidth = mediaPlayer.getVideoWidth();
        int videoHeight = mediaPlayer.getVideoHeight();
        this.f1513a.t = (int) TimeUnit.MILLISECONDS.toSeconds(mediaPlayer.getDuration());
        appLovinVideoView = this.f1513a.w;
        appLovinVideoView.setVideoSize(videoWidth, videoHeight);
        appLovinVideoView2 = this.f1513a.w;
        mediaPlayer.setDisplay(appLovinVideoView2.getHolder());
        mediaPlayer.setOnErrorListener(new c(this));
        this.f1513a.m();
        this.f1513a.h();
        this.f1513a.o();
        this.f1513a.f();
    }
}
