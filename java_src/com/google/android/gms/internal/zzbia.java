package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzbif;
/* loaded from: classes2.dex */
public abstract class zzbia {
    private int zzAW;
    protected final zzbbd zzbJm;
    protected final zzbie zzbLR;
    protected final zzbic zzbLS;
    protected final com.google.android.gms.common.util.zze zzuP;

    public zzbia(int i, zzbie zzbieVar, zzbic zzbicVar, zzbbd zzbbdVar) {
        this(i, zzbieVar, zzbicVar, zzbbdVar, com.google.android.gms.common.util.zzi.zzzc());
    }

    public zzbia(int i, zzbie zzbieVar, zzbic zzbicVar, zzbbd zzbbdVar, com.google.android.gms.common.util.zze zzeVar) {
        this.zzbLR = (zzbie) com.google.android.gms.common.internal.zzac.zzw(zzbieVar);
        com.google.android.gms.common.internal.zzac.zzw(zzbieVar.zzSK());
        this.zzAW = i;
        this.zzbLS = (zzbic) com.google.android.gms.common.internal.zzac.zzw(zzbicVar);
        this.zzuP = (com.google.android.gms.common.util.zze) com.google.android.gms.common.internal.zzac.zzw(zzeVar);
        this.zzbJm = zzbbdVar;
    }

    public void zzA(int i, int i2) {
        if (this.zzbJm != null && i2 == 0 && i == 3) {
            this.zzbJm.zzQs();
        }
        String valueOf = String.valueOf(this.zzbLR.zzSK().getContainerId());
        String valueOf2 = String.valueOf(zznJ(i));
        zzbbu.v(new StringBuilder(String.valueOf(valueOf).length() + 61 + String.valueOf(valueOf2).length()).append("Failed to fetch the container resource for the container \"").append(valueOf).append("\": ").append(valueOf2).toString());
        zza(new zzbif(Status.zzazz, i2));
    }

    public void zzN(byte[] bArr) {
        zzbif zzbifVar;
        zzbif zzO = zzO(bArr);
        if (this.zzbJm != null && this.zzAW == 0) {
            this.zzbJm.zzQt();
        }
        if (zzO == null || zzO.getStatus() != Status.zzazx) {
            zzbifVar = new zzbif(Status.zzazz, this.zzAW);
        } else {
            zzbifVar = new zzbif(Status.zzazx, this.zzAW, new zzbif.zza(this.zzbLR.zzSK(), bArr, zzO.zzSL().zzSQ(), this.zzuP.currentTimeMillis()), zzO.zzSM());
        }
        zza(zzbifVar);
    }

    protected zzbif zzO(byte[] bArr) {
        try {
            return this.zzbLS.zzP(bArr);
        } catch (zzbhy e) {
            zzbbu.zzbg("Resource data is corrupted");
            return null;
        }
    }

    protected abstract void zza(zzbif zzbifVar);

    public String zznJ(int i) {
        switch (i) {
            case 0:
                return "Resource not available";
            case 1:
                return "IOError";
            case 2:
                return "Server error";
            default:
                return "Unknown reason";
        }
    }
}
