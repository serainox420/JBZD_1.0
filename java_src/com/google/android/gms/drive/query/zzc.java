package com.google.android.gms.drive.query;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.query.internal.zzj;
import com.google.android.gms.drive.query.internal.zzx;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzc implements zzj<String> {
    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzBG */
    public String zzBJ() {
        return "all()";
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzBH */
    public String zzBI() {
        return "ownedByMe()";
    }

    public <T> String zza(com.google.android.gms.drive.metadata.zzb<T> zzbVar, T t) {
        return String.format("contains(%s,%s)", zzbVar.getName(), t);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zza */
    public <T> String zzb(zzx zzxVar, MetadataField<T> metadataField, T t) {
        return String.format("cmp(%s,%s,%s)", zzxVar.getTag(), metadataField.getName(), t);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zza */
    public String zzb(zzx zzxVar, List<String> list) {
        StringBuilder sb = new StringBuilder(String.valueOf(zzxVar.getTag()).concat("("));
        String str = "";
        Iterator<String> it = list.iterator();
        while (true) {
            String str2 = str;
            if (it.hasNext()) {
                sb.append(str2);
                sb.append(it.next());
                str = ",";
            } else {
                return sb.append(")").toString();
            }
        }
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    public /* synthetic */ String zzb(com.google.android.gms.drive.metadata.zzb zzbVar, Object obj) {
        return zza((com.google.android.gms.drive.metadata.zzb<com.google.android.gms.drive.metadata.zzb>) zzbVar, (com.google.android.gms.drive.metadata.zzb) obj);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzd */
    public String zze(MetadataField<?> metadataField) {
        return String.format("fieldOnly(%s)", metadataField.getName());
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzd */
    public <T> String zze(MetadataField<T> metadataField, T t) {
        return String.format("has(%s,%s)", metadataField.getName(), t);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzdO */
    public String zzz(String str) {
        return String.format("not(%s)", str);
    }

    @Override // com.google.android.gms.drive.query.internal.zzj
    /* renamed from: zzdP */
    public String zzdQ(String str) {
        return String.format("fullTextSearch(%s)", str);
    }
}
