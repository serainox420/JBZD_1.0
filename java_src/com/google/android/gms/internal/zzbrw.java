package com.google.android.gms.internal;

import java.util.Comparator;
/* loaded from: classes2.dex */
public abstract class zzbrw implements Comparator<zzbsb> {
    public static zzbrw zzjb(String str) {
        if (str.equals(".value")) {
            return zzbsj.zzabm();
        }
        if (str.equals(".key")) {
            return zzbry.zzabg();
        }
        if (!str.equals(".priority")) {
            return new zzbse(new zzbph(str));
        }
        throw new IllegalStateException("queryDefinition shouldn't ever be .priority since it's the default");
    }

    public int zza(zzbsb zzbsbVar, zzbsb zzbsbVar2, boolean z) {
        return z ? compare(zzbsbVar2, zzbsbVar) : compare(zzbsbVar, zzbsbVar2);
    }

    public boolean zza(zzbsc zzbscVar, zzbsc zzbscVar2) {
        return compare(new zzbsb(zzbrq.zzaaG(), zzbscVar), new zzbsb(zzbrq.zzaaG(), zzbscVar2)) != 0;
    }

    public zzbsb zzaba() {
        return zzbsb.zzabh();
    }

    public abstract zzbsb zzabb();

    public abstract String zzabc();

    public abstract zzbsb zzg(zzbrq zzbrqVar, zzbsc zzbscVar);

    public abstract boolean zzm(zzbsc zzbscVar);
}
