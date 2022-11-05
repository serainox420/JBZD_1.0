package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import com.google.android.gms.drive.metadata.SearchableCollectionMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Collections;
/* loaded from: classes2.dex */
public class zzp<T> extends zza {
    public static final zzq CREATOR = new zzq();
    final MetadataBundle zzaQk;
    private final com.google.android.gms.drive.metadata.zzb<T> zzaQx;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzp(int i, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaQk = metadataBundle;
        this.zzaQx = (com.google.android.gms.drive.metadata.zzb) zzi.zza(metadataBundle);
    }

    public zzp(SearchableCollectionMetadataField<T> searchableCollectionMetadataField, T t) {
        this(1, MetadataBundle.zzb(searchableCollectionMetadataField, Collections.singleton(t)));
    }

    public T getValue() {
        return (T) ((Collection) this.zzaQk.zza(this.zzaQx)).iterator().next();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <F> F zza(zzj<F> zzjVar) {
        return zzjVar.zzb((com.google.android.gms.drive.metadata.zzb<com.google.android.gms.drive.metadata.zzb<T>>) this.zzaQx, (com.google.android.gms.drive.metadata.zzb<T>) getValue());
    }
}
