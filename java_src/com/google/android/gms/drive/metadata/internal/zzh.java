package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzh extends com.google.android.gms.drive.metadata.zza<Long> {
    public zzh(String str, int i) {
        super(str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    public void zza(Bundle bundle, Long l) {
        bundle.putLong(getName(), l.longValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzh */
    public Long zzc(DataHolder dataHolder, int i, int i2) {
        return Long.valueOf(dataHolder.zzb(getName(), i, i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzx */
    public Long zzt(Bundle bundle) {
        return Long.valueOf(bundle.getLong(getName()));
    }
}
