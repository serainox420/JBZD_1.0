package com.revmob.ads.interstitial;

import android.media.MediaPlayer;
/* loaded from: classes3.dex */
final class l implements MediaPlayer.OnCompletionListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4776a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public l(a aVar) {
        this.f4776a = aVar;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        this.f4776a.a();
    }
}
