package com.google.android.gms.drive.query.internal;

import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Set;
/* loaded from: classes2.dex */
class zzi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static MetadataField<?> zza(MetadataBundle metadataBundle) {
        Set<MetadataField<?>> zzBz = metadataBundle.zzBz();
        if (zzBz.size() != 1) {
            throw new IllegalArgumentException("bundle should have exactly 1 populated field");
        }
        return zzBz.iterator().next();
    }
}
