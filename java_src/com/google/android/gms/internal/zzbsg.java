package com.google.android.gms.internal;

import com.google.firebase.database.DatabaseException;
/* loaded from: classes2.dex */
public class zzbsg {
    public static zzbsc zzabl() {
        return zzbrv.zzaaZ();
    }

    public static zzbsc zzau(Object obj) {
        zzbsc zzat = zzbsd.zzat(obj);
        if (zzat instanceof zzbsa) {
            zzat = new zzbru(Double.valueOf(((Long) zzat.getValue()).longValue()), zzabl());
        }
        if (!zzq(zzat)) {
            throw new DatabaseException("Invalid Firebase Database priority (must be a string, double, ServerValue, or null)");
        }
        return zzat;
    }

    public static boolean zzq(zzbsc zzbscVar) {
        return zzbscVar.zzaaO().isEmpty() && (zzbscVar.isEmpty() || (zzbscVar instanceof zzbru) || (zzbscVar instanceof zzbsi) || (zzbscVar instanceof zzbrt));
    }
}
