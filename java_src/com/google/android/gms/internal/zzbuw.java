package com.google.android.gms.internal;

import java.math.BigInteger;
/* loaded from: classes2.dex */
public final class zzbuw extends zzbuq {
    private static final Class<?>[] zzcpv = {Integer.TYPE, Long.TYPE, Short.TYPE, Float.TYPE, Double.TYPE, Byte.TYPE, Boolean.TYPE, Character.TYPE, Integer.class, Long.class, Short.class, Float.class, Double.class, Byte.class, Boolean.class, Character.class};
    private Object value;

    public zzbuw(Boolean bool) {
        setValue(bool);
    }

    public zzbuw(Number number) {
        setValue(number);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbuw(Object obj) {
        setValue(obj);
    }

    public zzbuw(String str) {
        setValue(str);
    }

    private static boolean zza(zzbuw zzbuwVar) {
        if (zzbuwVar.value instanceof Number) {
            Number number = (Number) zzbuwVar.value;
            return (number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte);
        }
        return false;
    }

    private static boolean zzaN(Object obj) {
        if (obj instanceof String) {
            return true;
        }
        Class<?> cls = obj.getClass();
        for (Class<?> cls2 : zzcpv) {
            if (cls2.isAssignableFrom(cls)) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbuw zzbuwVar = (zzbuw) obj;
        if (this.value == null) {
            return zzbuwVar.value == null;
        } else if (zza(this) && zza(zzbuwVar)) {
            return zzadi().longValue() == zzbuwVar.zzadi().longValue();
        } else if (!(this.value instanceof Number) || !(zzbuwVar.value instanceof Number)) {
            return this.value.equals(zzbuwVar.value);
        } else {
            double doubleValue = zzadi().doubleValue();
            double doubleValue2 = zzbuwVar.zzadi().doubleValue();
            if (doubleValue == doubleValue2 || (Double.isNaN(doubleValue) && Double.isNaN(doubleValue2))) {
                z = true;
            }
            return z;
        }
    }

    @Override // com.google.android.gms.internal.zzbuq
    public boolean getAsBoolean() {
        return zzads() ? zzadr().booleanValue() : Boolean.parseBoolean(zzadj());
    }

    @Override // com.google.android.gms.internal.zzbuq
    public double getAsDouble() {
        return zzadt() ? zzadi().doubleValue() : Double.parseDouble(zzadj());
    }

    @Override // com.google.android.gms.internal.zzbuq
    public int getAsInt() {
        return zzadt() ? zzadi().intValue() : Integer.parseInt(zzadj());
    }

    @Override // com.google.android.gms.internal.zzbuq
    public long getAsLong() {
        return zzadt() ? zzadi().longValue() : Long.parseLong(zzadj());
    }

    public int hashCode() {
        if (this.value == null) {
            return 31;
        }
        if (zza(this)) {
            long longValue = zzadi().longValue();
            return (int) (longValue ^ (longValue >>> 32));
        } else if (!(this.value instanceof Number)) {
            return this.value.hashCode();
        } else {
            long doubleToLongBits = Double.doubleToLongBits(zzadi().doubleValue());
            return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
        }
    }

    void setValue(Object obj) {
        if (obj instanceof Character) {
            this.value = String.valueOf(((Character) obj).charValue());
            return;
        }
        zzbvi.zzax((obj instanceof Number) || zzaN(obj));
        this.value = obj;
    }

    @Override // com.google.android.gms.internal.zzbuq
    public Number zzadi() {
        return this.value instanceof String ? new zzbvn((String) this.value) : (Number) this.value;
    }

    @Override // com.google.android.gms.internal.zzbuq
    public String zzadj() {
        return zzadt() ? zzadi().toString() : zzads() ? zzadr().toString() : (String) this.value;
    }

    @Override // com.google.android.gms.internal.zzbuq
    Boolean zzadr() {
        return (Boolean) this.value;
    }

    public boolean zzads() {
        return this.value instanceof Boolean;
    }

    public boolean zzadt() {
        return this.value instanceof Number;
    }

    public boolean zzadu() {
        return this.value instanceof String;
    }
}
