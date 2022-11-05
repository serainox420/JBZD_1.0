package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.state.Weather;
/* loaded from: classes2.dex */
public class zzwt extends com.google.android.gms.common.internal.safeparcel.zza implements Weather {
    public static final Parcelable.Creator<zzwt> CREATOR = new zzwu();
    private final float zzamE;
    private final float zzamF;
    private final float zzamG;
    private final int zzamH;
    private final int[] zzamI;

    public zzwt(float f, float f2, float f3, int i, int[] iArr) {
        this.zzamE = f;
        this.zzamF = f2;
        this.zzamG = f3;
        this.zzamH = i;
        this.zzamI = iArr;
    }

    static float zza(int i, float f) {
        switch (i) {
            case 1:
                return f;
            case 2:
                return zzc(f);
            default:
                zzcf.zza("WeatherImpl", "Invalid temperature unit %s", Integer.valueOf(i));
                throw new IllegalArgumentException("Invalid temperature unit");
        }
    }

    private static float zzc(float f) {
        return (5.0f * (f - 32.0f)) / 9.0f;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public int[] getConditions() {
        return this.zzamI;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getDewPoint(int i) {
        return zza(i, this.zzamG);
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getFeelsLikeTemperature(int i) {
        return zza(i, this.zzamF);
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public int getHumidity() {
        return this.zzamH;
    }

    @Override // com.google.android.gms.awareness.state.Weather
    public float getTemperature(int i) {
        return zza(i, this.zzamE);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Temp=").append(getTemperature(1)).append("F/").append(getTemperature(2)).append("C, Feels=").append(getFeelsLikeTemperature(1)).append("F/").append(getFeelsLikeTemperature(2)).append("C, Dew=").append(getDewPoint(1)).append("F/").append(getDewPoint(2)).append("C, Humidity=").append(getHumidity()).append(", Condition=");
        if (getConditions() == null) {
            sb.append("unknown");
        } else {
            sb.append("[");
            int[] conditions = getConditions();
            int length = conditions.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                int i2 = conditions[i];
                if (!z) {
                    sb.append(",");
                }
                sb.append(i2);
                i++;
                z = false;
            }
            sb.append("]");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzwu.zza(this, parcel, i);
    }

    public float zzsc() {
        return this.zzamG;
    }

    public float zzsd() {
        return this.zzamF;
    }

    public float zzse() {
        return this.zzamE;
    }
}
