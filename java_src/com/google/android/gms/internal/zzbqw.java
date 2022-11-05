package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzbqy;
/* loaded from: classes2.dex */
public class zzbqw {
    private final zzbrx zzchI;
    private final zzbqy.zza zzchN;
    private final zzbrx zzchO;
    private final zzbrq zzchP;
    private final zzbrq zzchQ;

    private zzbqw(zzbqy.zza zzaVar, zzbrx zzbrxVar, zzbrq zzbrqVar, zzbrq zzbrqVar2, zzbrx zzbrxVar2) {
        this.zzchN = zzaVar;
        this.zzchI = zzbrxVar;
        this.zzchP = zzbrqVar;
        this.zzchQ = zzbrqVar2;
        this.zzchO = zzbrxVar2;
    }

    public static zzbqw zza(zzbrq zzbrqVar, zzbrx zzbrxVar) {
        return new zzbqw(zzbqy.zza.CHILD_ADDED, zzbrxVar, zzbrqVar, null, null);
    }

    public static zzbqw zza(zzbrq zzbrqVar, zzbrx zzbrxVar, zzbrx zzbrxVar2) {
        return new zzbqw(zzbqy.zza.CHILD_CHANGED, zzbrxVar, zzbrqVar, null, zzbrxVar2);
    }

    public static zzbqw zza(zzbrq zzbrqVar, zzbsc zzbscVar, zzbsc zzbscVar2) {
        return zza(zzbrqVar, zzbrx.zzn(zzbscVar), zzbrx.zzn(zzbscVar2));
    }

    public static zzbqw zza(zzbrx zzbrxVar) {
        return new zzbqw(zzbqy.zza.VALUE, zzbrxVar, null, null, null);
    }

    public static zzbqw zzb(zzbrq zzbrqVar, zzbrx zzbrxVar) {
        return new zzbqw(zzbqy.zza.CHILD_REMOVED, zzbrxVar, zzbrqVar, null, null);
    }

    public static zzbqw zzc(zzbrq zzbrqVar, zzbrx zzbrxVar) {
        return new zzbqw(zzbqy.zza.CHILD_MOVED, zzbrxVar, zzbrqVar, null, null);
    }

    public static zzbqw zzc(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return zza(zzbrqVar, zzbrx.zzn(zzbscVar));
    }

    public static zzbqw zzd(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return zzb(zzbrqVar, zzbrx.zzn(zzbscVar));
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzchN);
        String valueOf2 = String.valueOf(this.zzchP);
        return new StringBuilder(String.valueOf(valueOf).length() + 9 + String.valueOf(valueOf2).length()).append("Change: ").append(valueOf).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf2).toString();
    }

    public zzbrx zzZS() {
        return this.zzchI;
    }

    public zzbrq zzZU() {
        return this.zzchP;
    }

    public zzbqy.zza zzZV() {
        return this.zzchN;
    }

    public zzbrq zzZW() {
        return this.zzchQ;
    }

    public zzbrx zzZX() {
        return this.zzchO;
    }

    public zzbqw zzg(zzbrq zzbrqVar) {
        return new zzbqw(this.zzchN, this.zzchI, this.zzchP, zzbrqVar, this.zzchO);
    }
}
