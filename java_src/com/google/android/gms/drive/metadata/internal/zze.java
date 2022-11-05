package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
import java.util.Date;
/* loaded from: classes2.dex */
public class zze extends com.google.android.gms.drive.metadata.zzd<Date> {
    public zze(String str, int i) {
        super(str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    public void zza(Bundle bundle, Date date) {
        bundle.putLong(getName(), date.getTime());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzf */
    public Date zzc(DataHolder dataHolder, int i, int i2) {
        return new Date(dataHolder.zzb(getName(), i, i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzv */
    public Date zzt(Bundle bundle) {
        return new Date(bundle.getLong(getName()));
    }
}
