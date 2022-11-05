package com.google.firebase.messaging;

import android.content.Context;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzbxs;
import com.google.android.gms.internal.zzbxz;
import com.google.android.gms.measurement.AppMeasurement;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class d {
    static int a(zzbxz.zzb zzbVar, int i) {
        if (zzbVar.zzcwa != 0) {
            return zzbVar.zzcwa;
        }
        if (i != 0) {
            return i;
        }
        return 1;
    }

    static Bundle a(zzbxz.zzb zzbVar) {
        return a(zzbVar.zzcvP, zzbVar.zzcvQ);
    }

    static Bundle a(String str, String str2) {
        Bundle bundle = new Bundle();
        bundle.putString(str, str2);
        return bundle;
    }

    static zzbxz.zzb a(byte[] bArr) {
        try {
            return zzbxz.zzb.zzak(bArr);
        } catch (zzbxs e) {
            return null;
        }
    }

    static AppMeasurement a(Context context) {
        try {
            return AppMeasurement.getInstance(context);
        } catch (NoClassDefFoundError e) {
            return null;
        }
    }

    static Object a(zzbxz.zzb zzbVar, String str, c cVar) {
        Object obj;
        String str2 = null;
        try {
            Class<?> cls = Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            Bundle a2 = a(zzbVar);
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
                cls.getField("mTimedOutEventName").set(obj, d(zzbVar, cVar));
                cls.getField("mTimedOutEventParams").set(obj, a2);
                cls.getField("mTriggerTimeout").set(obj, Integer.valueOf(zzbVar.zzcvT));
                cls.getField("mTriggeredEventName").set(obj, b(zzbVar, cVar));
                cls.getField("mTriggeredEventParams").set(obj, a2);
                cls.getField("mTimeToLive").set(obj, Integer.valueOf(zzbVar.zzcvU));
                cls.getField("mExpiredEventName").set(obj, e(zzbVar, cVar));
                cls.getField("mExpiredEventParams").set(obj, a2);
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

    static String a(zzbxz.zzb zzbVar, c cVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvV) ? zzbVar.zzcvV : cVar.a();
    }

    static String a(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mName").get(obj);
    }

    public static void a(Context context, String str, String str2, String str3, String str4) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_CE(experimentId) called by ".concat(valueOf) : new String("_CE(experimentId) called by "));
        }
        if (!b(context)) {
            return;
        }
        AppMeasurement a2 = a(context);
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("clearConditionalUserProperty", String.class, String.class, Bundle.class);
            declaredMethod.setAccessible(true);
            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(str2).length() + 17 + String.valueOf(str3).length()).append("Clearing _E: [").append(str2).append(", ").append(str3).append("]").toString());
            }
            declaredMethod.invoke(a2, str2, str4, a(str2, str3));
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    public static void a(Context context, String str, byte[] bArr, c cVar, int i) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(str);
            Log.v("FirebaseAbtUtil", valueOf.length() != 0 ? "_SE called by ".concat(valueOf) : new String("_SE called by "));
        }
        if (!b(context)) {
            return;
        }
        AppMeasurement a2 = a(context);
        zzbxz.zzb a3 = a(bArr);
        if (a3 == null) {
            if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
                return;
            }
            Log.v("FirebaseAbtUtil", "_SE failed; either _P was not set, or we couldn't deserialize the _P.");
            return;
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            boolean z = false;
            for (Object obj : b(a2, str)) {
                String a4 = a(obj);
                String b = b(obj);
                long c = c(obj);
                if (!a3.zzcvP.equals(a4) || !a3.zzcvQ.equals(b)) {
                    boolean z2 = false;
                    zzbxz.zza[] zzaVarArr = a3.zzcwb;
                    int length = zzaVarArr.length;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (zzaVarArr[i2].zzcvP.equals(a4)) {
                            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a4).length() + 33 + String.valueOf(b).length()).append("_E is found in the _OE list. [").append(a4).append(", ").append(b).append("]").toString());
                            }
                            z2 = true;
                        } else {
                            i2++;
                        }
                    }
                    if (!z2) {
                        if (a3.zzcvR > c) {
                            if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a4).length() + 115 + String.valueOf(b).length()).append("Clearing _E as it was not in the _OE list, andits start time is older than the start time of the _E to be set. [").append(a4).append(", ").append(b).append("]").toString());
                            }
                            a(context, str, a4, b, c(a3, cVar));
                        } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a4).length() + 109 + String.valueOf(b).length()).append("_E was not found in the _OE list, but not clearing it as it has a new start time than the _E to be set.  [").append(a4).append(", ").append(b).append("]").toString());
                        }
                    }
                } else {
                    if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                        Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a4).length() + 23 + String.valueOf(b).length()).append("_E is already set. [").append(a4).append(", ").append(b).append("]").toString());
                    }
                    z = true;
                }
            }
            if (!z) {
                a(a2, context, str, a3, cVar, i);
            } else if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                String valueOf2 = String.valueOf(a3.zzcvP);
                String valueOf3 = String.valueOf(a3.zzcvQ);
                Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf2).length() + 44 + String.valueOf(valueOf3).length()).append("_E is already set. Not setting it again [").append(valueOf2).append(", ").append(valueOf3).append("]").toString());
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

    static void a(AppMeasurement appMeasurement, Context context, String str, zzbxz.zzb zzbVar, c cVar, int i) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(zzbVar.zzcvP);
            String valueOf2 = String.valueOf(zzbVar.zzcvQ);
            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf).length() + 7 + String.valueOf(valueOf2).length()).append("_SEI: ").append(valueOf).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf2).toString());
        }
        try {
            Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty");
            List<Object> b = b(appMeasurement, str);
            if (a(appMeasurement, str)) {
                if (a(zzbVar, i) != 1) {
                    if (!Log.isLoggable("FirebaseAbtUtil", 2)) {
                        return;
                    }
                    String valueOf3 = String.valueOf(zzbVar.zzcvP);
                    String valueOf4 = String.valueOf(zzbVar.zzcvQ);
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf3).length() + 44 + String.valueOf(valueOf4).length()).append("_E won't be set due to overflow policy. [").append(valueOf3).append(", ").append(valueOf4).append("]").toString());
                    return;
                }
                Object obj = b.get(0);
                String a2 = a(obj);
                String b2 = b(obj);
                if (Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a2).length() + 38).append("Clearing _E due to overflow policy: [").append(a2).append("]").toString());
                }
                a(context, str, a2, b2, c(zzbVar, cVar));
            }
            for (Object obj2 : b) {
                String a3 = a(obj2);
                String b3 = b(obj2);
                if (a3.equals(zzbVar.zzcvP) && !b3.equals(zzbVar.zzcvQ) && Log.isLoggable("FirebaseAbtUtil", 2)) {
                    Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(a3).length() + 77 + String.valueOf(b3).length()).append("Clearing _E, as only one _V of the same _E can be set atany given time: [").append(a3).append(", ").append(b3).append("].").toString());
                    a(context, str, a3, b3, c(zzbVar, cVar));
                }
            }
            Object a4 = a(zzbVar, str, cVar);
            if (a4 != null) {
                a(appMeasurement, zzbVar, cVar, a4, str);
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

    static void a(AppMeasurement appMeasurement, zzbxz.zzb zzbVar, c cVar, Object obj, String str) {
        if (Log.isLoggable("FirebaseAbtUtil", 2)) {
            String valueOf = String.valueOf(zzbVar.zzcvP);
            String valueOf2 = String.valueOf(zzbVar.zzcvQ);
            String valueOf3 = String.valueOf(zzbVar.zzcvS);
            Log.v("FirebaseAbtUtil", new StringBuilder(String.valueOf(valueOf).length() + 27 + String.valueOf(valueOf2).length() + String.valueOf(valueOf3).length()).append("Setting _CUP for _E: [").append(valueOf).append(", ").append(valueOf2).append(", ").append(valueOf3).append("]").toString());
        }
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("setConditionalUserProperty", Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty"));
            declaredMethod.setAccessible(true);
            appMeasurement.logEventInternal(str, a(zzbVar, cVar), a(zzbVar));
            declaredMethod.invoke(appMeasurement, obj);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
        }
    }

    static boolean a(AppMeasurement appMeasurement, String str) {
        return b(appMeasurement, str).size() >= c(appMeasurement, str);
    }

    static String b(zzbxz.zzb zzbVar, c cVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvW) ? zzbVar.zzcvW : cVar.b();
    }

    static String b(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return (String) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mValue").get(obj);
    }

    static List<Object> b(AppMeasurement appMeasurement, String str) {
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

    private static boolean b(Context context) {
        if (a(context) == null) {
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

    static int c(AppMeasurement appMeasurement, String str) {
        try {
            Method declaredMethod = AppMeasurement.class.getDeclaredMethod("getMaxUserProperties", String.class);
            declaredMethod.setAccessible(true);
            return ((Integer) declaredMethod.invoke(appMeasurement, str)).intValue();
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            Log.e("FirebaseAbtUtil", "Could not complete the operation due to an internal error.", e);
            return 20;
        }
    }

    static long c(Object obj) throws ClassNotFoundException, NoSuchFieldException, IllegalAccessException {
        return ((Long) Class.forName("com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty").getField("mCreationTimestamp").get(obj)).longValue();
    }

    static String c(zzbxz.zzb zzbVar, c cVar) {
        return (zzbVar == null || TextUtils.isEmpty(zzbVar.zzcvX)) ? cVar.e() : zzbVar.zzcvX;
    }

    static String d(zzbxz.zzb zzbVar, c cVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvY) ? zzbVar.zzcvY : cVar.c();
    }

    static String e(zzbxz.zzb zzbVar, c cVar) {
        return !TextUtils.isEmpty(zzbVar.zzcvZ) ? zzbVar.zzcvZ : cVar.d();
    }
}
