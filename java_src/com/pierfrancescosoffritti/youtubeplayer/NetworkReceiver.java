package com.pierfrancescosoffritti.youtubeplayer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
/* loaded from: classes3.dex */
public class NetworkReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private a f4707a;

    /* loaded from: classes3.dex */
    public interface a {
        void a();

        void b();
    }

    public NetworkReceiver(a aVar) {
        this.f4707a = aVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (d.a(context)) {
            this.f4707a.a();
        } else {
            this.f4707a.b();
        }
    }
}
