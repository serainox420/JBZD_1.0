package com.google.android.gms.wearable;

import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.zzblc;
import com.google.android.gms.internal.zzbld;
import com.google.android.gms.internal.zzbxs;
import com.google.android.gms.internal.zzbxt;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
/* loaded from: classes2.dex */
public class DataMap {
    public static final String TAG = "DataMap";
    private final HashMap<String, Object> zzru = new HashMap<>();

    public static ArrayList<DataMap> arrayListFromBundleArrayList(ArrayList<Bundle> arrayList) {
        ArrayList<DataMap> arrayList2 = new ArrayList<>();
        Iterator<Bundle> it = arrayList.iterator();
        while (it.hasNext()) {
            arrayList2.add(fromBundle(it.next()));
        }
        return arrayList2;
    }

    public static DataMap fromBundle(Bundle bundle) {
        bundle.setClassLoader(Asset.class.getClassLoader());
        DataMap dataMap = new DataMap();
        for (String str : bundle.keySet()) {
            zza(dataMap, str, bundle.get(str));
        }
        return dataMap;
    }

    public static DataMap fromByteArray(byte[] bArr) {
        try {
            return zzblc.zza(new zzblc.zza(zzbld.zzS(bArr), new ArrayList()));
        } catch (zzbxs e) {
            throw new IllegalArgumentException("Unable to convert data", e);
        }
    }

    private static void zza(DataMap dataMap, String str, Object obj) {
        if (obj instanceof String) {
            dataMap.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            dataMap.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            dataMap.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Double) {
            dataMap.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Float) {
            dataMap.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Boolean) {
            dataMap.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            dataMap.putByte(str, ((Byte) obj).byteValue());
        } else if (obj instanceof byte[]) {
            dataMap.putByteArray(str, (byte[]) obj);
        } else if (obj instanceof String[]) {
            dataMap.putStringArray(str, (String[]) obj);
        } else if (obj instanceof long[]) {
            dataMap.putLongArray(str, (long[]) obj);
        } else if (obj instanceof float[]) {
            dataMap.putFloatArray(str, (float[]) obj);
        } else if (obj instanceof Asset) {
            dataMap.putAsset(str, (Asset) obj);
        } else if (obj instanceof Bundle) {
            dataMap.putDataMap(str, fromBundle((Bundle) obj));
        } else if (!(obj instanceof ArrayList)) {
        } else {
            switch (zzj((ArrayList) obj)) {
                case 0:
                    dataMap.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 1:
                    dataMap.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 2:
                    dataMap.putIntegerArrayList(str, (ArrayList) obj);
                    return;
                case 3:
                    dataMap.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 4:
                default:
                    return;
                case 5:
                    dataMap.putDataMapArrayList(str, arrayListFromBundleArrayList((ArrayList) obj));
                    return;
            }
        }
    }

    private void zza(String str, Object obj, String str2, ClassCastException classCastException) {
        zza(str, obj, str2, "<null>", classCastException);
    }

    private void zza(String str, Object obj, String str2, Object obj2, ClassCastException classCastException) {
        Log.w(TAG, "Key " + str + " expected " + str2 + " but value was a " + obj.getClass().getName() + ".  The default value " + obj2 + " was returned.");
        Log.w(TAG, "Attempt to cast generated internal exception:", classCastException);
    }

    private static boolean zza(Asset asset, Asset asset2) {
        return (asset == null || asset2 == null) ? asset == asset2 : !TextUtils.isEmpty(asset.getDigest()) ? asset.getDigest().equals(asset2.getDigest()) : Arrays.equals(asset.getData(), asset2.getData());
    }

