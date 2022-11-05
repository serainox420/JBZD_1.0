package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzb<T> extends zza {
    public static final zzc CREATOR = new zzc();
    final zzx zzaQj;
    final MetadataBundle zzaQk;
    final MetadataField<T> zzaQl;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzb(int i, zzx zzxVar, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaQj = zzxVar;
        this.zzaQk = metadataBundle;
        this.zzaQl = (MetadataField<T>) zzi.zza(metadataBundle);
    }

    public zzb(zzx zzxVar, SearchableMetadataField<T> searchableMetadataField, T t) {
        this(1, zzxVar, MetadataBundle.zzb(searchableMetadataField, t));
    }

    public T getValue() {
        return (T) this.zzaQk.zza(this.zzaQl);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <F> F zza(zzj<F> zzjVar) {
        return zzjVar.zzb(this.zzaQj, this.zzaQl, getValue());
    }
}
