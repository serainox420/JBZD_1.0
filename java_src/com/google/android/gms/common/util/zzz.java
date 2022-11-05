package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import com.google.android.gms.analytics.ecommerce.ProductAction;
import com.google.android.gms.internal.zzadg;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzz {
    private static final Method zzaIq = zzzs();
    private static final Method zzaIr = zzzt();
    private static final Method zzaIs = zzzu();
    private static final Method zzaIt = zzzv();
    private static final Method zzaIu = zzzw();

    public static WorkSource zzF(Context context, String str) {
        if (context == null || context.getPackageManager() == null) {
            return null;
        }
        try {
            ApplicationInfo applicationInfo = zzadg.zzbi(context).getApplicationInfo(str, 0);
            if (applicationInfo != null) {
                return zzf(applicationInfo.uid, str);
            }
            String valueOf = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf.length() != 0 ? "Could not get applicationInfo from package: ".concat(valueOf) : new String("Could not get applicationInfo from package: "));
            return null;
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf2 = String.valueOf(str);
            Log.e("WorkSourceUtil", valueOf2.length() != 0 ? "Could not find package: ".concat(valueOf2) : new String("Could not find package: "));
            return null;
        }
    }

    public static int zza(WorkSource workSource) {
        if (zzaIs != null) {
            try {
                return ((Integer) zzaIs.invoke(workSource, new Object[0])).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    public static String zza(WorkSource workSource, int i) {
        if (zzaIu != null) {
            try {
                return (String) zzaIu.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return null;
    }

    public static void zza(WorkSource workSource, int i, String str) {
        if (zzaIr != null) {
            if (str == null) {
                str = "";
            }
            try {
                zzaIr.invoke(workSource, Integer.valueOf(i), str);
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        } else if (zzaIq == null) {
        } else {
            try {
                zzaIq.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    public static List<String> zzb(WorkSource workSource) {
        int zza = workSource == null ? 0 : zza(workSource);
        if (zza == 0) {
            return Collections.EMPTY_LIST;
        }
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < zza; i++) {
            String zza2 = zza(workSource, i);
            if (!zzw.zzdz(zza2)) {
                arrayList.add(zza2);
            }
        }
        return arrayList;
    }

    public static boolean zzbf(Context context) {
        return (context == null || context.getPackageManager() == null || zzadg.zzbi(context).checkPermission("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    public static WorkSource zzf(int i, String str) {
        WorkSource workSource = new WorkSource();
        zza(workSource, i, str);
        return workSource;
    }

    private static Method zzzs() {
        try {
            return WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzzt() {
        if (zzt.zzzk()) {
            try {
                return WorkSource.class.getMethod(ProductAction.ACTION_ADD, Integer.TYPE, String.class);
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }

    private static Method zzzu() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzzv() {
        try {
            return WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception e) {
            return null;
        }
    }

    private static Method zzzw() {
        if (zzt.zzzk()) {
            try {
                return WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception e) {
                return null;
            }
        }
        return null;
    }
}
