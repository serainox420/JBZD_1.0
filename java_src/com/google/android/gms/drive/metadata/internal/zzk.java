package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes2.dex */
public class zzk<T extends Parcelable> extends com.google.android.gms.drive.metadata.zzb<T> {
    public zzk(String str, Collection<String> collection, Collection<String> collection2, int i) {
        super(str, collection, collection2, i);
    }

    @Override // com.google.android.gms.drive.metadata.zza
    protected /* bridge */ /* synthetic */ void zza(Bundle bundle, Object obj) {
        zza(bundle, (Collection) ((Collection) obj));
    }

    protected void zza(Bundle bundle, Collection<T> collection) {
        bundle.putParcelableArrayList(getName(), collection instanceof ArrayList ? (ArrayList) collection : new ArrayList<>(collection));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzy */
    public Collection<T> zzt(Bundle bundle) {
        return bundle.getParcelableArrayList(getName());
    }
}
