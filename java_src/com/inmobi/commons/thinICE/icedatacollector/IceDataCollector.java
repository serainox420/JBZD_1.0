package com.inmobi.commons.thinICE.icedatacollector;

import android.app.Activity;
import android.content.Context;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.util.Log;
import com.inmobi.commons.thinICE.cellular.CellOperatorInfo;
import com.inmobi.commons.thinICE.cellular.CellUtil;
import com.inmobi.commons.thinICE.location.LocationInfo;
import com.inmobi.commons.thinICE.location.LocationUtil;
import com.inmobi.commons.thinICE.wifi.WifiInfo;
import com.inmobi.commons.thinICE.wifi.WifiScanListener;
import com.inmobi.commons.thinICE.wifi.WifiScanner;
import com.inmobi.commons.thinICE.wifi.WifiUtil;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public final class IceDataCollector {
    public static final String TAG = "IceDataCollector";

    /* renamed from: a  reason: collision with root package name */
    private static Context f3819a = null;
    private static ThinICEConfigSettings b = new ThinICEConfigSettings();
    private static Looper c = null;
    private static Handler d = null;
    private static boolean e = false;
    private static Activity f = null;
    private static Runnable g = new Runnable() { // from class: com.inmobi.commons.thinICE.icedatacollector.IceDataCollector.1
        @Override // java.lang.Runnable
        public void run() {
            synchronized (IceDataCollector.class) {
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "** stop runnable");
                }
                if (!IceDataCollector.e) {
                    if (BuildSettings.DEBUG) {
                        Log.d(IceDataCollector.TAG, "ignoring, stop not requested");
                    }
                    return;
                }
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "terminating sampling and flushing");
                }
                IceDataCollector.o();
                IceDataCollector.flush();
                Context unused = IceDataCollector.f3819a = null;
                Activity unused2 = IceDataCollector.f = null;
                ThinICEListener unused3 = IceDataCollector.k = null;
            }
        }
    };
    private static LinkedList<Sample> h = new LinkedList<>();
    private static Sample i = null;
    private static final Object j = new Object();
    private static ThinICEListener k = null;
    private static ThinIceDataCollectedListener l = null;
    private static Runnable m = new Runnable() { // from class: com.inmobi.commons.thinICE.icedatacollector.IceDataCollector.2
        @Override // java.lang.Runnable
        public void run() {
            final boolean z = false;
            if (BuildSettings.DEBUG) {
                Log.d(IceDataCollector.TAG, "** sample runnable");
            }
            if (IceDataCollector.c == null) {
                if (BuildSettings.DEBUG) {
                    Log.w(IceDataCollector.TAG, "sampling when looper is null, exiting");
                }
            } else if (Build.VERSION.SDK_INT >= 14 || IceDataCollector.f.hasWindowFocus()) {
                IceDataCollector.d.postDelayed(IceDataCollector.m, IceDataCollector.b.getSampleInterval());
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "next sample in " + IceDataCollector.b.getSampleInterval() + " ms");
                }
                Sample sample = new Sample();
                int wifiFlags = IceDataCollector.b.getWifiFlags();
                if (!ThinICEConfigSettings.bitTest(wifiFlags, 2)) {
                    z = true;
                }
                final boolean bitTest = ThinICEConfigSettings.bitTest(wifiFlags, 1);
                int cellOpFlags = IceDataCollector.b.getCellOpFlags();
                boolean bitTest2 = ThinICEConfigSettings.bitTest(cellOpFlags, 1);
                boolean bitTest3 = ThinICEConfigSettings.bitTest(cellOpFlags, 2);
                if (IceDataCollector.b.isSampleCellOperatorEnabled()) {
                    try {
                        CellOperatorInfo cellNetworkInfo = CellUtil.getCellNetworkInfo(IceDataCollector.f3819a);
                        if (bitTest2) {
                            cellNetworkInfo.simMcc = -1;
                            cellNetworkInfo.simMnc = -1;
                        }
                        if (bitTest3) {
                            cellNetworkInfo.currentMcc = -1;
                            cellNetworkInfo.currentMnc = -1;
                        }
                        if (BuildSettings.DEBUG) {
                            Log.d(IceDataCollector.TAG, "-- cell operator: " + cellNetworkInfo);
                        }
                        sample.cellOperator = cellNetworkInfo;
                    } catch (Exception e2) {
                        if (BuildSettings.DEBUG) {
                            Log.e(IceDataCollector.TAG, "Error getting cell operator data", e2);
                        }
                    }
                }
                if (IceDataCollector.b.isSampleCellEnabled()) {
                    try {
                        if (CellUtil.hasGetCurrentServingCellPermission(IceDataCollector.f3819a)) {
                            sample.connectedCellTowerInfo = CellUtil.getCurrentCellTower(IceDataCollector.f3819a);
                            if (BuildSettings.DEBUG) {
                                Log.d(IceDataCollector.TAG, "-- current serving cell: " + sample.connectedCellTowerInfo.id);
                            }
                        } else if (BuildSettings.DEBUG) {
                            Log.w(IceDataCollector.TAG, "application does not have permission to access current serving cell");
                        }
                    } catch (Exception e3) {
                        if (BuildSettings.DEBUG) {
                            Log.e(IceDataCollector.TAG, "Error getting cell data", e3);
                        }
                    }
                }
                if (IceDataCollector.b.isSampleVisibleCellTowerEnabled()) {
                    try {
                        if (CellUtil.hasGetVisibleCellTowerPermission(IceDataCollector.f3819a)) {
                            sample.visibleCellTowerInfo = CellUtil.getVisibleCellTower(IceDataCollector.f3819a);
                        } else if (BuildSettings.DEBUG) {
                            Log.w(IceDataCollector.TAG, "application does not have permission to access current serving cell");
                        }
                    } catch (Exception e4) {
                        if (BuildSettings.DEBUG) {
                            Log.e(IceDataCollector.TAG, "Error getting cell data", e4);
                        }
                    }
                }
                sample.connectedWifiAp = IceDataCollector.getConnectedWifiInfo(IceDataCollector.f3819a);
                if (IceDataCollector.b.isSampleLocationEnabled()) {
                    try {
                        if (LocationUtil.hasLocationPermission(IceDataCollector.f3819a)) {
                            HashMap<String, LocationInfo> lastKnownLocations = LocationUtil.getLastKnownLocations(IceDataCollector.f3819a);
                            if (BuildSettings.DEBUG) {
                                Log.d(IceDataCollector.TAG, "-- locations:");
                                Iterator<LocationInfo> it = lastKnownLocations.values().iterator();
                                while (it.hasNext()) {
                                    Log.d(IceDataCollector.TAG, "   + " + it.next());
                                }
                            }
                            sample.lastKnownLocations = lastKnownLocations;
                        } else if (BuildSettings.DEBUG) {
                            Log.w(IceDataCollector.TAG, "application does not have permission to access location");
                        }
                    } catch (Exception e5) {
                        if (BuildSettings.DEBUG) {
                            Log.e(IceDataCollector.TAG, "Error getting location data", e5);
                        }
                    }
                }
                synchronized (IceDataCollector.j) {
                    Sample unused = IceDataCollector.i = sample;
                    if (IceDataCollector.h != null) {
                        IceDataCollector.h.add(sample);
                        while (IceDataCollector.h.size() > IceDataCollector.b.getSampleHistorySize()) {
                            IceDataCollector.h.removeFirst();
                        }
                    }
                }
                if (IceDataCollector.b.isSampleVisibleWifiEnabled()) {
                    try {
                        if (WifiUtil.hasWifiScanPermission(IceDataCollector.f3819a, false)) {
                            if (!WifiScanner.requestScan(IceDataCollector.f3819a, new WifiScanListener() { // from class: com.inmobi.commons.thinICE.icedatacollector.IceDataCollector.2.1
                                @Override // com.inmobi.commons.thinICE.wifi.WifiScanListener
                                public void onTimeout() {
                                    if (BuildSettings.DEBUG) {
                                        Log.w(IceDataCollector.TAG, "Received Wi-Fi scan timeout");
                                    }
                                }

                                @Override // com.inmobi.commons.thinICE.wifi.WifiScanListener
                                public void onResultsReceived(List<ScanResult> list) {
                                    if (BuildSettings.DEBUG) {
                                        Log.d(IceDataCollector.TAG, "Received Wi-Fi scan results " + list.size());
                                    }
                                    List<WifiInfo> scanResultsToWifiInfos = WifiUtil.scanResultsToWifiInfos(list, z, bitTest);
                                    if (BuildSettings.DEBUG) {
                                        Log.d(IceDataCollector.TAG, "-- wifi scan:");
                                        Iterator<WifiInfo> it2 = scanResultsToWifiInfos.iterator();
                                        while (it2.hasNext()) {
                                            Log.d(IceDataCollector.TAG, "   + " + it2.next());
                                        }
                                    }
                                    synchronized (IceDataCollector.j) {
                                        if (IceDataCollector.i != null) {
                                            IceDataCollector.i.visibleWifiAp = scanResultsToWifiInfos;
                                            a();
                                        }
                                    }
                                }
                            })) {
                                a();
                            }
                        } else {
                            a();
                            if (BuildSettings.DEBUG) {
                                Log.w(IceDataCollector.TAG, "application does not have permission to scan for wifi access points");
                            }
                        }
                        return;
                    } catch (Exception e6) {
                        if (BuildSettings.DEBUG) {
                            Log.e(IceDataCollector.TAG, "Error scanning for wifi", e6);
                            return;
                        }
                        return;
                    }
                }
                a();
            } else {
                if (BuildSettings.DEBUG) {
                    Log.d(IceDataCollector.TAG, "activity no longer has focus, terminating");
                }
                IceDataCollector.o();
                LinkedList linkedList = IceDataCollector.h;
                IceDataCollector.flush();
                Context unused2 = IceDataCollector.f3819a = null;
                Activity unused3 = IceDataCollector.f = null;
                if (IceDataCollector.k != null) {
                    IceDataCollector.k.onSamplingTerminated(linkedList);
                }
                ThinICEListener unused4 = IceDataCollector.k = null;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a() {
            if (IceDataCollector.l != null) {
                IceDataCollector.l.onDataCollected();
            }
        }
    };

    /* loaded from: classes2.dex */
    public interface ThinIceDataCollectedListener {
        void onDataCollected();
    }

    public static synchronized void start(Context context) {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- start()");
            }
            if (context == null) {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "aborting, context is null");
                }
            } else if (!b.isEnabled()) {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "ignoring, data collection is disabled in settings");
                }
            } else {
                if (Build.VERSION.SDK_INT < 14) {
                    if (!(context instanceof Activity)) {
                        if (BuildSettings.DEBUG) {
                            Log.w(TAG, "aborting, build < 14 and context is not an activity");
                        }
                    } else {
                        f = (Activity) context;
                    }
                }
                f3819a = context.getApplicationContext();
                n();
                if (e) {
                    if (BuildSettings.DEBUG) {
                        Log.d(TAG, "stop previously requested, clearing request");
                    }
                    e = false;
                    d.removeCallbacks(g);
                }
            }
        }
    }

    private static void n() {
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "startSampling()");
        }
        if (c != null) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "ignoring, already sampling");
                return;
            }
            return;
        }
        HandlerThread handlerThread = new HandlerThread("IDC");
        handlerThread.start();
        c = handlerThread.getLooper();
        d = new Handler(c);
        d.postDelayed(m, b.getSampleInterval() / 2);
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "next sample in " + (b.getSampleInterval() / 2) + " ms");
        }
    }

    public static synchronized void stop() {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- stop()");
            }
            if (c == null) {
                Log.d(TAG, "ignoring, not currently running");
            } else if (e) {
                Log.d(TAG, "ignoring, stop already requested");
            } else {
                e = true;
                d.postDelayed(g, b.getStopRequestTimeout());
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "stop requested, occurring in " + b.getStopRequestTimeout() + " ms");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void o() {
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "stopSampling()");
        }
        if (c == null) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "ignoring, not currently sampling");
                return;
            }
            return;
        }
        d.removeCallbacks(m);
        d = null;
        c.quit();
        c = null;
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "sampling stopped");
        }
    }

    public static synchronized void flush() {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- flush()");
            }
            synchronized (j) {
                i = null;
                h = new LinkedList<>();
            }
        }
    }

    public static synchronized void setConfig(ThinICEConfigSettings thinICEConfigSettings) {
        synchronized (IceDataCollector.class) {
            if (BuildSettings.DEBUG) {
                Log.d(TAG, "-- setConfig(" + thinICEConfigSettings + ")");
            }
            if (thinICEConfigSettings == null) {
                if (BuildSettings.DEBUG) {
                    Log.d(TAG, "aborting, config is null");
                }
            } else {
                ThinICEConfigSettings thinICEConfigSettings2 = b;
                b = thinICEConfigSettings;
                int sampleHistorySize = thinICEConfigSettings2.getSampleHistorySize();
                int sampleHistorySize2 = b.getSampleHistorySize();
                if (sampleHistorySize2 < sampleHistorySize) {
                    synchronized (j) {
                        if (h.size() > sampleHistorySize2) {
                            if (BuildSettings.DEBUG) {
                                Log.d(TAG, "new sample history size, removing samples from start of list");
                            }
                            h.subList(0, h.size() - sampleHistorySize2).clear();
                        }
                    }
                }
                if (c == null) {
                    if (BuildSettings.DEBUG) {
                        Log.d(TAG, "not restarting sampling, not currently sampling");
                    }
                } else if (a(thinICEConfigSettings2, b)) {
                    o();
                    if (b.isEnabled()) {
                        n();
                    } else {
                        flush();
                        f3819a = null;
                        f = null;
                        k = null;
                    }
                }
            }
        }
    }

    private static final boolean a(ThinICEConfigSettings thinICEConfigSettings, ThinICEConfigSettings thinICEConfigSettings2) {
        return (thinICEConfigSettings.isEnabled() == thinICEConfigSettings2.isEnabled() && thinICEConfigSettings.getSampleInterval() == thinICEConfigSettings2.getSampleInterval()) ? false : true;
    }

    public static ThinICEConfigSettings getConfig() {
        return new ThinICEConfigSettings(b);
    }

    public static List<Sample> getData() {
        LinkedList<Sample> linkedList;
        if (BuildSettings.DEBUG) {
            Log.d(TAG, "-- getData()");
        }
        synchronized (j) {
            linkedList = h;
            flush();
        }
        return linkedList;
    }

    public static int getSampleCount() {
        int size;
        synchronized (j) {
            size = h.size();
        }
        return size;
    }

    public static void setListener(ThinICEListener thinICEListener) {
        k = thinICEListener;
    }

    public static void setIceDataCollectionListener(ThinIceDataCollectedListener thinIceDataCollectedListener) {
        l = thinIceDataCollectedListener;
    }

    public static WifiInfo getConnectedWifiInfo(Context context) {
        WifiInfo wifiInfo;
        int wifiFlags = b.getWifiFlags();
        boolean z = !ThinICEConfigSettings.bitTest(wifiFlags, 2);
        boolean bitTest = ThinICEConfigSettings.bitTest(wifiFlags, 1);
        if (!b.isSampleConnectedWifiEnabled()) {
            return null;
        }
        try {
            if (WifiUtil.hasGetConnectedWifiInfoPermission(context)) {
                wifiInfo = WifiUtil.getConnectedWifiInfo(context, z, bitTest);
            } else {
                if (BuildSettings.DEBUG) {
                    Log.w(TAG, "application does not have permission to access connected wifi ap");
                }
                wifiInfo = null;
            }
            return wifiInfo;
        } catch (Exception e2) {
            if (!BuildSettings.DEBUG) {
                return null;
            }
            Log.e(TAG, "Error getting wifi data", e2);
            return null;
        }
    }

    public static List<Long> getVisbleWifiInfoBssId(Context context) {
        List<WifiInfo> list;
        ArrayList arrayList = null;
        try {
            if (!b.isSampleVisibleWifiEnabled() || i == null || (list = i.visibleWifiAp) == null || list.size() == 0) {
                return null;
            }
            ArrayList arrayList2 = new ArrayList();
            int i2 = 0;
            while (true) {
                try {
                    int i3 = i2;
                    if (i3 >= list.size()) {
                        return arrayList2;
                    }
                    arrayList2.add(Long.valueOf(list.get(i3).bssid));
                    i2 = i3 + 1;
                } catch (Exception e2) {
                    arrayList = arrayList2;
                    e = e2;
                    if (BuildSettings.DEBUG) {
                        Log.e(TAG, "Error getting wifi data", e);
                        return arrayList;
                    }
                    return arrayList;
                }
            }
        } catch (Exception e3) {
            e = e3;
        }
    }
}
