package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;
@zzme
/* loaded from: classes.dex */
public final class zzed {
    private Bundle mExtras;
    private Location zzcV;
    private boolean zzsS;
    private long zzzj;
    private int zzzk;
    private List<String> zzzl;
    private boolean zzzm;
    private int zzzn;
    private String zzzo;
    private zzfp zzzp;
    private String zzzq;
    private Bundle zzzr;
    private Bundle zzzs;
    private List<String> zzzt;
    private String zzzu;
    private String zzzv;
    private boolean zzzw;

    public zzed() {
        this.zzzj = -1L;
        this.mExtras = new Bundle();
        this.zzzk = -1;
        this.zzzl = new ArrayList();
        this.zzzm = false;
        this.zzzn = -1;
        this.zzsS = false;
        this.zzzo = null;
        this.zzzp = null;
        this.zzcV = null;
        this.zzzq = null;
        this.zzzr = new Bundle();
        this.zzzs = new Bundle();
        this.zzzt = new ArrayList();
        this.zzzu = null;
        this.zzzv = null;
        this.zzzw = false;
    }

    public zzed(zzec zzecVar) {
        this.zzzj = zzecVar.zzyT;
        this.mExtras = zzecVar.extras;
        this.zzzk = zzecVar.zzyU;
        this.zzzl = zzecVar.zzyV;
        this.zzzm = zzecVar.zzyW;
        this.zzzn = zzecVar.zzyX;
        this.zzsS = zzecVar.zzyY;
        this.zzzo = zzecVar.zzyZ;
        this.zzzp = zzecVar.zzza;
        this.zzcV = zzecVar.zzzb;
        this.zzzq = zzecVar.zzzc;
        this.zzzr = zzecVar.zzzd;
        this.zzzs = zzecVar.zzze;
        this.zzzt = zzecVar.zzzf;
        this.zzzu = zzecVar.zzzg;
        this.zzzv = zzecVar.zzzh;
    }

    public zzed zza(Location location) {
        this.zzcV = location;
        return this;
    }

    public zzec zzeC() {
        return new zzec(7, this.zzzj, this.mExtras, this.zzzk, this.zzzl, this.zzzm, this.zzzn, this.zzsS, this.zzzo, this.zzzp, this.zzcV, this.zzzq, this.zzzr, this.zzzs, this.zzzt, this.zzzu, this.zzzv, false);
    }
}
