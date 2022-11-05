package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.SearchableMetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzd extends zza {
    public static final Parcelable.Creator<zzd> CREATOR = new zze();
    final MetadataBundle zzaQk;
    private final MetadataField<?> zzaQl;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(int i, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaQk = metadataBundle;
        this.zzaQl = zzi.zza(metadataBundle);
    }

    public zzd(SearchableMetadataField<?> searchableMetadataField) {
        this(1, MetadataBundle.zzb(searchableMetadataField, null));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }

    @Override // com.google.android.gms.drive.query.Filter
    public <T> T zza(zzj<T> zzjVar) {
        return zzjVar.zze(this.zzaQl);
    }
}
