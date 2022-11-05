package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzn<T> extends zza {
    public static final zzo CREATOR = new zzo();
    final MetadataBundle zzaQk;
    final MetadataField<T> zzaQl;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(int i, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaQk = metadataBundle;
        this.zzaQl = (MetadataField<T>) zzi.zza(metadataBundle);
    }

    public zzn(SearchableMetadataField<T> searchableMetadataField, T t) {
        this(1, MetadataBundle.zzb(searchableMetadataField, t));
    }

    public T getValue() {
        return (T) this.zzaQk.zza(this.zzaQl);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <F> F zza(zzj<F> zzjVar) {
        return zzjVar.zze(this.zzaQl, getValue());
    }
}
