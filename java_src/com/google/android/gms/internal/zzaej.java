package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzaej {
    private final zzbwn zzaJf;

    public zzaej(zzbwn zzbwnVar) {
        this.zzaJf = (zzbwn) com.google.android.gms.common.internal.zzac.zzw(zzbwnVar);
    }

    private static zzbwn zza(int i, long j, int i2) {
        zzbwn zzbwnVar = new zzbwn();
        zzbwnVar.zzcsS = i;
        zzbwnVar.zzcsT = j;
        switch (i) {
            case 1:
            case 2:
            case 3:
                zzbwnVar.zzcsV = i2;
                break;
            case 4:
            case 5:
            case 6:
                zzbwnVar.zzcsW = i2;
                break;
            case 7:
            case 8:
            case 9:
                zzbwnVar.zzcsX = i2;
                break;
            case 10:
            case 11:
            case 12:
                zzbwnVar.zzcsY = i2;
                break;
            case 13:
            case 14:
            case 15:
                zzbwnVar.zzcsZ = i2;
                break;
            case 16:
            case 17:
            case 18:
                zzbwnVar.zzcta = i2;
                break;
            default:
                zzcf.zza("AudioStateFenceStub", "Unknown trigger type=%s", Integer.valueOf(i));
                break;
        }
        return zzbwnVar;
    }

    public static zzaej zzdE(int i) {
        return new zzaej(zza(1, 0L, i));
    }

    public static zzaej zzzW() {
        return new zzaej(zza(2, 3000L, 0));
    }

    public static zzaej zzzX() {
        return new zzaej(zza(3, 3000L, 0));
    }

    public zzbwn zzzY() {
        return this.zzaJf;
    }
}
