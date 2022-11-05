package com.inmobi.commons.thinICE.wifi;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.PowerManager;
import com.google.android.gms.cast.framework.media.NotificationOptions;
/* loaded from: classes2.dex */
public final class WifiScanner {

    /* renamed from: a  reason: collision with root package name */
    private static Context f3822a = null;
    private static WifiScanListener b = null;
    private static Handler c = null;
    private static boolean d = false;
    private static Runnable e = new Runnable() { // from class: com.inmobi.commons.thinICE.wifi.WifiScanner.1
        @Override // java.lang.Runnable
        public void run() {
            WifiScanListener wifiScanListener = WifiScanner.b;
            WifiScanner.d();
            if (wifiScanListener != null) {
                wifiScanListener.onTimeout();
            }
        }
    };
    private static boolean f = false;
    private static final BroadcastReceiver g = new BroadcastReceiver() { // from class: com.inmobi.commons.thinICE.wifi.WifiScanner.2
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            try {
                WifiScanListener wifiScanListener = WifiScanner.b;
                WifiManager wifiManager = (WifiManager) WifiScanner.f3822a.getSystemService("wifi");
                WifiScanner.d();
                if (wifiScanListener != null) {
                    wifiScanListener.onResultsReceived(wifiManager.getScanResults());
                }
            } catch (Exception e2) {
            }
        }
    };
    private static final IntentFilter h = new IntentFilter("android.net.wifi.SCAN_RESULTS");
    private static PowerManager.WakeLock i = null;
    private static WifiManager.WifiLock j = null;

    public static boolean requestScan(Context context, WifiScanListener wifiScanListener) {
        return requestScan(Looper.myLooper(), context, wifiScanListener, NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, false);
    }

    public static synchronized boolean requestScan(Looper looper, Context context, WifiScanListener wifiScanListener, long j2, boolean z) {
        boolean startScan;
        synchronized (WifiScanner.class) {
            if (c != null) {
                startScan = false;
            } else {
                WifiManager wifiManager = (WifiManager) context.getSystemService("wifi");
                if (!wifiManager.isWifiEnabled()) {
                    startScan = false;
                } else {
                    f3822a = context;
                    b = wifiScanListener;
                    d = z;
                    c = new Handler(looper);
                    c.postDelayed(e, j2);
                    if (d) {
                        i();
                        g();
                    }
                    e();
                    startScan = wifiManager.startScan();
                }
            }
        }
        return startScan;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void d() {
        synchronized (WifiScanner.class) {
            if (c != null) {
                c.removeCallbacks(e);
                f();
                if (d) {
                    h();
                    j();
                }
                c = null;
                b = null;
                f3822a = null;
                d = false;
            }
        }
    }

    private static void e() {
        if (!f) {
            f = true;
            f3822a.registerReceiver(g, h, null, c);
        }
    }

    private static void f() {
        if (f) {
            f = false;
            try {
                f3822a.unregisterReceiver(g);
            } catch (IllegalArgumentException e2) {
            }
        }
    }

    private static void g() {
        if (i == null) {
            i = ((PowerManager) f3822a.getSystemService("power")).newWakeLock(1, "wifiscanrequester.CpuLock");
            i.setReferenceCounted(false);
        }
        if (!i.isHeld()) {
            i.acquire();
        }
    }

    private static void h() {
        if (i != null) {
            if (i.isHeld()) {
                i.release();
            }
            i = null;
        }
    }

    private static void i() {
        if (j == null) {
            j = ((WifiManager) f3822a.getSystemService("wifi")).createWifiLock(2, "wifiscanrequester.WiFiScanLock");
            j.setReferenceCounted(false);
        }
        if (!j.isHeld()) {
            j.acquire();
        }
    }

    private static void j() {
        if (j != null) {
            if (j.isHeld()) {
                j.release();
            }
            j = null;
        }
    }
}
