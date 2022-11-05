package com.google.android.gms.fitness.data;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.f.a;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes2.dex */
public final class Value extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<Value> CREATOR = new zzad();
    private final int format;
    private float value;
    private final int versionCode;
    private String zzaGV;
    private boolean zzaUq;
    private Map<String, MapValue> zzaUr;
    private int[] zzaUs;
    private float[] zzaUt;
    private byte[] zzaUu;

    public Value(int i) {
        this(3, i, false, BitmapDescriptorFactory.HUE_RED, null, null, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Value(int i, int i2, boolean z, float f, String str, Bundle bundle, int[] iArr, float[] fArr, byte[] bArr) {
        this.versionCode = i;
        this.format = i2;
        this.zzaUq = z;
        this.value = f;
        this.zzaGV = str;
        this.zzaUr = zzB(bundle);
        this.zzaUs = iArr;
        this.zzaUt = fArr;
        this.zzaUu = bArr;
    }

    private static Map<String, MapValue> zzB(Bundle bundle) {
        if (bundle == null) {
            return null;
        }
        bundle.setClassLoader(MapValue.class.getClassLoader());
        a aVar = new a(bundle.size());
        for (String str : bundle.keySet()) {
            aVar.put(str, (MapValue) bundle.getParcelable(str));
        }
        return aVar;
    }

    private boolean zza(Value value) {
        if (this.format == value.format && this.zzaUq == value.zzaUq) {
            switch (this.format) {
                case 1:
                    return asInt() == value.asInt();
                case 2:
                    return this.value == value.value;
                case 3:
                    return com.google.android.gms.common.internal.zzaa.equal(this.zzaGV, value.zzaGV);
                case 4:
                    return com.google.android.gms.common.internal.zzaa.equal(this.zzaUr, value.zzaUr);
                case 5:
                    return Arrays.equals(this.zzaUs, value.zzaUs);
                case 6:
                    return Arrays.equals(this.zzaUt, value.zzaUt);
                case 7:
                    return Arrays.equals(this.zzaUu, value.zzaUu);
                default:
                    return this.value == value.value;
            }
        }
        return false;
    }

    public String asActivity() {
        return com.google.android.gms.fitness.zza.getName(asInt());
    }

    public float asFloat() {
        com.google.android.gms.common.internal.zzac.zza(this.format == 2, "Value is not in float format");
        return this.value;
    }

    public int asInt() {
        boolean z = true;
        if (this.format != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "Value is not in int format");
        return Float.floatToRawIntBits(this.value);
    }

    public String asString() {
        com.google.android.gms.common.internal.zzac.zza(this.format == 3, "Value is not in string format");
        return this.zzaGV;
    }

    public void clearKey(String str) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 4, "Attempting to set a key's value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format.");
        if (this.zzaUr != null) {
            this.zzaUr.remove(str);
        }
    }

    public boolean equals(Object obj) {
        return this == obj || ((obj instanceof Value) && zza((Value) obj));
    }

    public int getFormat() {
        return this.format;
    }

    public Float getKeyValue(String str) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 4, "Value is not in float map format");
        if (this.zzaUr == null || !this.zzaUr.containsKey(str)) {
            return null;
        }
        return Float.valueOf(this.zzaUr.get(str).asFloat());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.versionCode;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Float.valueOf(this.value), this.zzaGV, this.zzaUr, this.zzaUs, this.zzaUt, this.zzaUu);
    }

    public boolean isSet() {
        return this.zzaUq;
    }

    public void setActivity(String str) {
        setInt(com.google.android.gms.fitness.zza.zzdU(str));
    }

    public void setFloat(float f) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 2, "Attempting to set an float value to a field that is not in FLOAT format.  Please check the data type definition and use the right format.");
        this.zzaUq = true;
        this.value = f;
    }

    public void setInt(int i) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 1, "Attempting to set an int value to a field that is not in INT32 format.  Please check the data type definition and use the right format.");
        this.zzaUq = true;
        this.value = Float.intBitsToFloat(i);
    }

    public void setKeyValue(String str, float f) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 4, "Attempting to set a key's value to a field that is not in FLOAT_MAP format.  Please check the data type definition and use the right format.");
        this.zzaUq = true;
        if (this.zzaUr == null) {
            this.zzaUr = new HashMap();
        }
        this.zzaUr.put(str, MapValue.zzd(f));
    }

    public void setString(String str) {
        com.google.android.gms.common.internal.zzac.zza(this.format == 3, "Attempting to set a string value to a field that is not in STRING format.  Please check the data type definition and use the right format.");
        this.zzaUq = true;
        this.zzaGV = str;
    }

    public String toString() {
        if (!this.zzaUq) {
            return "unset";
        }
        switch (this.format) {
            case 1:
                return Integer.toString(asInt());
            case 2:
                return Float.toString(this.value);
            case 3:
                return this.zzaGV;
            case 4:
                return new TreeMap(this.zzaUr).toString();
            case 5:
                return Arrays.toString(this.zzaUs);
            case 6:
                return Arrays.toString(this.zzaUt);
            case 7:
                return com.google.android.gms.common.util.zzn.zza(this.zzaUu, 0, this.zzaUu.length, false);
            default:
                return "unknown";
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzad.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzCC() {
        return this.zzaGV;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Bundle zzCD() {
        if (this.zzaUr == null) {
            return null;
        }
        Bundle bundle = new Bundle(this.zzaUr.size());
        for (Map.Entry<String, MapValue> entry : this.zzaUr.entrySet()) {
            bundle.putParcelable(entry.getKey(), entry.getValue());
        }
        return bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] zzCE() {
        return this.zzaUs;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float[] zzCF() {
        return this.zzaUt;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public byte[] zzCG() {
        return this.zzaUu;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float zzCx() {
        return this.value;
    }
}
