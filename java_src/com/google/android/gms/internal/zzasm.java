package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzasm extends com.google.android.gms.common.internal.safeparcel.zza implements Geofence {
    public static final Parcelable.Creator<zzasm> CREATOR = new zzasn();
    private final String zzOV;
    private final int zzbjD;
    private final short zzbjF;
    private final double zzbjG;
    private final double zzbjH;
    private final float zzbjI;
    private final int zzbjJ;
    private final int zzbjK;
    private final long zzbkU;

    public zzasm(String str, int i, short s, double d, double d2, float f, long j, int i2, int i3) {
        zzeT(str);
        zzf(f);
        zza(d, d2);
        int zzkA = zzkA(i);
        this.zzbjF = s;
        this.zzOV = str;
        this.zzbjG = d;
        this.zzbjH = d2;
        this.zzbjI = f;
        this.zzbkU = j;
        this.zzbjD = zzkA;
        this.zzbjJ = i2;
        this.zzbjK = i3;
    }

    private static void zza(double d, double d2) {
        if (d > 90.0d || d < -90.0d) {
            throw new IllegalArgumentException(new StringBuilder(42).append("invalid latitude: ").append(d).toString());
        }
        if (d2 <= 180.0d && d2 >= -180.0d) {
            return;
        }
        throw new IllegalArgumentException(new StringBuilder(43).append("invalid longitude: ").append(d2).toString());
    }

    private static void zzeT(String str) {
        if (str == null || str.length() > 100) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "requestId is null or too long: ".concat(valueOf) : new String("requestId is null or too long: "));
        }
    }

    private static void zzf(float f) {
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            throw new IllegalArgumentException(new StringBuilder(31).append("invalid radius: ").append(f).toString());
        }
    }

    private static int zzkA(int i) {
        int i2 = i & 7;
        if (i2 == 0) {
            throw new IllegalArgumentException(new StringBuilder(46).append("No supported transition specified: ").append(i).toString());
        }
        return i2;
    }

    @SuppressLint({"DefaultLocale"})
    private static String zzkB(int i) {
        switch (i) {
            case 1:
                return "CIRCLE";
            default:
                return null;
        }
    }

    public static zzasm zzw(byte[] bArr) {
        Parcel obtain = Parcel.obtain();
        obtain.unmarshall(bArr, 0, bArr.length);
        obtain.setDataPosition(0);
        zzasm createFromParcel = CREATOR.createFromParcel(obtain);
        obtain.recycle();
        return createFromParcel;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof zzasm)) {
            zzasm zzasmVar = (zzasm) obj;
            return this.zzbjI == zzasmVar.zzbjI && this.zzbjG == zzasmVar.zzbjG && this.zzbjH == zzasmVar.zzbjH && this.zzbjF == zzasmVar.zzbjF;
        }
        return false;
    }

    public long getExpirationTime() {
        return this.zzbkU;
    }

    public double getLatitude() {
        return this.zzbjG;
    }

    public double getLongitude() {
        return this.zzbjH;
    }

    public float getRadius() {
        return this.zzbjI;
    }

    @Override // com.google.android.gms.location.Geofence
    public String getRequestId() {
        return this.zzOV;
    }

    public int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.zzbjG);
        long doubleToLongBits2 = Double.doubleToLongBits(this.zzbjH);
        return ((((((((((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31) * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.zzbjI)) * 31) + this.zzbjF) * 31) + this.zzbjD;
    }

    public String toString() {
        return String.format(Locale.US, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", zzkB(this.zzbjF), this.zzOV, Integer.valueOf(this.zzbjD), Double.valueOf(this.zzbjG), Double.valueOf(this.zzbjH), Float.valueOf(this.zzbjI), Integer.valueOf(this.zzbjJ / 1000), Integer.valueOf(this.zzbjK), Long.valueOf(this.zzbkU));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzasn.zza(this, parcel, i);
    }

    public short zzIu() {
        return this.zzbjF;
    }

    public int zzIv() {
        return this.zzbjD;
    }

    public int zzIw() {
        return this.zzbjJ;
    }

    public int zzIx() {
        return this.zzbjK;
    }
}
