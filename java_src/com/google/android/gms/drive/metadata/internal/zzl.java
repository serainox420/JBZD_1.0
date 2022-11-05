package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.Collection;
/* loaded from: classes2.dex */
public abstract class zzl<T extends ReflectedParcelable> extends com.google.android.gms.drive.metadata.zza<T> {
    public zzl(String str, Collection<String> collection, Collection<String> collection2, int i) {
        super(str, collection, collection2, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    public void zza(Bundle bundle, ReflectedParcelable reflectedParcelable) {
        bundle.putParcelable(getName(), reflectedParcelable);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzz */
    public T zzt(Bundle bundle) {
        return (T) bundle.getParcelable(getName());
    }
}
