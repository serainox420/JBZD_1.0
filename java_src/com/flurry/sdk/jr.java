package com.flurry.sdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* loaded from: classes2.dex */
public final class jr extends BroadcastReceiver {
    private static jr c;

    /* renamed from: a  reason: collision with root package name */
    boolean f2935a;
    public boolean b;
    private boolean d;

    public static synchronized jr a() {
        jr jrVar;
        synchronized (jr.class) {
            if (c == null) {
                c = new jr();
            }
            jrVar = c;
        }
        return jrVar;
    }

    /* loaded from: classes2.dex */
    public enum a {
        NONE_OR_UNKNOWN(0),
        NETWORK_AVAILABLE(1),
        WIFI(2),
        CELL(3);
        
        public int e;

        a(int i) {
            this.e = i;
        }
    }

    private jr() {
        boolean z = false;
        this.d = false;
        Context context = jy.a().f2947a;
        this.d = context.checkCallingOrSelfPermission("android.permission.ACCESS_NETWORK_STATE") == 0 ? true : z;
        this.b = a(context);
        if (this.d) {
            c();
        }
    }

    private synchronized void c() {
        if (!this.f2935a) {
            Context context = jy.a().f2947a;
            this.b = a(context);
            context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
            this.f2935a = true;
        }
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        boolean a2 = a(context);
        if (this.b != a2) {
            this.b = a2;
            jq jqVar = new jq();
            jqVar.f2934a = a2;
            jqVar.b = b();
            ki.a().a(jqVar);
        }
    }

    private boolean a(Context context) {
        if (!this.d || context == null) {
            return true;
        }
        NetworkInfo activeNetworkInfo = d().getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public final a b() {
        if (!this.d) {
            return a.NONE_OR_UNKNOWN;
        }
        NetworkInfo activeNetworkInfo = d().getActiveNetworkInfo();
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            return a.NONE_OR_UNKNOWN;
        }
        switch (activeNetworkInfo.getType()) {
            case 0:
            case 2:
            case 3:
            case 4:
            case 5:
                return a.CELL;
            case 1:
                return a.WIFI;
            case 6:
            case 7:
            default:
                if (activeNetworkInfo.isConnected()) {
                    return a.NETWORK_AVAILABLE;
                }
                return a.NONE_OR_UNKNOWN;
            case 8:
                return a.NONE_OR_UNKNOWN;
        }
    }

    private static ConnectivityManager d() {
        return (ConnectivityManager) jy.a().f2947a.getSystemService("connectivity");
    }
}
