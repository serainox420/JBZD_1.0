package com.google.android.gms.drive.query.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.query.Filter;
/* loaded from: classes2.dex */
public class FilterHolder extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<FilterHolder> CREATOR = new zzh();
    private final Filter zzaLo;
    final zzb<?> zzaQn;
    final zzd zzaQo;
    final zzr zzaQp;
    final zzv zzaQq;
    final zzp<?> zzaQr;
    final zzt zzaQs;
    final zzn zzaQt;
    final zzl zzaQu;
    final zzz zzaQv;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public FilterHolder(int i, zzb<?> zzbVar, zzd zzdVar, zzr zzrVar, zzv zzvVar, zzp<?> zzpVar, zzt zztVar, zzn<?> zznVar, zzl zzlVar, zzz zzzVar) {
        this.zzaiI = i;
        this.zzaQn = zzbVar;
        this.zzaQo = zzdVar;
        this.zzaQp = zzrVar;
        this.zzaQq = zzvVar;
        this.zzaQr = zzpVar;
        this.zzaQs = zztVar;
        this.zzaQt = zznVar;
        this.zzaQu = zzlVar;
        this.zzaQv = zzzVar;
        if (this.zzaQn != null) {
            this.zzaLo = this.zzaQn;
        } else if (this.zzaQo != null) {
            this.zzaLo = this.zzaQo;
        } else if (this.zzaQp != null) {
            this.zzaLo = this.zzaQp;
        } else if (this.zzaQq != null) {
            this.zzaLo = this.zzaQq;
        } else if (this.zzaQr != null) {
            this.zzaLo = this.zzaQr;
        } else if (this.zzaQs != null) {
            this.zzaLo = this.zzaQs;
        } else if (this.zzaQt != null) {
            this.zzaLo = this.zzaQt;
        } else if (this.zzaQu != null) {
            this.zzaLo = this.zzaQu;
        } else if (this.zzaQv == null) {
            throw new IllegalArgumentException("At least one filter must be set.");
        } else {
            this.zzaLo = this.zzaQv;
        }
    }

    public FilterHolder(Filter filter) {
        zzac.zzb(filter, "Null filter.");
        this.zzaiI = 2;
        this.zzaQn = filter instanceof zzb ? (zzb) filter : null;
        this.zzaQo = filter instanceof zzd ? (zzd) filter : null;
        this.zzaQp = filter instanceof zzr ? (zzr) filter : null;
        this.zzaQq = filter instanceof zzv ? (zzv) filter : null;
        this.zzaQr = filter instanceof zzp ? (zzp) filter : null;
        this.zzaQs = filter instanceof zzt ? (zzt) filter : null;
        this.zzaQt = filter instanceof zzn ? (zzn) filter : null;
        this.zzaQu = filter instanceof zzl ? (zzl) filter : null;
        this.zzaQv = filter instanceof zzz ? (zzz) filter : null;
        if (this.zzaQn == null && this.zzaQo == null && this.zzaQp == null && this.zzaQq == null && this.zzaQr == null && this.zzaQs == null && this.zzaQt == null && this.zzaQu == null && this.zzaQv == null) {
            throw new IllegalArgumentException("Invalid filter type.");
        }
        this.zzaLo = filter;
    }

    public Filter getFilter() {
        return this.zzaLo;
    }

    public String toString() {
        return String.format("FilterHolder[%s]", this.zzaLo);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