    private static boolean zza(DataMap dataMap, DataMap dataMap2) {
        if (dataMap.size() != dataMap2.size()) {
            return false;
        }
        for (String str : dataMap.keySet()) {
            Object obj = dataMap.get(str);
            Object obj2 = dataMap2.get(str);
            if (obj instanceof Asset) {
                if (!(obj2 instanceof Asset) || !zza((Asset) obj, (Asset) obj2)) {
                    return false;
                }
            } else if (obj instanceof String[]) {
                if (!(obj2 instanceof String[]) || !Arrays.equals((String[]) obj, (String[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof long[]) {
                if (!(obj2 instanceof long[]) || !Arrays.equals((long[]) obj, (long[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof float[]) {
                if (!(obj2 instanceof float[]) || !Arrays.equals((float[]) obj, (float[]) obj2)) {
                    return false;
                }
            } else if (obj instanceof byte[]) {
                if (!(obj2 instanceof byte[]) || !Arrays.equals((byte[]) obj, (byte[]) obj2)) {
                    return false;
                }
            } else if (obj == null || obj2 == null) {
                return obj == obj2;
            } else if (!obj.equals(obj2)) {
                return false;
            }
        }
        return true;
    }

    private static void zzb(Bundle bundle, String str, Object obj) {
        if (obj instanceof String) {
            bundle.putString(str, (String) obj);
        } else if (obj instanceof Integer) {
            bundle.putInt(str, ((Integer) obj).intValue());
        } else if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
        } else if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
        } else if (obj instanceof Float) {
            bundle.putFloat(str, ((Float) obj).floatValue());
        } else if (obj instanceof Boolean) {
            bundle.putBoolean(str, ((Boolean) obj).booleanValue());
        } else if (obj instanceof Byte) {
            bundle.putByte(str, ((Byte) obj).byteValue());
        } else if (obj instanceof byte[]) {
            bundle.putByteArray(str, (byte[]) obj);
        } else if (obj instanceof String[]) {
            bundle.putStringArray(str, (String[]) obj);
        } else if (obj instanceof long[]) {
            bundle.putLongArray(str, (long[]) obj);
        } else if (obj instanceof float[]) {
            bundle.putFloatArray(str, (float[]) obj);
        } else if (obj instanceof Asset) {
            bundle.putParcelable(str, (Asset) obj);
        } else if (obj instanceof DataMap) {
            bundle.putParcelable(str, ((DataMap) obj).toBundle());
        } else if (!(obj instanceof ArrayList)) {
        } else {
            switch (zzj((ArrayList) obj)) {
                case 0:
                    bundle.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 1:
                    bundle.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 2:
                    bundle.putIntegerArrayList(str, (ArrayList) obj);
                    return;
                case 3:
                    bundle.putStringArrayList(str, (ArrayList) obj);
                    return;
                case 4:
                    ArrayList<? extends Parcelable> arrayList = new ArrayList<>();
                    Iterator it = ((ArrayList) obj).iterator();
                    while (it.hasNext()) {
                        arrayList.add(((DataMap) it.next()).toBundle());
                    }
                    bundle.putParcelableArrayList(str, arrayList);
                    return;
                default:
                    return;
            }
        }
    }

    private static int zzj(ArrayList<?> arrayList) {
        if (arrayList.isEmpty()) {
            return 0;
        }
        Iterator<?> it = arrayList.iterator();
        while (it.hasNext()) {
            Object next = it.next();
            if (next != null) {
                if (next instanceof Integer) {
                    return 2;
                }
                if (next instanceof String) {
                    return 3;
                }
                if (next instanceof DataMap) {
                    return 4;
                }
                if (next instanceof Bundle) {
                    return 5;
                }
            }
        }
        return 1;
    }

    public void clear() {
        this.zzru.clear();
    }

    public boolean containsKey(String str) {
        return this.zzru.containsKey(str);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof DataMap)) {
            return false;
        }
        return zza(this, (DataMap) obj);
    }

    public <T> T get(String str) {
        return (T) this.zzru.get(str);
    }

    public Asset getAsset(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (Asset) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "Asset", e);
            return null;
        }
    }

    public boolean getBoolean(String str) {
        return getBoolean(str, false);
    }

    public boolean getBoolean(String str, boolean z) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return z;
        }
        try {
            return ((Boolean) obj).booleanValue();
        } catch (ClassCastException e) {
            zza(str, obj, "Boolean", Boolean.valueOf(z), e);
            return z;
        }
    }

    public byte getByte(String str) {
        return getByte(str, (byte) 0);
    }

