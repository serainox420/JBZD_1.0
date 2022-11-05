package com.revmob.internal;

import android.media.MediaPlayer;
/* loaded from: classes3.dex */
final class q implements MediaPlayer.OnCompletionListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ p f4811a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(p pVar) {
        this.f4811a = pVar;
    }

    @Override // android.media.MediaPlayer.OnCompletionListener
    public final void onCompletion(MediaPlayer mediaPlayer) {
        MediaPlayer mediaPlayer2;
        mediaPlayer2 = this.f4811a.b;
        mediaPlayer2.release();
    }
}
