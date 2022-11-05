package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzadw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzadw> CREATOR = new zzadx();
    private final long zzaIO;
    private final DataHolder zzaIX;
    private final DataHolder zzaIY;
    private final int zzavD;

    public zzadw(int i, DataHolder dataHolder, long j, DataHolder dataHolder2) {
        this.zzavD = i;
        this.zzaIX = dataHolder;
        this.zzaIO = j;
        this.zzaIY = dataHolder2;
    }

    public int getStatusCode() {
        return this.zzavD;
    }

    public long getThrottleEndTimeMillis() {
        return this.zzaIO;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzadx.zza(this, parcel, i);
    }

    public DataHolder zzzM() {
        return this.zzaIX;
    }

    public DataHolder zzzN() {
        return this.zzaIY;
    }

    public void zzzO() {
        if (this.zzaIX == null || this.zzaIX.isClosed()) {
            return;
        }
        this.zzaIX.close();
    }

    public void zzzP() {
        if (this.zzaIY == null || this.zzaIY.isClosed()) {
            return;
        }
        this.zzaIY.close();
    }
}
