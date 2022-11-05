package com.google.android.gms.fitness.data;

import com.google.android.gms.internal.zzanw;
/* loaded from: classes2.dex */
class zzg implements zzanw<DataType> {
    public static final zzg zzaSz = new zzg();

    private zzg() {
    }

    private Field zzd(DataType dataType, int i) {
        return dataType.getFields().get(i);
    }

    @Override // com.google.android.gms.internal.zzanw
    /* renamed from: zza */
    public String zzE(DataType dataType) {
        return dataType.getName();
    }

    @Override // com.google.android.gms.internal.zzanw
    /* renamed from: zza */
    public String zzg(DataType dataType, int i) {
        return zzd(dataType, i).getName();
    }

    @Override // com.google.android.gms.internal.zzanw
    /* renamed from: zzb */
    public int zzD(DataType dataType) {
        return dataType.getFields().size();
    }

    @Override // com.google.android.gms.internal.zzanw
    /* renamed from: zzb */
    public boolean zzf(DataType dataType, int i) {
        return Boolean.TRUE.equals(zzd(dataType, i).isOptional());
    }

    @Override // com.google.android.gms.internal.zzanw
    /* renamed from: zzc */
    public int zze(DataType dataType, int i) {
        return zzd(dataType, i).getFormat();
    }

    @Override // com.google.android.gms.internal.zzanw
    public boolean zzdW(String str) {
        return zzl.zzdX(str) != null;
    }
}
