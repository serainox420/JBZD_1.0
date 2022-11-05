package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzatq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzatq> CREATOR = new zzatr();
    public final String name;
    public final String zzbqV;
    public final zzato zzbrG;
    public final long zzbrH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatq(zzatq zzatqVar, long j) {
        com.google.android.gms.common.internal.zzac.zzw(zzatqVar);
        this.name = zzatqVar.name;
        this.zzbrG = zzatqVar.zzbrG;
        this.zzbqV = zzatqVar.zzbqV;
        this.zzbrH = j;
    }

    public zzatq(String str, zzato zzatoVar, String str2, long j) {
        this.name = str;
        this.zzbrG = zzatoVar;
        this.zzbqV = str2;
        this.zzbrH = j;
    }

    public String toString() {
        String str = this.zzbqV;
        String str2 = this.name;
        String valueOf = String.valueOf(this.zzbrG);
        return new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length()).append("origin=").append(str).append(",name=").append(str2).append(",params=").append(valueOf).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzatr.zza(this, parcel, i);
    }
}
