package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.query.Filter;
/* loaded from: classes2.dex */
public class zzv extends zza {
    public static final Parcelable.Creator<zzv> CREATOR = new zzw();
    final FilterHolder zzaQz;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzv(int i, FilterHolder filterHolder) {
        this.zzaiI = i;
        this.zzaQz = filterHolder;
    }

    public zzv(Filter filter) {
        this(1, new FilterHolder(filter));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzw.zza(this, parcel, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.drive.query.Filter
    public <T> T zza(zzj<T> zzjVar) {
        return (T) zzjVar.zzz(this.zzaQz.getFilter().zza(zzjVar));
    }
}
