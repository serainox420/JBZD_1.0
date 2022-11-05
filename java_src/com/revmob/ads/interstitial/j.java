package com.revmob.ads.interstitial;

import android.media.MediaPlayer;
import android.os.Handler;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class j implements MediaPlayer.OnPreparedListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4774a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public j(a aVar) {
        this.f4774a = aVar;
    }

    @Override // android.media.MediaPlayer.OnPreparedListener
    public final void onPrepared(MediaPlayer mediaPlayer) {
        float f;
        float f2;
        Runnable runnable;
        Runnable runnable2;
        this.f4774a.i = mediaPlayer;
        f = this.f4774a.K;
        f2 = this.f4774a.K;
        mediaPlayer.setVolume(f, f2);
        this.f4774a.b.requestFocus();
        if (!this.f4774a.f) {
            if (!this.f4774a.l.booleanValue()) {
                this.f4774a.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_START);
            }
            this.f4774a.f = true;
            this.f4774a.b.start();
        }
        this.f4774a.c.setText(String.format("%02d", Integer.valueOf((this.f4774a.c() - this.f4774a.h.g()) / 1000)));
        Handler handler = this.f4774a.g;
        runnable = this.f4774a.C;
        handler.postDelayed(runnable, 1000L);
        runnable2 = this.f4774a.D;
        runnable2.run();
    }
}
