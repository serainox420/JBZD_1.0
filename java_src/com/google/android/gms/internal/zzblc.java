package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbld;
import com.google.android.gms.wearable.Asset;
import com.google.android.gms.wearable.DataMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.TreeSet;
/* loaded from: classes2.dex */
public final class zzblc {

    /* loaded from: classes2.dex */
    public static class zza {
        public final zzbld zzbVs;
        public final List<Asset> zzbVt;

        public zza(zzbld zzbldVar, List<Asset> list) {
            this.zzbVs = zzbldVar;
            this.zzbVt = list;
        }
    }

    private static int zza(String str, zzbld.zza.C0302zza[] c0302zzaArr) {
        int i = 14;
        for (zzbld.zza.C0302zza c0302zza : c0302zzaArr) {
            if (i == 14) {
                if (c0302zza.type == 9 || c0302zza.type == 2 || c0302zza.type == 6) {
                    i = c0302zza.type;
                } else if (c0302zza.type != 14) {
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 48).append("Unexpected TypedValue type: ").append(c0302zza.type).append(" for key ").append(str).toString());
                }
            } else if (c0302zza.type != i) {
                throw new IllegalArgumentException(new StringBuilder(String.valueOf(str).length() + 126).append("The ArrayList elements should all be the same type, but ArrayList with key ").append(str).append(" contains items of type ").append(i).append(" and ").append(c0302zza.type).toString());
            }
        }
        return i;
    }

    static int zza(List<Asset> list, Asset asset) {
        list.add(asset);
        return list.size() - 1;
    }

    public static zza zza(DataMap dataMap) {
        zzbld zzbldVar = new zzbld();
        ArrayList arrayList = new ArrayList();
        zzbldVar.zzbVu = zza(dataMap, arrayList);
        return new zza(zzbldVar, arrayList);
    }

    private static zzbld.zza.C0302zza zza(List<Asset> list, Object obj) {
        int i;
        int i2 = 0;
        zzbld.zza.C0302zza c0302zza = new zzbld.zza.C0302zza();
        if (obj == null) {
            c0302zza.type = 14;
            return c0302zza;
        }
        c0302zza.zzbVy = new zzbld.zza.C0302zza.C0303zza();
        if (obj instanceof String) {
            c0302zza.type = 2;
            c0302zza.zzbVy.zzbVA = (String) obj;
        } else if (obj instanceof Integer) {
            c0302zza.type = 6;
            c0302zza.zzbVy.zzbVE = ((Integer) obj).intValue();
        } else if (obj instanceof Long) {
            c0302zza.type = 5;
            c0302zza.zzbVy.zzbVD = ((Long) obj).longValue();
        } else if (obj instanceof Double) {
            c0302zza.type = 3;
            c0302zza.zzbVy.zzbVB = ((Double) obj).doubleValue();
        } else if (obj instanceof Float) {
            c0302zza.type = 4;
            c0302zza.zzbVy.zzbVC = ((Float) obj).floatValue();
        } else if (obj instanceof Boolean) {
            c0302zza.type = 8;
            c0302zza.zzbVy.zzbVG = ((Boolean) obj).booleanValue();
        } else if (obj instanceof Byte) {
            c0302zza.type = 7;
            c0302zza.zzbVy.zzbVF = ((Byte) obj).byteValue();
        } else if (obj instanceof byte[]) {
            c0302zza.type = 1;
            c0302zza.zzbVy.zzbVz = (byte[]) obj;
        } else if (obj instanceof String[]) {
            c0302zza.type = 11;
            c0302zza.zzbVy.zzbVJ = (String[]) obj;
        } else if (obj instanceof long[]) {
            c0302zza.type = 12;
            c0302zza.zzbVy.zzbVK = (long[]) obj;
        } else if (obj instanceof float[]) {
            c0302zza.type = 15;
            c0302zza.zzbVy.zzbVL = (float[]) obj;
        } else if (obj instanceof Asset) {
            c0302zza.type = 13;
            c0302zza.zzbVy.zzbVM = zza(list, (Asset) obj);
        } else if (obj instanceof DataMap) {
            c0302zza.type = 9;
            DataMap dataMap = (DataMap) obj;
            TreeSet treeSet = new TreeSet(dataMap.keySet());
            zzbld.zza[] zzaVarArr = new zzbld.zza[treeSet.size()];
            Iterator it = treeSet.iterator();
            while (true) {
                int i3 = i2;
                if (!it.hasNext()) {
                    break;
                }
                String str = (String) it.next();
                zzaVarArr[i3] = new zzbld.zza();
                zzaVarArr[i3].name = str;
                zzaVarArr[i3].zzbVw = zza(list, dataMap.get(str));
                i2 = i3 + 1;
            }
            c0302zza.zzbVy.zzbVH = zzaVarArr;
        } else if (!(obj instanceof ArrayList)) {
            String valueOf = String.valueOf(obj.getClass().getSimpleName());
            throw new RuntimeException(valueOf.length() != 0 ? "newFieldValueFromValue: unexpected value ".concat(valueOf) : new String("newFieldValueFromValue: unexpected value "));
        } else {
            c0302zza.type = 10;
            ArrayList arrayList = (ArrayList) obj;
            zzbld.zza.C0302zza[] c0302zzaArr = new zzbld.zza.C0302zza[arrayList.size()];
            Object obj2 = null;
            int size = arrayList.size();
            int i4 = 0;
            int i5 = 14;
            while (i4 < size) {
                Object obj3 = arrayList.get(i4);
                zzbld.zza.C0302zza zza2 = zza(list, obj3);
                if (zza2.type != 14 && zza2.type != 2 && zza2.type != 6 && zza2.type != 9) {
                    String valueOf2 = String.valueOf(obj3.getClass());
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf2).length() + 130).append("The only ArrayList element types supported by DataBundleUtil are String, Integer, Bundle, and null, but this ArrayList contains a ").append(valueOf2).toString());
                }
                if (i5 == 14 && zza2.type != 14) {
                    i = zza2.type;
                } else if (zza2.type != i5) {
                    String valueOf3 = String.valueOf(obj2.getClass());
                    String valueOf4 = String.valueOf(obj3.getClass());
                    throw new IllegalArgumentException(new StringBuilder(String.valueOf(valueOf3).length() + 80 + String.valueOf(valueOf4).length()).append("ArrayList elements must all be of the sameclass, but this one contains a ").append(valueOf3).append(" and a ").append(valueOf4).toString());
                } else {
                    obj3 = obj2;
                    i = i5;
                }
                c0302zzaArr[i4] = zza2;
                i4++;
                i5 = i;
                obj2 = obj3;
            }
            c0302zza.zzbVy.zzbVI = c0302zzaArr;
        }
        return c0302zza;
    }

    public static DataMap zza(zza zzaVar) {
        zzbld.zza[] zzaVarArr;
        DataMap dataMap = new DataMap();
        for (zzbld.zza zzaVar2 : zzaVar.zzbVs.zzbVu) {
            zza(zzaVar.zzbVt, dataMap, zzaVar2.name, zzaVar2.zzbVw);
        }
        return dataMap;
    }

    private static ArrayList zza(List<Asset> list, zzbld.zza.C0302zza.C0303zza c0303zza, int i) {
        zzbld.zza.C0302zza[] c0302zzaArr;
        ArrayList arrayList = new ArrayList(c0303zza.zzbVI.length);
        for (zzbld.zza.C0302zza c0302zza : c0303zza.zzbVI) {
            if (c0302zza.type == 14) {
                arrayList.add(null);
            } else if (i == 9) {
                DataMap dataMap = new DataMap();
                zzbld.zza[] zzaVarArr = c0302zza.zzbVy.zzbVH;
                for (zzbld.zza zzaVar : zzaVarArr) {
                    zza(list, dataMap, zzaVar.name, zzaVar.zzbVw);
                }
                arrayList.add(dataMap);
            } else if (i == 2) {
                arrayList.add(c0302zza.zzbVy.zzbVA);
            } else if (i != 6) {
                throw new IllegalArgumentException(new StringBuilder(39).append("Unexpected typeOfArrayList: ").append(i).toString());
            } else {
                arrayList.add(Integer.valueOf(c0302zza.zzbVy.zzbVE));
            }
        }
        return arrayList;
    }

    private static void zza(List<Asset> list, DataMap dataMap, String str, zzbld.zza.C0302zza c0302zza) {
        zzbld.zza[] zzaVarArr;
        int i = c0302zza.type;
        if (i == 14) {
            dataMap.putString(str, null);
            return;
        }
        zzbld.zza.C0302zza.C0303zza c0303zza = c0302zza.zzbVy;
        if (i == 1) {
            dataMap.putByteArray(str, c0303zza.zzbVz);
        } else if (i == 11) {
            dataMap.putStringArray(str, c0303zza.zzbVJ);
        } else if (i == 12) {
            dataMap.putLongArray(str, c0303zza.zzbVK);
        } else if (i == 15) {
            dataMap.putFloatArray(str, c0303zza.zzbVL);
        } else if (i == 2) {
            dataMap.putString(str, c0303zza.zzbVA);
        } else if (i == 3) {
            dataMap.putDouble(str, c0303zza.zzbVB);
        } else if (i == 4) {
            dataMap.putFloat(str, c0303zza.zzbVC);
        } else if (i == 5) {
            dataMap.putLong(str, c0303zza.zzbVD);
        } else if (i == 6) {
            dataMap.putInt(str, c0303zza.zzbVE);
        } else if (i == 7) {
            dataMap.putByte(str, (byte) c0303zza.zzbVF);
        } else if (i == 8) {
            dataMap.putBoolean(str, c0303zza.zzbVG);
        } else if (i == 13) {
            if (list == null) {
                String valueOf = String.valueOf(str);
                throw new RuntimeException(valueOf.length() != 0 ? "populateBundle: unexpected type for: ".concat(valueOf) : new String("populateBundle: unexpected type for: "));
            }
            dataMap.putAsset(str, list.get((int) c0303zza.zzbVM));
        } else if (i == 9) {
            DataMap dataMap2 = new DataMap();
            for (zzbld.zza zzaVar : c0303zza.zzbVH) {
                zza(list, dataMap2, zzaVar.name, zzaVar.zzbVw);
            }
            dataMap.putDataMap(str, dataMap2);
        } else if (i != 10) {
            throw new RuntimeException(new StringBuilder(43).append("populateBundle: unexpected type ").append(i).toString());
        } else {
            int zza2 = zza(str, c0303zza.zzbVI);
            ArrayList<Integer> zza3 = zza(list, c0303zza, zza2);
            if (zza2 == 14) {
                dataMap.putStringArrayList(str, zza3);
            } else if (zza2 == 9) {
                dataMap.putDataMapArrayList(str, zza3);
            } else if (zza2 == 2) {
                dataMap.putStringArrayList(str, zza3);
            } else if (zza2 != 6) {
                throw new IllegalStateException(new StringBuilder(39).append("Unexpected typeOfArrayList: ").append(zza2).toString());
            } else {
                dataMap.putIntegerArrayList(str, zza3);
            }
        }
    }

    private static zzbld.zza[] zza(DataMap dataMap, List<Asset> list) {
        TreeSet treeSet = new TreeSet(dataMap.keySet());
        zzbld.zza[] zzaVarArr = new zzbld.zza[treeSet.size()];
        int i = 0;
        Iterator it = treeSet.iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                String str = (String) it.next();
                Object obj = dataMap.get(str);
                zzaVarArr[i2] = new zzbld.zza();
                zzaVarArr[i2].name = str;
                zzaVarArr[i2].zzbVw = zza(list, obj);
                i = i2 + 1;
            } else {
                return zzaVarArr;
            }
        }
    }
}
