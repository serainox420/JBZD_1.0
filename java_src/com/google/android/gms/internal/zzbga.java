package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbga extends zzbcs {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0067, code lost:
        if (r0.equals("i") != false) goto L10;
     */
    @Override // com.google.android.gms.internal.zzbcs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        char c = 1;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String zzd = zzbcr.zzd(zzbitVarArr[1]);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        switch (str.hashCode()) {
            case 101:
                if (str.equals("e")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case 105:
                break;
            case 118:
                if (str.equals("v")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 119:
                if (str.equals("w")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
                zzbbu.e(zzd);
                break;
            case 1:
                zzbbu.zzbg(zzd);
                break;
            case 2:
                zzbbu.v(zzd);
                break;
            case 3:
                zzbbu.zzbh(zzd);
                break;
            default:
                String valueOf = String.valueOf((String) ((zzbjb) zzbitVarArr[0]).zzTi());
                throw new IllegalArgumentException(valueOf.length() != 0 ? "Invalid logging level: ".concat(valueOf) : new String("Invalid logging level: "));
        }
        return zzbix.zzbMS;
    }
}
