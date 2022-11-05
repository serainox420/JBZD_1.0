package com.google.android.gms.drive.metadata;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zza<T> implements MetadataField<T> {
    private final String zzaOI;
    private final Set<String> zzaOJ;
    private final Set<String> zzaOK;
    private final int zzaOL;

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(String str, int i) {
        this.zzaOI = (String) zzac.zzb(str, "fieldName");
        this.zzaOJ = Collections.singleton(str);
        this.zzaOK = Collections.emptySet();
        this.zzaOL = i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zza(String str, Collection<String> collection, Collection<String> collection2, int i) {
        this.zzaOI = (String) zzac.zzb(str, "fieldName");
        this.zzaOJ = Collections.unmodifiableSet(new HashSet(collection));
        this.zzaOK = Collections.unmodifiableSet(new HashSet(collection2));
        this.zzaOL = i;
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final String getName() {
        return this.zzaOI;
    }

    public String toString() {
        return this.zzaOI;
    }

    public final Collection<String> zzBr() {
        return this.zzaOJ;
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final T zza(DataHolder dataHolder, int i, int i2) {
        if (zzb(dataHolder, i, i2)) {
            return zzc(dataHolder, i, i2);
        }
        return null;
    }

    protected abstract void zza(Bundle bundle, T t);

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final void zza(DataHolder dataHolder, MetadataBundle metadataBundle, int i, int i2) {
        zzac.zzb(dataHolder, "dataHolder");
        zzac.zzb(metadataBundle, "bundle");
        if (zzb(dataHolder, i, i2)) {
            metadataBundle.zzc(this, zzc(dataHolder, i, i2));
        }
    }

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final void zza(T t, Bundle bundle) {
        zzac.zzb(bundle, "bundle");
        if (t == null) {
            bundle.putString(getName(), null);
        } else {
            zza(bundle, (Bundle) t);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected boolean zzb(DataHolder dataHolder, int i, int i2) {
        for (String str : this.zzaOJ) {
            if (!dataHolder.zzdf(str) || dataHolder.zzi(str, i, i2)) {
                return false;
            }
            while (r1.hasNext()) {
            }
        }
        return true;
    }

    protected abstract T zzc(DataHolder dataHolder, int i, int i2);

    @Override // com.google.android.gms.drive.metadata.MetadataField
    public final T zzs(Bundle bundle) {
        zzac.zzb(bundle, "bundle");
        if (bundle.get(getName()) != null) {
            return zzt(bundle);
        }
        return null;
    }

    protected abstract T zzt(Bundle bundle);
}
