package com.applovin.adview;

import android.media.MediaPlayer;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class c implements MediaPlayer.OnErrorListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ b f1514a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(b bVar) {
        this.f1514a = bVar;
    }

    @Override // android.media.MediaPlayer.OnErrorListener
    public boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
        Handler handler;
        handler = this.f1514a.f1513a.u;
        handler.post(new d(this, i, i2));
        return true;
    }
}
