package com.revmob.ads.interstitial;

import android.content.SharedPreferences;
import android.graphics.drawable.BitmapDrawable;
import android.media.MediaPlayer;
import android.view.View;
import android.widget.Button;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.revmob.FullscreenActivity;
import com.smartadserver.android.library.model.SASNativeVideoAdElement;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class e implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private /* synthetic */ a f4769a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(a aVar) {
        this.f4769a = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        float f;
        Button button;
        float f2;
        float f3;
        float f4;
        Button button2;
        f = this.f4769a.K;
        if (f == 1.0f) {
            this.f4769a.K = BitmapDescriptorFactory.HUE_RED;
            button2 = this.f4769a.O;
            button2.setBackgroundDrawable(new BitmapDrawable(this.f4769a.getResources(), this.f4769a.f4760a.t()));
            if (!this.f4769a.l.booleanValue()) {
                this.f4769a.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_MUTE);
            }
        } else {
            this.f4769a.K = 1.0f;
            button = this.f4769a.O;
            button.setBackgroundDrawable(new BitmapDrawable(this.f4769a.getResources(), this.f4769a.f4760a.s()));
            if (!this.f4769a.l.booleanValue()) {
                this.f4769a.a(SASNativeVideoAdElement.TRACKING_EVENT_NAME_UNMUTE);
            }
        }
        MediaPlayer mediaPlayer = this.f4769a.i;
        f2 = this.f4769a.K;
        f3 = this.f4769a.K;
        mediaPlayer.setVolume(f2, f3);
        FullscreenActivity fullscreenActivity = this.f4769a.h;
        this.f4769a.h.getApplicationContext();
        SharedPreferences.Editor edit = fullscreenActivity.getPreferences(0).edit();
        f4 = this.f4769a.K;
        edit.putFloat("RevMobVideoVolume", f4);
        edit.commit();
    }
}
