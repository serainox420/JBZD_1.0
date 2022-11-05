package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.awareness.fence.AwarenessFence;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public class zzaep extends AwarenessFence {
    public static final Parcelable.Creator<zzaep> CREATOR = new zzaeq();
    private zzbwr zzaJp;
    private byte[] zzaJq;

    public zzaep(zzbwr zzbwrVar) {
        this.zzaJp = (zzbwr) com.google.android.gms.common.internal.zzac.zzw(zzbwrVar);
        this.zzaJq = null;
        zzzT();
    }

    public zzaep(byte[] bArr) {
        this.zzaJp = null;
        this.zzaJq = bArr;
        zzzT();
    }

    public static zzaep zza(zzaei zzaeiVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaeiVar);
        zzbwr zzdG = zzdG(7);
        zzdG.zzctt = zzaeiVar.zzzV();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzaej zzaejVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaejVar);
        zzbwr zzdG = zzdG(11);
        zzdG.zzctx = zzaejVar.zzzY();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzael zzaelVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaelVar);
        zzbwr zzdG = zzdG(12);
        zzdG.zzcty = zzaelVar.zzzZ();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzaep zzaepVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaepVar);
        ArrayList arrayList = new ArrayList();
        arrayList.add(zzaepVar);
        zzbwr zzdG = zzdG(3);
        zzdG.zzctp = zzi(arrayList);
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzafc zzafcVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzafcVar);
        zzbwr zzdG = zzdG(5);
        zzdG.zzctr = zzafcVar.zzAd();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzafe zzafeVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzafeVar);
        zzbwr zzdG = zzdG(19);
        zzdG.zzctG = zzafeVar.zzAe();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzaff zzaffVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaffVar);
        zzbwr zzdG = zzdG(4);
        zzdG.zzctq = zzaffVar.zzAf();
        return new zzaep(zzdG);
    }

    public static zzaep zza(zzafg zzafgVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzafgVar);
        zzbwr zzdG = zzdG(15);
        zzdG.zzctC = zzafgVar.zzAg();
        return new zzaep(zzdG);
    }

    private static zzbwr zzdG(int i) {
        zzbwr zzbwrVar = new zzbwr();
        zzbwrVar.type = i;
        return zzbwrVar;
    }

    public static zzaep zzg(Collection<zzaep> collection) {
        com.google.android.gms.common.internal.zzac.zzw(collection);
        com.google.android.gms.common.internal.zzac.zzax(!collection.isEmpty());
        zzbwr zzdG = zzdG(1);
        zzdG.zzctp = zzi(collection);
        return new zzaep(zzdG);
    }

    public static zzaep zzh(Collection<zzaep> collection) {
        com.google.android.gms.common.internal.zzac.zzw(collection);
        com.google.android.gms.common.internal.zzac.zzax(!collection.isEmpty());
        zzbwr zzdG = zzdG(2);
        zzdG.zzctp = zzi(collection);
        return new zzaep(zzdG);
    }

    private static zzbwr[] zzi(Collection<zzaep> collection) {
        zzbwr[] zzbwrVarArr = new zzbwr[collection.size()];
        int i = 0;
        for (zzaep zzaepVar : collection) {
            zzbwrVarArr[i] = zzaepVar.zzAb();
            i++;
        }
        return zzbwrVarArr;
    }

    private void zzzR() {
        if (!zzzS()) {
            try {
                this.zzaJp = zzbwr.zzad(this.zzaJq);
                this.zzaJq = null;
            } catch (zzbxs e) {
                zzcf.zza("ContextFenceStub", "Could not deserialize context fence bytes.", (Throwable) e);
                throw new IllegalStateException(e);
            }
        }
        zzzT();
    }

    private boolean zzzS() {
        return this.zzaJp != null;
    }

    private void zzzT() {
        if (this.zzaJp != null || this.zzaJq == null) {
            if (this.zzaJp != null && this.zzaJq == null) {
                return;
            }
            if (this.zzaJp != null && this.zzaJq != null) {
                throw new IllegalStateException("Invalid internal representation - full");
            }
            if (this.zzaJp != null || this.zzaJq != null) {
                throw new IllegalStateException("Impossible");
            }
            throw new IllegalStateException("Invalid internal representation - empty");
        }
    }

    public String toString() {
        zzzR();
        return this.zzaJp.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaeq.zza(this, parcel, i);
    }

    public byte[] zzAa() {
        return this.zzaJq != null ? this.zzaJq : zzbxt.zzf(this.zzaJp);
    }

    public zzbwr zzAb() {
        zzzR();
        return this.zzaJp;
    }
}
