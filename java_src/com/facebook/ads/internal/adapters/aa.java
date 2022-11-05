package com.facebook.ads.internal.adapters;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.Serializable;
/* loaded from: classes.dex */
public class aa extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private Context f2077a;
    private com.facebook.ads.internal.view.i b;
    private boolean c = false;

    public aa(com.facebook.ads.internal.view.i iVar, Context context) {
        this.b = iVar;
        this.f2077a = context;
    }

    public void a() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.facebook.ads.interstitial.displayed:" + this.b.getUniqueId());
        intentFilter.addAction("videoInterstitalEvent:" + this.b.getUniqueId());
        android.support.v4.content.l.a(this.f2077a).a(this, intentFilter);
    }

    public void b() {
        try {
            android.support.v4.content.l.a(this.f2077a).a(this);
        } catch (Exception e) {
        }
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String[] split = intent.getAction().split(":");
        if (split.length == 2 && split[1].equals(this.b.getUniqueId())) {
            if (split[0].equals("com.facebook.ads.interstitial.displayed")) {
                if (this.b.getListener() == null) {
                    return;
                }
                this.b.getListener().onEnterFullscreen(this.b.getMediaView());
                this.b.getListener().onVolumeChange(this.b.getMediaView(), 1.0f);
            } else if (!split[0].equals("videoInterstitalEvent")) {
            } else {
                Serializable serializableExtra = intent.getSerializableExtra("event");
                if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.o) {
                    if (this.b.getListener() != null) {
                        this.b.getListener().onExitFullscreen(this.b.getMediaView());
                        this.b.getListener().onVolumeChange(this.b.getMediaView(), BitmapDescriptorFactory.HUE_RED);
                    }
                    if (this.c) {
                        this.b.a(1);
                    } else {
                        this.b.a(((com.facebook.ads.internal.view.d.a.o) serializableExtra).b());
                    }
                    this.b.setVisibility(0);
                    this.b.d();
                } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.f) {
                    if (this.b.getListener() == null) {
                        return;
                    }
                    this.b.getListener().onFullscreenBackground(this.b.getMediaView());
                } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.g) {
                    if (this.b.getListener() == null) {
                        return;
                    }
                    this.b.getListener().onFullscreenForeground(this.b.getMediaView());
                } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.b) {
                    if (this.b.getListener() != null) {
                        this.b.getListener().onComplete(this.b.getMediaView());
                    }
                    this.c = true;
                } else if (serializableExtra instanceof com.facebook.ads.internal.view.d.a.j) {
                    if (this.b.getListener() != null) {
                        this.b.getListener().onPlay(this.b.getMediaView());
                    }
                    this.c = false;
                } else if (!(serializableExtra instanceof com.facebook.ads.internal.view.d.a.h) || this.b.getListener() == null) {
                } else {
                    this.b.getListener().onPause(this.b.getMediaView());
                }
            }
        }
    }
}
