package com.google.android.gms.internal;

import android.text.TextUtils;
@zzme
/* loaded from: classes.dex */
public class zzgg {
    public zzgf zza(zzge zzgeVar) {
        if (zzgeVar == null) {
            throw new IllegalArgumentException("CSI configuration can't be null. ");
        }
        if (!zzgeVar.zzfu()) {
            zzpk.v("CsiReporterFactory: CSI is not enabled. No CSI reporter created.");
            return null;
        } else if (zzgeVar.getContext() == null) {
            throw new IllegalArgumentException("Context can't be null. Please set up context in CsiConfiguration.");
        } else {
            if (!TextUtils.isEmpty(zzgeVar.zzdA())) {
                return new zzgf(zzgeVar.getContext(), zzgeVar.zzdA(), zzgeVar.zzfv(), zzgeVar.zzfw());
            }
            throw new IllegalArgumentException("AfmaVersion can't be null or empty. Please set up afmaVersion in CsiConfiguration.");
        }
    }
}
