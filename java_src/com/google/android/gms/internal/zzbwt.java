package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes2.dex */
public final class zzbwt extends zzbxn<zzbwt> {
    public int year = 0;
    public int month = 0;
    public int day = 0;
    public int hour = 0;
    public int minutes = 0;
    public int seconds = 0;

    public zzbwt() {
        this.zzcuR = -1;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzbwt)) {
            return false;
        }
        zzbwt zzbwtVar = (zzbwt) obj;
        if (this.year != zzbwtVar.year || this.month != zzbwtVar.month || this.day != zzbwtVar.day || this.hour != zzbwtVar.hour || this.minutes != zzbwtVar.minutes || this.seconds != zzbwtVar.seconds) {
            return false;
        }
        return (this.zzcuI == null || this.zzcuI.isEmpty()) ? zzbwtVar.zzcuI == null || zzbwtVar.zzcuI.isEmpty() : this.zzcuI.equals(zzbwtVar.zzcuI);
    }

    public int hashCode() {
        return ((this.zzcuI == null || this.zzcuI.isEmpty()) ? 0 : this.zzcuI.hashCode()) + ((((((((((((((getClass().getName().hashCode() + 527) * 31) + this.year) * 31) + this.month) * 31) + this.day) * 31) + this.hour) * 31) + this.minutes) * 31) + this.seconds) * 31);
    }

    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public void zza(zzbxm zzbxmVar) throws IOException {
        if (this.year != 0) {
            zzbxmVar.zzJ(1, this.year);
        }
        if (this.month != 0) {
            zzbxmVar.zzJ(2, this.month);
        }
        if (this.day != 0) {
            zzbxmVar.zzJ(3, this.day);
        }
        if (this.hour != 0) {
            zzbxmVar.zzJ(4, this.hour);
        }
        if (this.minutes != 0) {
            zzbxmVar.zzJ(5, this.minutes);
        }
        if (this.seconds != 0) {
            zzbxmVar.zzJ(6, this.seconds);
        }
        super.zza(zzbxmVar);
    }

    @Override // com.google.android.gms.internal.zzbxt
    /* renamed from: zzaq */
    public zzbwt zzb(zzbxl zzbxlVar) throws IOException {
        while (true) {
            int zzaeo = zzbxlVar.zzaeo();
            switch (zzaeo) {
                case 0:
                    break;
                case 8:
                    this.year = zzbxlVar.zzaes();
                    break;
                case 16:
                    this.month = zzbxlVar.zzaes();
                    break;
                case 24:
                    this.day = zzbxlVar.zzaes();
                    break;
                case 32:
                    this.hour = zzbxlVar.zzaes();
                    break;
                case 40:
                    this.minutes = zzbxlVar.zzaes();
                    break;
                case 48:
                    this.seconds = zzbxlVar.zzaes();
                    break;
                default:
                    if (super.zza(zzbxlVar, zzaeo)) {
                        break;
                    } else {
                        break;
                    }
            }
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzbxn, com.google.android.gms.internal.zzbxt
    public int zzu() {
        int zzu = super.zzu();
        if (this.year != 0) {
            zzu += zzbxm.zzL(1, this.year);
        }
        if (this.month != 0) {
            zzu += zzbxm.zzL(2, this.month);
        }
        if (this.day != 0) {
            zzu += zzbxm.zzL(3, this.day);
        }
        if (this.hour != 0) {
            zzu += zzbxm.zzL(4, this.hour);
        }
        if (this.minutes != 0) {
            zzu += zzbxm.zzL(5, this.minutes);
        }
        return this.seconds != 0 ? zzu + zzbxm.zzL(6, this.seconds) : zzu;
    }
}
