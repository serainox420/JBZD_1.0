package com.google.android.gms.internal;

import android.util.Log;
import com.google.android.gms.internal.zzbro;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbrl extends zzbrm {
    public zzbrl(zzbro.zza zzaVar, List<String> list) {
        super(zzaVar, list);
    }

    @Override // com.google.android.gms.internal.zzbrm
    protected String zza(zzbro.zza zzaVar, String str, String str2, long j) {
        return str2;
    }

    @Override // com.google.android.gms.internal.zzbrm
    protected void zzau(String str, String str2) {
        Log.e(str, str2);
    }

    @Override // com.google.android.gms.internal.zzbrm
    protected void zzav(String str, String str2) {
        Log.w(str, str2);
    }

    @Override // com.google.android.gms.internal.zzbrm
    protected void zzaw(String str, String str2) {
        Log.i(str, str2);
    }

    @Override // com.google.android.gms.internal.zzbrm
    protected void zzax(String str, String str2) {
        Log.d(str, str2);
    }
}
