package com.google.android.exoplayer2.audio;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.android.exoplayer2.util.v;
/* compiled from: AudioCapabilitiesReceiver.java */
/* loaded from: classes2.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    com.google.android.exoplayer2.audio.b f3159a;
    private final Context b;
    private final b c;
    private final BroadcastReceiver d;

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(com.google.android.exoplayer2.audio.b bVar);
    }

    public c(Context context, b bVar) {
        this.b = (Context) com.google.android.exoplayer2.util.a.a(context);
        this.c = (b) com.google.android.exoplayer2.util.a.a(bVar);
        this.d = v.f3519a >= 21 ? new a() : null;
    }

    public com.google.android.exoplayer2.audio.b a() {
        this.f3159a = com.google.android.exoplayer2.audio.b.a(this.d == null ? null : this.b.registerReceiver(this.d, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG")));
        return this.f3159a;
    }

    public void b() {
        if (this.d != null) {
            this.b.unregisterReceiver(this.d);
        }
    }

    /* compiled from: AudioCapabilitiesReceiver.java */
    /* loaded from: classes2.dex */
    private final class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!isInitialStickyBroadcast()) {
                com.google.android.exoplayer2.audio.b a2 = com.google.android.exoplayer2.audio.b.a(intent);
                if (!a2.equals(c.this.f3159a)) {
                    c.this.f3159a = a2;
                    c.this.c.a(a2);
                }
            }
        }
    }
}
