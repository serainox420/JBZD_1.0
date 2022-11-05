package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import com.google.android.gms.common.data.DataHolder;
/* loaded from: classes2.dex */
public class zzr extends com.google.android.gms.drive.metadata.zza<String> {
    public zzr(String str, int i) {
        super(str, i);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzA */
    public String zzt(Bundle bundle) {
        return bundle.getString(getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zze */
    public void zza(Bundle bundle, String str) {
        bundle.putString(getName(), str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.drive.metadata.zza
    /* renamed from: zzi */
    public String zzc(DataHolder dataHolder, int i, int i2) {
        return dataHolder.zzd(getName(), i, i2);
    }
}
