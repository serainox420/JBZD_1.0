package com.google.android.gms.internal;

import android.text.TextUtils;
import com.facebook.appevents.AppEventsConstants;
import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzbcr {
    public static double zza(zzbit<?> zzbitVar, zzbit<?> zzbitVar2) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        if (zzbitVar2 == null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        double zzb = zzb(zzbitVar);
        double zzb2 = zzb(zzbitVar2);
        if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
            return Double.NaN;
        }
        if ((zzb == Double.POSITIVE_INFINITY && zzb2 == Double.NEGATIVE_INFINITY) || (zzb == Double.NEGATIVE_INFINITY && zzb2 == Double.POSITIVE_INFINITY)) {
            return Double.NaN;
        }
        return (!Double.isInfinite(zzb) || Double.isInfinite(zzb2)) ? (Double.isInfinite(zzb) || !Double.isInfinite(zzb2)) ? zzb + zzb2 : zzb2 : zzb;
    }

    public static boolean zza(zzbit<?> zzbitVar) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        if (zzbitVar == zzbix.zzbMS || zzbitVar == zzbix.zzbMR) {
            return false;
        }
        if (zzbitVar instanceof zzbiu) {
            return ((Boolean) ((zzbiu) zzbitVar).zzTi()).booleanValue();
        }
        if (zzbitVar instanceof zzbiv) {
            if (((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue() == 0.0d || ((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue() == -0.0d || Double.isNaN(((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue())) {
                return false;
            }
        } else if (zzbitVar instanceof zzbjb) {
            if (((String) ((zzbjb) zzbitVar).zzTi()).isEmpty()) {
                return false;
            }
        } else if (zzf(zzbitVar)) {
            String valueOf = String.valueOf(zzbitVar.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 33).append("Illegal type given to isTruthy: ").append(valueOf).append(".").toString());
        }
        return true;
    }

    public static double zzb(zzbit<?> zzbitVar) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        if (zzbitVar == zzbix.zzbMS) {
            return Double.NaN;
        }
        if (zzbitVar == zzbix.zzbMR) {
            return 0.0d;
        }
        if (zzbitVar instanceof zzbiu) {
            return ((Boolean) ((zzbiu) zzbitVar).zzTi()).booleanValue() ? 1.0d : 0.0d;
        } else if (zzbitVar instanceof zzbiv) {
            return ((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue();
        } else {
            if (zzbitVar instanceof zzbiy) {
                zzbiy zzbiyVar = (zzbiy) zzbitVar;
                if (zzbiyVar.zzTi().isEmpty()) {
                    return 0.0d;
                }
                if (zzbiyVar.zzTi().size() == 1) {
                    return zzb(new zzbjb(zzd(zzbiyVar.zznL(0))));
                }
            } else if (zzbitVar instanceof zzbjb) {
                zzbjb zzbjbVar = (zzbjb) zzbitVar;
                if (((String) zzbjbVar.zzTi()).isEmpty()) {
                    return 0.0d;
                }
                try {
                    return Double.parseDouble((String) zzbjbVar.zzTi());
                } catch (NumberFormatException e) {
                    return Double.NaN;
                }
            }
            if (!zzf(zzbitVar)) {
                return Double.NaN;
            }
            String valueOf = String.valueOf(zzbitVar.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 41).append("Illegal type given to numberEquivalent: ").append(valueOf).append(".").toString());
        }
    }

    public static boolean zzb(zzbit<?> zzbitVar, zzbit<?> zzbitVar2) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar2 != null);
        if (zzf(zzbitVar)) {
            String valueOf = String.valueOf(zzbitVar.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Illegal type given to abstractRelationalCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(zzbitVar2)) {
            String valueOf2 = String.valueOf(zzbitVar2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 50).append("Illegal type given to abstractRelationalCompare: ").append(valueOf2).append(".").toString());
        } else {
            zzbjb zzbjbVar = ((zzbitVar instanceof zzbiz) || (zzbitVar instanceof zzbiy) || (zzbitVar instanceof zzbiw)) ? new zzbjb(zzd(zzbitVar)) : zzbitVar;
            zzbjb zzbjbVar2 = ((zzbitVar2 instanceof zzbiz) || (zzbitVar2 instanceof zzbiy) || (zzbitVar2 instanceof zzbiw)) ? new zzbjb(zzd(zzbitVar2)) : zzbitVar2;
            if ((zzbjbVar instanceof zzbjb) && (zzbjbVar2 instanceof zzbjb)) {
                return ((String) zzbjbVar.zzTi()).compareTo((String) zzbjbVar2.zzTi()) < 0;
            }
            double zzb = zzb(zzbjbVar);
            double zzb2 = zzb(zzbjbVar2);
            if (Double.isNaN(zzb) || Double.isNaN(zzb2)) {
                return false;
            }
            if (zzb == 0.0d && zzb2 == -0.0d) {
                return false;
            }
            if ((zzb == -0.0d && zzb2 == 0.0d) || zzb == Double.POSITIVE_INFINITY) {
                return false;
            }
            if (zzb2 == Double.POSITIVE_INFINITY) {
                return true;
            }
            if (zzb2 == Double.NEGATIVE_INFINITY) {
                return false;
            }
            return zzb == Double.NEGATIVE_INFINITY || Double.compare(zzb, zzb2) < 0;
        }
    }

    public static double zzc(zzbit<?> zzbitVar) {
        double zzb = zzb(zzbitVar);
        if (Double.isNaN(zzb)) {
            return 0.0d;
        }
        return (zzb == 0.0d || zzb == -0.0d || Double.isInfinite(zzb)) ? zzb : Math.signum(zzb) * Math.floor(Math.abs(zzb));
    }

    public static boolean zzc(zzbit<?> zzbitVar, zzbit<?> zzbitVar2) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar2 != null);
        if (zzf(zzbitVar)) {
            String valueOf = String.valueOf(zzbitVar.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 48).append("Illegal type given to abstractEqualityCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(zzbitVar2)) {
            String valueOf2 = String.valueOf(zzbitVar2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 48).append("Illegal type given to abstractEqualityCompare: ").append(valueOf2).append(".").toString());
        } else {
            String zze = zze(zzbitVar);
            String zze2 = zze(zzbitVar2);
            if (!zze.equals(zze2)) {
                if ((zzbitVar == zzbix.zzbMS || zzbitVar == zzbix.zzbMR) && (zzbitVar2 == zzbix.zzbMS || zzbitVar2 == zzbix.zzbMR)) {
                    return true;
                }
                if (zze.equals("Number") && zze2.equals("String")) {
                    return zzc(zzbitVar, new zzbiv(Double.valueOf(zzb(zzbitVar2))));
                }
                if ((!zze.equals("String") || !zze2.equals("Number")) && !zze.equals("Boolean")) {
                    if (zze2.equals("Boolean")) {
                        return zzc(zzbitVar, new zzbiv(Double.valueOf(zzb(zzbitVar2))));
                    }
                    if ((zze.equals("String") || zze.equals("Number")) && zze2.equals("Object")) {
                        return zzc(zzbitVar, new zzbjb(zzd(zzbitVar2)));
                    }
                    if (zze.equals("Object") && (zze2.equals("String") || zze2.equals("Number"))) {
                        return zzc(new zzbjb(zzd(zzbitVar)), zzbitVar2);
                    }
                    return false;
                }
                return zzc(new zzbiv(Double.valueOf(zzb(zzbitVar))), zzbitVar2);
            }
            char c = 65535;
            switch (zze.hashCode()) {
                case -1950496919:
                    if (zze.equals("Number")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1939501217:
                    if (zze.equals("Object")) {
                        c = 5;
                        break;
                    }
                    break;
                case -1808118735:
                    if (zze.equals("String")) {
                        c = 3;
                        break;
                    }
                    break;
                case 2439591:
                    if (zze.equals("Null")) {
                        c = 1;
                        break;
                    }
                    break;
                case 965837104:
                    if (zze.equals("Undefined")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1729365000:
                    if (zze.equals("Boolean")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    return true;
                case 2:
                    double doubleValue = ((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue();
                    double doubleValue2 = ((Double) ((zzbiv) zzbitVar2).zzTi()).doubleValue();
                    if (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2)) {
                        return false;
                    }
                    return doubleValue == doubleValue2;
                case 3:
                    return ((String) ((zzbjb) zzbitVar).zzTi()).equals((String) ((zzbjb) zzbitVar2).zzTi());
                case 4:
                    return ((Boolean) ((zzbiu) zzbitVar).zzTi()) == ((Boolean) ((zzbiu) zzbitVar2).zzTi());
                case 5:
                    return zzbitVar == zzbitVar2;
                default:
                    return false;
            }
        }
    }

    public static String zzd(zzbit<?> zzbitVar) {
        String str;
        int i = 1;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        if (zzbitVar == zzbix.zzbMS) {
            return "undefined";
        }
        if (zzbitVar == zzbix.zzbMR) {
            return "null";
        }
        if (zzbitVar instanceof zzbiu) {
            return ((Boolean) ((zzbiu) zzbitVar).zzTi()).booleanValue() ? "true" : Consts.False;
        } else if (!(zzbitVar instanceof zzbiv)) {
            if (zzbitVar instanceof zzbiw) {
                zzbcq zzbcqVar = (zzbcq) ((zzbiw) zzbitVar).zzTi();
                if (zzbcqVar instanceof zzbcp) {
                    return ((zzbcp) zzbcqVar).getName();
                }
            } else if (zzbitVar instanceof zzbiy) {
                ArrayList arrayList = new ArrayList();
                for (zzbit<?> zzbitVar2 : ((zzbiy) zzbitVar).zzTi()) {
                    if (zzbitVar2 == zzbix.zzbMR || zzbitVar2 == zzbix.zzbMS) {
                        arrayList.add("");
                    } else {
                        arrayList.add(zzd(zzbitVar2));
                    }
                }
                return TextUtils.join(",", arrayList);
            } else if (zzbitVar instanceof zzbiz) {
                return "[object Object]";
            } else {
                if (zzbitVar instanceof zzbjb) {
                    return (String) ((zzbjb) zzbitVar).zzTi();
                }
            }
            if (zzf(zzbitVar)) {
                String valueOf = String.valueOf(zzbitVar.toString());
                str = new StringBuilder(String.valueOf(valueOf).length() + 41).append("Illegal type given to stringEquivalent: ").append(valueOf).append(".").toString();
            } else {
                str = "Unknown type in stringEquivalent.";
            }
            throw new IllegalArgumentException(str);
        } else {
            String d = Double.toString(((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue());
            int indexOf = d.indexOf("E");
            if (indexOf <= 0) {
                if (!d.endsWith(".0")) {
                    return d;
                }
                String substring = d.substring(0, d.length() - 2);
                return substring.equals("-0") ? AppEventsConstants.EVENT_PARAM_VALUE_NO : substring;
            }
            int parseInt = Integer.parseInt(d.substring(indexOf + 1, d.length()));
            if (parseInt < 0) {
                if (parseInt <= -7) {
                    return d.replace("E", "e");
                }
                String replace = d.substring(0, indexOf).replace(".", "");
                StringBuilder sb = new StringBuilder();
                sb.append("0.");
                for (int i2 = parseInt; i2 + 1 < 0; i2++) {
                    sb.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
                }
                sb.append(replace);
                return sb.toString();
            } else if (parseInt >= 21) {
                return d.replace("E", "e+");
            } else {
                String replace2 = d.substring(0, indexOf).replace(".", "");
                int i3 = parseInt + 1;
                int length = replace2.length();
                if (!replace2.startsWith("-")) {
                    i = 0;
                }
                int i4 = i3 - (length - i);
                StringBuilder sb2 = new StringBuilder();
                if (i4 < 0) {
                    int length2 = i4 + replace2.length();
                    sb2.append(replace2.substring(0, length2));
                    sb2.append(".");
                    sb2.append(replace2.substring(length2, replace2.length()));
                } else {
                    sb2.append(replace2);
                    while (i4 > 0) {
                        sb2.append(AppEventsConstants.EVENT_PARAM_VALUE_NO);
                        i4--;
                    }
                }
                return sb2.toString();
            }
        }
    }

    public static boolean zzd(zzbit<?> zzbitVar, zzbit<?> zzbitVar2) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVar2 != null);
        if (zzf(zzbitVar)) {
            String valueOf = String.valueOf(zzbitVar.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf).length() + 46).append("Illegal type given to strictEqualityCompare: ").append(valueOf).append(".").toString());
        } else if (zzf(zzbitVar2)) {
            String valueOf2 = String.valueOf(zzbitVar2.toString());
            throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 46).append("Illegal type given to strictEqualityCompare: ").append(valueOf2).append(".").toString());
        } else {
            String zze = zze(zzbitVar);
            if (!zze.equals(zze(zzbitVar2))) {
                return false;
            }
            char c = 65535;
            switch (zze.hashCode()) {
                case -1950496919:
                    if (zze.equals("Number")) {
                        c = 2;
                        break;
                    }
                    break;
                case -1808118735:
                    if (zze.equals("String")) {
                        c = 3;
                        break;
                    }
                    break;
                case 2439591:
                    if (zze.equals("Null")) {
                        c = 1;
                        break;
                    }
                    break;
                case 965837104:
                    if (zze.equals("Undefined")) {
                        c = 0;
                        break;
                    }
                    break;
                case 1729365000:
                    if (zze.equals("Boolean")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    return true;
                case 2:
                    double doubleValue = ((Double) ((zzbiv) zzbitVar).zzTi()).doubleValue();
                    double doubleValue2 = ((Double) ((zzbiv) zzbitVar2).zzTi()).doubleValue();
                    if (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2)) {
                        return false;
                    }
                    return doubleValue == doubleValue2;
                case 3:
                    return ((String) ((zzbjb) zzbitVar).zzTi()).equals((String) ((zzbjb) zzbitVar2).zzTi());
                case 4:
                    return ((Boolean) ((zzbiu) zzbitVar).zzTi()) == ((Boolean) ((zzbiu) zzbitVar2).zzTi());
                default:
                    return zzbitVar == zzbitVar2;
            }
        }
    }

    private static String zze(zzbit<?> zzbitVar) {
        return zzbitVar == zzbix.zzbMS ? "Undefined" : zzbitVar == zzbix.zzbMR ? "Null" : zzbitVar instanceof zzbiu ? "Boolean" : zzbitVar instanceof zzbiv ? "Number" : zzbitVar instanceof zzbjb ? "String" : "Object";
    }

    private static boolean zzf(zzbit<?> zzbitVar) {
        return (zzbitVar instanceof zzbja) || !(!(zzbitVar instanceof zzbix) || zzbitVar == zzbix.zzbMS || zzbitVar == zzbix.zzbMR);
    }
}
