package com.google.android.gms.internal;

import android.content.Context;
import android.util.Log;
import com.google.android.gms.measurement.AppMeasurement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzadm {
    static AppMeasurement zzbj(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    public static List<zzadk> zzbk(Context context) {
        Map<String, Object> map;
        AppMeasurement zzbj = zzbj(context);
        if (zzbj == null) {
            if (!Log.isLoggable("FRCAnalytics", 3)) {
                return null;
            }
            Log.d("FRCAnalytics", "Unable to get user properties: analytics library is missing.");
            return null;
        }
        try {
            map = zzbj.zzaJ(false);
        } catch (NullPointerException e) {
            if (Log.isLoggable("FRCAnalytics", 3)) {
                Log.d("FRCAnalytics", "Unable to get user properties.", e);
            }
            map = null;
        }
        if (map == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            if (entry.getValue() != null) {
                arrayList.add(new zzadk(entry.getKey(), entry.getValue().toString()));
            }
        }
        return arrayList;
    }
}
