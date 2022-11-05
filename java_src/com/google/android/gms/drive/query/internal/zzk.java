package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.query.Filter;
import java.util.List;
/* loaded from: classes2.dex */
public class zzk implements zzj<Boolean> {
    private Boolean zzaQw = false;

    private zzk() {
    }

    public static boolean zza(Filter filter) {
        if (filter == null) {
            return false;
        }
        return ((Boolean) filter.zza(new zzk())).booleanValue();
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzBK */
    public Boolean zzBJ() {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzBL */
    public Boolean zzBI() {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public /* synthetic */ Boolean zzb(com.google.android.gms.drive.metadata.zzb zzbVar, Object obj) {
        return zzc((com.google.android.gms.drive.metadata.zzb<com.google.android.gms.drive.metadata.zzb>) zzbVar, (com.google.android.gms.drive.metadata.zzb) obj);
    }

    public <T> Boolean zzc(com.google.android.gms.drive.metadata.zzb<T> zzbVar, T t) {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzc */
    public <T> Boolean zzb(zzx zzxVar, MetadataField<T> metadataField, T t) {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzc */
    public Boolean zzb(zzx zzxVar, List<Boolean> list) {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzc */
    public Boolean zzz(Boolean bool) {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzdR */
    public Boolean zzdQ(String str) {
        if (!str.isEmpty()) {
            this.zzaQw = true;
        }
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzf */
    public Boolean zze(MetadataField<?> metadataField) {
        return this.zzaQw;
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzf */
    public <T> Boolean zze(MetadataField<T> metadataField, T t) {
        return this.zzaQw;
    }
}
