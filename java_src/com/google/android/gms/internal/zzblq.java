package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzbxz;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzblq {
    static zzbxz.zzb zzU(byte[] bArr) {
        try {
            return zzbxz.zzb.zzak(bArr);
        } catch (zzbxs e) {
            return null;
        }
    }

    static int zza(zzbxz.zzb zzbVar, int i) {
        if (zzbVar.zzcwa != 0) {
            return zzbVar.zzcwa;
        }
        if (i != 0) {
            return i;
        }
        return 1;
    }

    public static long zza(long j, List<byte[]> list) {
        zzbxz.zzb zzU;
        if (list != null) {
            for (byte[] bArr : list) {
                if (bArr != null && (zzU = zzU(bArr)) != null && zzU.zzcvR > j) {
                    j = zzU.zzcvR;
                }
            }
        }
        return j;
    }

    static Bundle zza(zzbxz.zzb zzbVar) {
        return zzam(zzbVar.zzcvP, zzbVar.zzcvQ);
    }

    static Object zza(zzbxz.zzb zzbVar, String str, zzblp zzblpVar) {
        Object obj;
        String str2 = null;
        try {
            Class<?> cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            Bundle zza = zza(zzbVar);
            obj = cls.getConstructor(new Class[0]).newInstance(new Object[0]);
            try {
                cls.getField("mOrigin").set(obj, str);
                cls.getField("mCreationTimestamp").set(obj, Long.valueOf(zzbVar.zzcvR));
                cls.getField("mName").set(obj, zzbVar.zzcvP);
                cls.getField("mValue").set(obj, zzbVar.zzcvQ);
                if (!TextUtils.isEmpty(zzbVar.zzcvS)) {
                    str2 = zzbVar.zzcvS;
                }
                cls.getField("mTriggerEventName").set(obj, str2);
                cls.getField("mTimedOutEventName").set(obj, zzd(zzbVar, zzblpVar));
                cls.getField("mTimedOutEventParams").set(obj, zza);
                cls.getField("mTriggerTimeout").set(obj, Integer.valueOf(zzbVar.zzcvT));
                cls.getField("mTriggeredEventName").set(obj, zzb(zzbVar, zzblpVar));
                cls.getField("mTriggeredEventParams").set(obj, zza);
                cls.getField("mTimeToLive").set(obj, Integer.valueOf(zzbVar.zzcvU));
                cls.getField("mExpiredEventName").set(obj, zze(zzbVar, zzblpVar));
                cls.getField("mExpiredEventParams").set(obj, zza);
            } catch (ClassNotFoundException e) {
                e = e;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            } catch (IllegalAccessException e2) {
                e = e2;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            } catch (InstantiationException e3) {
                e = e3;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            } catch (NoSuchFieldException e4) {
                e = e4;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            } catch (NoSuchMethodException e5) {
                e = e5;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            } catch (InvocationTargetException e6) {
                e = e6;
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                return obj;
            }
        } catch (ClassNotFoundException e7) {
            e = e7;
            obj = null;
        } catch (IllegalAccessException e8) {
            e = e8;
            obj = null;
        } catch (InstantiationException e9) {
            e = e9;
            obj = null;
        } catch (NoSuchFieldException e10) {
            e = e10;
            obj = null;
        } catch (NoSuchMethodException e11) {
            e = e11;
            obj = null;
        } catch (InvocationTargetException e12) {
            e = e12;
            obj = null;
        }
        return obj;
    }

    static String zza(zzbxz.zzb zzbVar, zzblp zzblpVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvV) ? zzbVar.zzcvV : zzblpVar.zzUZ();
    }

    public static void zza(Context context, String str, String str2, String str3, String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_CE(experimentId) called by ".concat(valueOf) : new String("_CE(experimentId) called by "));
        }
        if (!zzco(context)) {
            return;
        }
        AppMeasurement zzbj = zzbj(context);
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", String.class, String.class, Bundle.class);
            declaredMethod.setAccessible(true);
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str3).length()).append("Clearing _E: [").append(str2).append(", ").append(str3).append("]").toString());
            }
            declaredMethod.invoke(zzbj, str2, str4, zzam(str2, str3));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    public static void zza(Context context, String str, List<byte[]> list, int i, zzblp zzblpVar, long j) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_UE called by ".concat(valueOf) : new String("_UE called by "));
        }
        if (!zzco(context)) {
            return;
        }
        AppMeasurement zzbj = zzbj(context);
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List<Object> zzb = zzb(zzbj, str);
            new ArrayList();
            List<zzbxz.zzb> zzc = zzc(list, zzb);
            for (Object obj : zzd(list, zzb)) {
                String zzab = zzab(obj);
                String zzac = zzac(obj);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(zzab).length() + 30).append("Clearing _E as part of _UE: [").append(zzab).append("]").toString());
                }
                zza(context, str, zzab, zzac, zzc((zzbxz.zzb) null, zzblpVar));
            }
            for (zzbxz.zzb zzbVar : zzc) {
                if (zzbVar.zzcvR > j) {
                    String valueOf2 = String.valueOf(zzbVar.zzcvP);
                    String valueOf3 = String.valueOf(zzbVar.zzcvQ);
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf2).length() + 106 + String.valueOf(valueOf3).length()).append("Setting _E as part of _UE: [").append(valueOf2).append(", ").append(valueOf3).append(", ").append(zzbVar.zzcvR).append("], latestOriginKnownExpStartTime: ").append(j).toString());
                    zza(zzbj, context, str, zzbVar, zzblpVar, i);
                } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    String valueOf4 = String.valueOf(zzbVar.zzcvP);
                    String valueOf5 = String.valueOf(zzbVar.zzcvQ);
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf4).length() + 118 + String.valueOf(valueOf5).length()).append("Not setting _E, due to lastUpdateTime: [").append(valueOf4).append(", ").append(valueOf5).append(", ").append(zzbVar.zzcvR).append("], latestOriginKnownExpStartTime: ").append(j).toString());
                }
            }
        } catch (ClassNotFoundException e) {
            e = e;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        } catch (IllegalAccessException e2) {
            e = e2;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        } catch (NoSuchFieldException e3) {
            e = e3;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    static void zza(AppMeasurement appMeasurement, Context context, String str, zzbxz.zzb zzbVar, zzblp zzblpVar, int i) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(zzbVar.zzcvP);
            String valueOf2 = String.valueOf(zzbVar.zzcvQ);
            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf).length() + 7 + String.valueOf(valueOf2).length()).append("_SEI: ").append(valueOf).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf2).toString());
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List<Object> zzb = zzb(appMeasurement, str);
            if (zza(appMeasurement, str)) {
                if (zza(zzbVar, i) != 1) {
                    if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
                        return;
                    }
                    String valueOf3 = String.valueOf(zzbVar.zzcvP);
                    String valueOf4 = String.valueOf(zzbVar.zzcvQ);
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf3).length() + 44 + String.valueOf(valueOf4).length()).append("_E won't be set due to overflow policy. [").append(valueOf3).append(", ").append(valueOf4).append("]").toString());
                    return;
                }
                Object obj = zzb.get(0);
                String zzab = zzab(obj);
                String zzac = zzac(obj);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(zzab).length() + 38).append("Clearing _E due to overflow policy: [").append(zzab).append("]").toString());
                }
                zza(context, str, zzab, zzac, zzc(zzbVar, zzblpVar));
            }
            for (Object obj2 : zzb) {
                String zzab2 = zzab(obj2);
                String zzac2 = zzac(obj2);
                if (zzab2.equals(zzbVar.zzcvP) && !zzac2.equals(zzbVar.zzcvQ) && Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(zzab2).length() + 77 + String.valueOf(zzac2).length()).append("Clearing _E, as only one _V of the same _E can be set atany given time: [").append(zzab2).append(", ").append(zzac2).append("].").toString());
                    zza(context, str, zzab2, zzac2, zzc(zzbVar, zzblpVar));
                }
            }
            Object zza = zza(zzbVar, str, zzblpVar);
            if (zza != null) {
                zza(appMeasurement, zzbVar, zzblpVar, zza, str);
            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                String valueOf5 = String.valueOf(zzbVar.zzcvP);
                String valueOf6 = String.valueOf(zzbVar.zzcvQ);
                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf5).length() + 42 + String.valueOf(valueOf6).length()).append("Could not create _CUP for: [").append(valueOf5).append(", ").append(valueOf6).append("]. Skipping.").toString());
            }
        } catch (ClassNotFoundException e) {
            e = e;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        } catch (IllegalAccessException e2) {
            e = e2;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        } catch (NoSuchFieldException e3) {
            e = e3;
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    static void zza(AppMeasurement appMeasurement, zzbxz.zzb zzbVar, zzblp zzblpVar, Object obj, String str) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(zzbVar.zzcvP);
            String valueOf2 = String.valueOf(zzbVar.zzcvQ);
            String valueOf3 = String.valueOf(zzbVar.zzcvS);
            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf).length() + 27 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Setting _CUP for _E: [").append(valueOf).append(", ").append(valueOf2).append(", ").append(valueOf3).append("]").toString());
        }
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty"));
            declaredMethod.setAccessible(true);
            appMeasurement.logEventInternal(str, zza(zzbVar, zzblpVar), zza(zzbVar));
            declaredMethod.invoke(appMeasurement, obj);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    static boolean zza(AppMeasurement appMeasurement, String str) {
        return zzb(appMeasurement, str).size() >= zzc(appMeasurement, str);
    }

    static String zzab(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
    }

    static String zzac(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
    }

    static Bundle zzam(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    static String zzb(zzbxz.zzb zzbVar, zzblp zzblpVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvW) ? zzbVar.zzcvW : zzblpVar.zzVa();
    }

    static List<Object> zzb(AppMeasurement appMeasurement, String str) {
        List<Object> list;
        ArrayList arrayList = new ArrayList();
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getConditionalUserProperties", String.class, String.class);
            declaredMethod.setAccessible(true);
            list = (List) declaredMethod.invoke(appMeasurement, str, "");
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            list = arrayList;
        }
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(str).length() + 55).append("Number of currently set _Es for origin: ").append(str).append(" is ").append(list.size()).toString());
        }
        return list;
    }

    static AppMeasurement zzbj(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    static int zzc(AppMeasurement appMeasurement, String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", String.class);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, str)).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return 20;
        }
    }

    static String zzc(zzbxz.zzb zzbVar, zzblp zzblpVar) {
        return (zzbVar == null || TextUtils.isEmpty(zzbVar.zzcvX)) ? zzblpVar.zzVd() : zzbVar.zzcvX;
    }

    static List<zzbxz.zzb> zzc(List<byte[]> list, List<Object> list2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : list) {
            zzbxz.zzb zzU = zzU(bArr);
            if (zzU != null) {
                Iterator<Object> it = list2.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = false;
                        break;
                    }
                    Object next = it.next();
                    try {
                        Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                        zzab(next);
                        String zzac = zzac(next);
                        if (zzU.zzcvP.equals(zzab(next)) && zzU.zzcvQ.equals(zzac)) {
                            z = true;
                            break;
                        }
                    } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                        Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
                    }
                }
                if (!z) {
                    arrayList.add(zzU);
                }
            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", "Couldn't deserialize the payload; skipping.");
            }
        }
        return arrayList;
    }

    private static boolean zzco(Context context) {
        if (zzbj(context) == null) {
            if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
                return false;
            }
            Log.v("FirebaseAbtUtil", "Firebase Analytics not available");
            return false;
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            return true;
        } catch (ClassNotFoundException e) {
            if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
                return false;
            }
            Log.v("FirebaseAbtUtil", "Firebase Analytics library is missing support for abt. Please update to a more recent version.");
            return false;
        }
    }

    static String zzd(zzbxz.zzb zzbVar, zzblp zzblpVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvY) ? zzbVar.zzcvY : zzblpVar.zzVb();
    }

    static List<Object> zzd(List<byte[]> list, List<Object> list2) {
        boolean z;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list2) {
            try {
                Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
                String zzab = zzab(obj);
                String zzac = zzac(obj);
                Iterator<byte[]> it = list.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        z = true;
                        break;
                    }
                    zzbxz.zzb zzU = zzU(it.next());
                    if (zzU != null) {
                        if (zzU.zzcvP.equals(zzab) && zzU.zzcvQ.equals(zzac)) {
                            z = false;
                            break;
                        }
                    } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        Log.v("FirebaseAbtUtil", "Couldn't deserialize the payload; skipping.");
                    }
                }
                if (z) {
                    arrayList.add(obj);
                }
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException e) {
                Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            }
        }
        return arrayList;
    }

    static String zze(zzbxz.zzb zzbVar, zzblp zzblpVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvZ) ? zzbVar.zzcvZ : zzblpVar.zzVc();
    }
}
