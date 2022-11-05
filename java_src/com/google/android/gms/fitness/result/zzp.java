package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import java.io.Closeable;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzp extends com.google.android.gms.common.internal.safeparcel.zza implements Result, Closeable {
    public static final Parcelable.Creator<zzp> CREATOR = new zzq();
    private final DataHolder zzaBi;
    private final List<DataHolder> zzaXc;
    private final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(int i, DataHolder dataHolder, List<DataHolder> list) {
        this.zzaiI = i;
        this.zzaBi = dataHolder;
        this.zzaXc = list == null ? Collections.singletonList(dataHolder) : list;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.zzaBi != null) {
            this.zzaBi.close();
        }
        for (DataHolder dataHolder : this.zzaXc) {
            dataHolder.close();
        }
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return new Status(this.zzaBi.getStatusCode());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getVersionCode() {
        return this.zzaiI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataHolder zzAQ() {
        return this.zzaBi;
    }

    public List<DataHolder> zzDw() {
        return this.zzaXc;
    }
}
