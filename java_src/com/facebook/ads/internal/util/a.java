package com.facebook.ads.internal.util;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.os.Environment;
import android.os.StatFs;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.openx.view.mraid.JSInterface;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
/* loaded from: classes.dex */
public class a {
    private static volatile float[] d;
    private static volatile float[] e;

    /* renamed from: a  reason: collision with root package name */
    private static SensorManager f2212a = null;
    private static Sensor b = null;
    private static Sensor c = null;
    private static Map<String, String> f = new ConcurrentHashMap();
    private static String[] g = {JSInterface.JSON_X, JSInterface.JSON_Y, "z"};

    /* renamed from: com.facebook.ads.internal.util.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private static class C0100a implements SensorEventListener {
        private C0100a() {
        }

        @Override // android.hardware.SensorEventListener
        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        @Override // android.hardware.SensorEventListener
        public void onSensorChanged(SensorEvent sensorEvent) {
            if (sensorEvent.sensor == a.b) {
                float[] unused = a.d = sensorEvent.values;
            } else if (sensorEvent.sensor == a.c) {
                float[] unused2 = a.e = sensorEvent.values;
            }
            a.a(this);
        }
    }

    public static Map<String, String> a() {
        HashMap hashMap = new HashMap();
        hashMap.putAll(f);
        a(hashMap);
        return hashMap;
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x001c, code lost:
        if (com.facebook.ads.internal.util.a.f2212a == null) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static synchronized void a(Context context) {
        synchronized (a.class) {
            b(context);
            c(context);
            d(context);
            if (f2212a == null) {
                f2212a = (SensorManager) context.getSystemService("sensor");
            }
            if (b == null) {
                b = f2212a.getDefaultSensor(1);
            }
            if (c == null) {
                c = f2212a.getDefaultSensor(4);
            }
            if (b != null) {
                f2212a.registerListener(new C0100a(), b, 3);
            }
            if (c != null) {
                f2212a.registerListener(new C0100a(), c, 3);
            }
        }
    }

    public static synchronized void a(C0100a c0100a) {
        synchronized (a.class) {
            if (f2212a != null) {
                f2212a.unregisterListener(c0100a);
            }
        }
    }

    private static void a(Map<String, String> map) {
        float[] fArr = d;
        float[] fArr2 = e;
        if (fArr != null) {
            int min = Math.min(g.length, fArr.length);
            for (int i = 0; i < min; i++) {
                map.put("accelerometer_" + g[i], String.valueOf(fArr[i]));
            }
        }
        if (fArr2 != null) {
            int min2 = Math.min(g.length, fArr2.length);
            for (int i2 = 0; i2 < min2; i2++) {
                map.put("rotation_" + g[i2], String.valueOf(fArr2[i2]));
            }
        }
    }

    private static void b(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        f.put("available_memory", String.valueOf(memoryInfo.availMem));
    }

    private static void c(Context context) {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        f.put("free_space", String.valueOf(statFs.getAvailableBlocks() * statFs.getBlockSize()));
    }

    private static void d(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return;
        }
        int intExtra = registerReceiver.getIntExtra("level", -1);
        int intExtra2 = registerReceiver.getIntExtra("scale", -1);
        int intExtra3 = registerReceiver.getIntExtra("status", -1);
        boolean z = intExtra3 == 2 || intExtra3 == 5;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        if (intExtra2 > 0) {
            f2 = (intExtra / intExtra2) * 100.0f;
        }
        f.put("battery", String.valueOf(f2));
        f.put("charging", z ? "1" : AppEventsConstants.EVENT_PARAM_VALUE_NO);
    }
}
