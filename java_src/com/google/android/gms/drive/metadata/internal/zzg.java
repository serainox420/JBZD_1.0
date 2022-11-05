package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.drive.metadata.zza<Integer> {
    public zzg(String str, int i) {
        super(str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    public void zza(Bundle bundle, Integer num) {
        bundle.putInt(getName(), num.intValue());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzg */
    public Integer zzc(DataHolder dataHolder, int i, int i2) {
        return Integer.valueOf(dataHolder.zzc(getName(), i, i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzw */
    public Integer zzt(Bundle bundle) {
        return Integer.valueOf(bundle.getInt(getName()));
    }
}