    public byte getByte(String str, byte b) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return b;
        }
        try {
            return ((Byte) obj).byteValue();
        } catch (ClassCastException e) {
            zza(str, obj, "Byte", Byte.valueOf(b), e);
            return b;
        }
    }

    public byte[] getByteArray(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (byte[]) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "byte[]", e);
            return null;
        }
    }

    public DataMap getDataMap(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (DataMap) obj;
        } catch (ClassCastException e) {
            zza(str, obj, TAG, e);
            return null;
        }
    }

    public ArrayList<DataMap> getDataMapArrayList(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "ArrayList<DataMap>", e);
            return null;
        }
    }

    public double getDouble(String str) {
        return getDouble(str, 0.0d);
    }

    public double getDouble(String str, double d) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return d;
        }
        try {
            return ((Double) obj).doubleValue();
        } catch (ClassCastException e) {
            zza(str, obj, "Double", Double.valueOf(d), e);
            return d;
        }
    }

    public float getFloat(String str) {
        return getFloat(str, BitmapDescriptorFactory.HUE_RED);
    }

    public float getFloat(String str, float f) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return f;
        }
        try {
            return ((Float) obj).floatValue();
        } catch (ClassCastException e) {
            zza(str, obj, "Float", Float.valueOf(f), e);
            return f;
        }
    }

    public float[] getFloatArray(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (float[]) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "float[]", e);
            return null;
        }
    }

    public int getInt(String str) {
        return getInt(str, 0);
    }

    public int getInt(String str, int i) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return i;
        }
        try {
            return ((Integer) obj).intValue();
        } catch (ClassCastException e) {
            zza(str, obj, "Integer", e);
            return i;
        }
    }

    public ArrayList<Integer> getIntegerArrayList(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "ArrayList<Integer>", e);
            return null;
        }
    }

    public long getLong(String str) {
        return getLong(str, 0L);
    }

    public long getLong(String str, long j) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return j;
        }
        try {
            return ((Long) obj).longValue();
        } catch (ClassCastException e) {
            zza(str, obj, "long", e);
            return j;
        }
    }

    public long[] getLongArray(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (long[]) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "long[]", e);
            return null;
        }
    }

    public String getString(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (String) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "String", e);
            return null;
        }
    }

    public String getString(String str, String str2) {
        String string = getString(str);
        return string == null ? str2 : string;
    }

    public String[] getStringArray(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (String[]) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "String[]", e);
            return null;
        }
    }

    public ArrayList<String> getStringArrayList(String str) {
        Object obj = this.zzru.get(str);
        if (obj == null) {
            return null;
        }
        try {
            return (ArrayList) obj;
        } catch (ClassCastException e) {
            zza(str, obj, "ArrayList<String>", e);
            return null;
        }
    }

    public int hashCode() {
        return this.zzru.hashCode() * 29;
    }

    public boolean isEmpty() {
        return this.zzru.isEmpty();
    }

    public Set<String> keySet() {
        return this.zzru.keySet();
    }

    public void putAll(DataMap dataMap) {
        for (String str : dataMap.keySet()) {
            this.zzru.put(str, dataMap.get(str));
        }
    }

    public void putAsset(String str, Asset asset) {
        this.zzru.put(str, asset);
    }

    public void putBoolean(String str, boolean z) {
        this.zzru.put(str, Boolean.valueOf(z));
    }

    public void putByte(String str, byte b) {
        this.zzru.put(str, Byte.valueOf(b));
    }

    public void putByteArray(String str, byte[] bArr) {
        this.zzru.put(str, bArr);
    }

    public void putDataMap(String str, DataMap dataMap) {
        this.zzru.put(str, dataMap);
    }

    public void putDataMapArrayList(String str, ArrayList<DataMap> arrayList) {
        this.zzru.put(str, arrayList);
    }

    public void putDouble(String str, double d) {
        this.zzru.put(str, Double.valueOf(d));
    }

    public void putFloat(String str, float f) {
        this.zzru.put(str, Float.valueOf(f));
    }

    public void putFloatArray(String str, float[] fArr) {
        this.zzru.put(str, fArr);
    }

    public void putInt(String str, int i) {
        this.zzru.put(str, Integer.valueOf(i));
    }

    public void putIntegerArrayList(String str, ArrayList<Integer> arrayList) {
        this.zzru.put(str, arrayList);
    }

    public void putLong(String str, long j) {
        this.zzru.put(str, Long.valueOf(j));
    }

    public void putLongArray(String str, long[] jArr) {
        this.zzru.put(str, jArr);
    }

    public void putString(String str, String str2) {
        this.zzru.put(str, str2);
    }

    public void putStringArray(String str, String[] strArr) {
        this.zzru.put(str, strArr);
    }

    public void putStringArrayList(String str, ArrayList<String> arrayList) {
        this.zzru.put(str, arrayList);
    }

    public Object remove(String str) {
        return this.zzru.remove(str);
    }

    public int size() {
        return this.zzru.size();
    }

    public Bundle toBundle() {
        Bundle bundle = new Bundle();
        for (String str : this.zzru.keySet()) {
            zzb(bundle, str, this.zzru.get(str));
        }
        return bundle;
    }

    public byte[] toByteArray() {
        return zzbxt.zzf(zzblc.zza(this).zzbVs);
    }

    public String toString() {
        return this.zzru.toString();
    }
}
