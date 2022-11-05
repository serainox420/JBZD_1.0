package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbsc;
import java.util.Collections;
import java.util.Iterator;
/* loaded from: classes2.dex */
public class zzbrv extends zzbrr implements zzbsc {
    private static final zzbrv zzcjo = new zzbrv();

    private zzbrv() {
    }

    public static zzbrv zzaaZ() {
        return zzcjo;
    }

    @Override // com.google.android.gms.internal.zzbrr
    public boolean equals(Object obj) {
        if (obj instanceof zzbrv) {
            return true;
        }
        return (obj instanceof zzbsc) && ((zzbsc) obj).isEmpty() && zzaaO().equals(((zzbsc) obj).zzaaO());
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public int getChildCount() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public Object getValue() {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public Object getValue(boolean z) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbrr
    public int hashCode() {
        return 0;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public boolean isEmpty() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzbrr, java.lang.Iterable
    public Iterator<zzbsb> iterator() {
        return Collections.emptyList().iterator();
    }

    @Override // com.google.android.gms.internal.zzbrr
    public String toString() {
        return "<Empty Node>";
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbsc zzO(zzbph zzbphVar) {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public Iterator<zzbsb> zzWV() {
        return Collections.emptyList().iterator();
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public String zza(zzbsc.zza zzaVar) {
        return "";
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public String zzaaM() {
        return "";
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public boolean zzaaN() {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbsc zzaaO() {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbsc zze(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return (!zzbscVar.isEmpty() && !zzbrqVar.zzaaK()) ? new zzbrr().zze(zzbrqVar, zzbscVar) : this;
    }

    @Override // com.google.android.gms.internal.zzbrr, java.lang.Comparable
    /* renamed from: zzh */
    public int compareTo(zzbsc zzbscVar) {
        return zzbscVar.isEmpty() ? 0 : -1;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public boolean zzk(zzbrq zzbrqVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbrq zzl(zzbrq zzbrqVar) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    /* renamed from: zzl */
    public zzbrv zzg(zzbsc zzbscVar) {
        return this;
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbsc zzl(zzbph zzbphVar, zzbsc zzbscVar) {
        if (zzbphVar.isEmpty()) {
            return zzbscVar;
        }
        zzbrq zzYS = zzbphVar.zzYS();
        return zze(zzYS, zzm(zzYS).zzl(zzbphVar.zzYT(), zzbscVar));
    }

    @Override // com.google.android.gms.internal.zzbrr, com.google.android.gms.internal.zzbsc
    public zzbsc zzm(zzbrq zzbrqVar) {
        return this;
    }
}
