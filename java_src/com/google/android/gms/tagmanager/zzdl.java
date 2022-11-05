package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzdl {
    private static final Object zzbIC = null;
    private static Long zzbID = new Long(0);
    private static Double zzbIE = new Double(0.0d);
    private static zzdk zzbIF = zzdk.zzaA(0);
    private static String zzbIG = new String("");
    private static Boolean zzbIH = new Boolean(false);
    private static List<Object> zzbII = new ArrayList(0);
    private static Map<Object, Object> zzbIJ = new HashMap();
    private static zzak.zza zzbIK = zzR(zzbIG);

    private static double getDouble(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).doubleValue();
        }
        zzbo.e("getDouble received non-Number");
        return 0.0d;
    }

    public static String zzM(Object obj) {
        return obj == null ? zzbIG : obj.toString();
    }

    public static zzdk zzN(Object obj) {
        return obj instanceof zzdk ? (zzdk) obj : zzT(obj) ? zzdk.zzaA(zzU(obj)) : zzS(obj) ? zzdk.zza(Double.valueOf(getDouble(obj))) : zzhx(zzM(obj));
    }

    public static Long zzO(Object obj) {
        return zzT(obj) ? Long.valueOf(zzU(obj)) : zzhy(zzM(obj));
    }

    public static Double zzP(Object obj) {
        return zzS(obj) ? Double.valueOf(getDouble(obj)) : zzhz(zzM(obj));
    }

    public static Boolean zzQ(Object obj) {
        return obj instanceof Boolean ? (Boolean) obj : zzhA(zzM(obj));
    }

    public static zzak.zza zzR(Object obj) {
        boolean z = false;
        zzak.zza zzaVar = new zzak.zza();
        if (obj instanceof zzak.zza) {
            return (zzak.zza) obj;
        }
        if (obj instanceof String) {
            zzaVar.type = 1;
            zzaVar.string = (String) obj;
        } else if (obj instanceof List) {
            zzaVar.type = 2;
            List<Object> list = (List) obj;
            ArrayList arrayList = new ArrayList(list.size());
            boolean z2 = false;
            for (Object obj2 : list) {
                zzak.zza zzR = zzR(obj2);
                if (zzR == zzbIK) {
                    return zzbIK;
                }
                boolean z3 = z2 || zzR.zzlD;
                arrayList.add(zzR);
                z2 = z3;
            }
            zzaVar.zzlu = (zzak.zza[]) arrayList.toArray(new zzak.zza[0]);
            z = z2;
        } else if (obj instanceof Map) {
            zzaVar.type = 3;
            Set<Map.Entry> entrySet = ((Map) obj).entrySet();
            ArrayList arrayList2 = new ArrayList(entrySet.size());
            ArrayList arrayList3 = new ArrayList(entrySet.size());
            boolean z4 = false;
            for (Map.Entry entry : entrySet) {
                zzak.zza zzR2 = zzR(entry.getKey());
                zzak.zza zzR3 = zzR(entry.getValue());
                if (zzR2 == zzbIK || zzR3 == zzbIK) {
                    return zzbIK;
                }
                boolean z5 = z4 || zzR2.zzlD || zzR3.zzlD;
                arrayList2.add(zzR2);
                arrayList3.add(zzR3);
                z4 = z5;
            }
            zzaVar.zzlv = (zzak.zza[]) arrayList2.toArray(new zzak.zza[0]);
            zzaVar.zzlw = (zzak.zza[]) arrayList3.toArray(new zzak.zza[0]);
            z = z4;
        } else if (zzS(obj)) {
            zzaVar.type = 1;
            zzaVar.string = obj.toString();
        } else if (zzT(obj)) {
            zzaVar.type = 6;
            zzaVar.zzlz = zzU(obj);
        } else if (!(obj instanceof Boolean)) {
            String valueOf = String.valueOf(obj == null ? "null" : obj.getClass().toString());
            zzbo.e(valueOf.length() != 0 ? "Converting to Value from unknown object type: ".concat(valueOf) : new String("Converting to Value from unknown object type: "));
            return zzbIK;
        } else {
            zzaVar.type = 8;
            zzaVar.zzlA = ((Boolean) obj).booleanValue();
        }
        zzaVar.zzlD = z;
        return zzaVar;
    }

    public static Object zzRL() {
        return null;
    }

    public static Long zzRM() {
        return zzbID;
    }

    public static Double zzRN() {
        return zzbIE;
    }

    public static Boolean zzRO() {
        return zzbIH;
    }

    public static zzdk zzRP() {
        return zzbIF;
    }

    public static String zzRQ() {
        return zzbIG;
    }

    public static zzak.zza zzRR() {
        return zzbIK;
    }

    private static boolean zzS(Object obj) {
        return (obj instanceof Double) || (obj instanceof Float) || ((obj instanceof zzdk) && ((zzdk) obj).zzRG());
    }

    private static boolean zzT(Object obj) {
        return (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Integer) || (obj instanceof Long) || ((obj instanceof zzdk) && ((zzdk) obj).zzRH());
    }

    private static long zzU(Object obj) {
        if (obj instanceof Number) {
            return ((Number) obj).longValue();
        }
        zzbo.e("getInt64 received non-Number");
        return 0L;
    }

    public static String zze(zzak.zza zzaVar) {
        return zzM(zzj(zzaVar));
    }

    public static zzdk zzf(zzak.zza zzaVar) {
        return zzN(zzj(zzaVar));
    }

    public static Long zzg(zzak.zza zzaVar) {
        return zzO(zzj(zzaVar));
    }

    public static Double zzh(zzak.zza zzaVar) {
        return zzP(zzj(zzaVar));
    }

    private static Boolean zzhA(String str) {
        return "true".equalsIgnoreCase(str) ? Boolean.TRUE : Consts.False.equalsIgnoreCase(str) ? Boolean.FALSE : zzbIH;
    }

    public static zzak.zza zzhw(String str) {
        zzak.zza zzaVar = new zzak.zza();
        zzaVar.type = 5;
        zzaVar.zzly = str;
        return zzaVar;
    }

    private static zzdk zzhx(String str) {
        try {
            return zzdk.zzhv(str);
        } catch (NumberFormatException e) {
            zzbo.e(new StringBuilder(String.valueOf(str).length() + 33).append("Failed to convert '").append(str).append("' to a number.").toString());
            return zzbIF;
        }
    }

    private static Long zzhy(String str) {
        zzdk zzhx = zzhx(str);
        return zzhx == zzbIF ? zzbID : Long.valueOf(zzhx.longValue());
    }

    private static Double zzhz(String str) {
        zzdk zzhx = zzhx(str);
        return zzhx == zzbIF ? zzbIE : Double.valueOf(zzhx.doubleValue());
    }

    public static Boolean zzi(zzak.zza zzaVar) {
        return zzQ(zzj(zzaVar));
    }

    public static Object zzj(zzak.zza zzaVar) {
        int i = 0;
        if (zzaVar == null) {
            return null;
        }
        switch (zzaVar.type) {
            case 1:
                return zzaVar.string;
            case 2:
                ArrayList arrayList = new ArrayList(zzaVar.zzlu.length);
                zzak.zza[] zzaVarArr = zzaVar.zzlu;
                int length = zzaVarArr.length;
                while (i < length) {
                    Object zzj = zzj(zzaVarArr[i]);
                    if (zzj == null) {
                        return null;
                    }
                    arrayList.add(zzj);
                    i++;
                }
                return arrayList;
            case 3:
                if (zzaVar.zzlv.length != zzaVar.zzlw.length) {
                    String valueOf = String.valueOf(zzaVar.toString());
                    zzbo.e(valueOf.length() != 0 ? "Converting an invalid value to object: ".concat(valueOf) : new String("Converting an invalid value to object: "));
                    return null;
                }
                HashMap hashMap = new HashMap(zzaVar.zzlw.length);
                while (i < zzaVar.zzlv.length) {
                    Object zzj2 = zzj(zzaVar.zzlv[i]);
                    Object zzj3 = zzj(zzaVar.zzlw[i]);
                    if (zzj2 == null || zzj3 == null) {
                        return null;
                    }
                    hashMap.put(zzj2, zzj3);
                    i++;
                }
                return hashMap;
            case 4:
                zzbo.e("Trying to convert a macro reference to object");
                return null;
            case 5:
                zzbo.e("Trying to convert a function id to object");
                return null;
            case 6:
                return Long.valueOf(zzaVar.zzlz);
            case 7:
                StringBuffer stringBuffer = new StringBuffer();
                zzak.zza[] zzaVarArr2 = zzaVar.zzlB;
                int length2 = zzaVarArr2.length;
                while (i < length2) {
                    String zze = zze(zzaVarArr2[i]);
                    if (zze == zzbIG) {
                        return null;
                    }
                    stringBuffer.append(zze);
                    i++;
                }
                return stringBuffer.toString();
            case 8:
                return Boolean.valueOf(zzaVar.zzlA);
            default:
                zzbo.e(new StringBuilder(46).append("Failed to convert a value of type: ").append(zzaVar.type).toString());
                return null;
        }
    }
}
