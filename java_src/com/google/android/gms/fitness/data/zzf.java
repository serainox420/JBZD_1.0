package com.google.android.gms.fitness.data;

import com.google.android.gms.internal.zzanv;
import com.google.android.gms.internal.zzanw;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzf implements zzanv<DataPoint, DataType> {
    public static final zzf zzaSy = new zzf();

    private zzf() {
    }

    @Override // com.google.android.gms.internal.zzanv
    public zzanw<DataType> zzBY() {
        return zzg.zzaSz;
    }

    @Override // com.google.android.gms.internal.zzanv
    public long zza(DataPoint dataPoint, TimeUnit timeUnit) {
        return dataPoint.getEndTime(timeUnit) - dataPoint.getStartTime(timeUnit);
    }

    @Override // com.google.android.gms.internal.zzanv
    /* renamed from: zza */
    public String zzC(DataPoint dataPoint) {
        return dataPoint.getDataType().getName();
    }

    @Override // com.google.android.gms.internal.zzanv
    /* renamed from: zza */
    public boolean zzd(DataPoint dataPoint, int i) {
        return dataPoint.zzgy(i).isSet();
    }

    @Override // com.google.android.gms.internal.zzanv
    /* renamed from: zzb  reason: avoid collision after fix types in other method */
    public int zzc(DataPoint dataPoint, int i) {
        return dataPoint.zzgy(i).asInt();
    }

    @Override // com.google.android.gms.internal.zzanv
    /* renamed from: zzb */
    public DataType zzB(DataPoint dataPoint) {
        return dataPoint.getDataType();
    }

    @Override // com.google.android.gms.internal.zzanv
    /* renamed from: zzc  reason: avoid collision after fix types in other method */
    public double zzb(DataPoint dataPoint, int i) {
        return dataPoint.zzgy(i).asFloat();
    }
}
