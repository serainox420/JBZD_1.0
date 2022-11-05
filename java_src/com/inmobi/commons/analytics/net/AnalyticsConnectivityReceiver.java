package com.inmobi.commons.analytics.net;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* loaded from: classes2.dex */
public class AnalyticsConnectivityReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private a f3761a;
    private boolean b;

    /* loaded from: classes2.dex */
    interface a {
        void a();

        void b();
    }

    public AnalyticsConnectivityReceiver(Context context, a aVar) {
        this.f3761a = aVar;
        bind(context);
    }

    public final void bind(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(this, intentFilter);
    }

    public void unbind(Context context) {
        context.unregisterReceiver(this);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent.getBooleanExtra("noConnectivity", false)) {
            this.b = false;
            if (this.f3761a != null) {
                this.f3761a.b();
            }
        } else if (!intent.getBooleanExtra("noConnectivity", false)) {
            this.b = true;
            if (this.f3761a != null) {
                this.f3761a.a();
            }
        }
    }

    public boolean isConnected() {
        return this.b;
    }
}
