package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public final class zzbun extends zzbuq implements Iterable<zzbuq> {
    private final List<zzbuq> zzbPo = new ArrayList();

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzbun) && ((zzbun) obj).zzbPo.equals(this.zzbPo));
    }

    @Override // com.google.android.gms.internal.zzbuq
    public boolean getAsBoolean() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).getAsBoolean();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzbuq
    public double getAsDouble() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).getAsDouble();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzbuq
    public int getAsInt() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).getAsInt();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzbuq
    public long getAsLong() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).getAsLong();
        }
        throw new IllegalStateException();
    }

    public int hashCode() {
        return this.zzbPo.hashCode();
    }

    @Override // java.lang.Iterable
    public Iterator<zzbuq> iterator() {
        return this.zzbPo.iterator();
    }

    public int size() {
        return this.zzbPo.size();
    }

    @Override // com.google.android.gms.internal.zzbuq
    public Number zzadi() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).zzadi();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.gms.internal.zzbuq
    public String zzadj() {
        if (this.zzbPo.size() == 1) {
            return this.zzbPo.get(0).zzadj();
        }
        throw new IllegalStateException();
    }

    public void zzc(zzbuq zzbuqVar) {
        if (zzbuqVar == null) {
            zzbuqVar = zzbus.zzcpt;
        }
        this.zzbPo.add(zzbuqVar);
    }

    public zzbuq zzqT(int i) {
        return this.zzbPo.get(i);
    }
}
