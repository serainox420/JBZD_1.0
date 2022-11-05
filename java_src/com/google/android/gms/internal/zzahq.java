package com.google.android.gms.internal;

import com.google.android.gms.drive.Metadata;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public final class zzahq extends Metadata {
    private final MetadataBundle zzaMH;

    public zzahq(MetadataBundle metadataBundle) {
        this.zzaMH = metadataBundle;
    }

    @Override // com.google.android.gms.common.data.Freezable
    public boolean isDataValid() {
        return this.zzaMH != null;
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzaMH);
        return new StringBuilder(String.valueOf(valueOf).length() + 17).append("Metadata [mImpl=").append(valueOf).append("]").toString();
    }

    @Override // com.google.android.gms.common.data.Freezable
    /* renamed from: zzAD */
    public Metadata mo520freeze() {
        return new zzahq(this.zzaMH.zzBy());
    }

    @Override // com.google.android.gms.drive.Metadata
    public <T> T zza(MetadataField<T> metadataField) {
        return (T) this.zzaMH.zza(metadataField);
    }
}
