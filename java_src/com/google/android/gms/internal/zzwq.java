package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.state.TimeIntervals;
/* loaded from: classes2.dex */
public class zzwq extends com.google.android.gms.common.internal.safeparcel.zza implements TimeIntervals {
    public static final Parcelable.Creator<zzwq> CREATOR = new zzwr();
    private final int[] zzamD;

    public zzwq(int[] iArr) {
        this.zzamD = iArr;
    }

    @Override // com.google.android.gms.awareness.state.TimeIntervals
    public int[] getTimeIntervals() {
        return this.zzamD;
    }

    @Override // com.google.android.gms.awareness.state.TimeIntervals
    public boolean hasTimeInterval(int i) {
        if (this.zzamD == null) {
            return false;
        }
        for (int i2 : this.zzamD) {
            if (i2 == i) {
                return true;
            }
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("TimeIntervals=");
        if (this.zzamD == null) {
            sb.append("unknown");
        } else {
            sb.append("[");
            int[] iArr = this.zzamD;
            int length = iArr.length;
            boolean z = true;
            int i = 0;
            while (i < length) {
                int i2 = iArr[i];
                if (!z) {
                    sb.append(", ");
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
        zzwr.zza(this, parcel, i);
    }
}
