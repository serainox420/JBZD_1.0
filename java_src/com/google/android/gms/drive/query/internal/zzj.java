package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import java.util.List;
/* loaded from: classes2.dex */
public interface zzj<F> {
    F zzBI();

    F zzBJ();

    <T> F zzb(com.google.android.gms.drive.metadata.zzb<T> zzbVar, T t);

    <T> F zzb(zzx zzxVar, MetadataField<T> metadataField, T t);

    F zzb(zzx zzxVar, List<F> list);

    F zzdQ(String str);

    F zze(MetadataField<?> metadataField);

    <T> F zze(MetadataField<T> metadataField, T t);

    F zzz(F f);
}
