package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zztv extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zztv> CREATOR = new zztw();
    public final int id;
    final Bundle zzahq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zztv(int i, Bundle bundle) {
        this.id = i;
        this.zzahq = bundle;
    }

    public boolean equals(Object obj) {
        if (obj instanceof zztv) {
            zztv zztvVar = (zztv) obj;
            return com.google.android.gms.common.internal.zzaa.equal(Integer.valueOf(zztvVar.id), Integer.valueOf(this.id)) && com.google.android.gms.common.internal.zzaa.equal(zztvVar.zzahq, this.zzahq);
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(Integer.valueOf(this.id), this.zzahq);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zztw.zza(this, parcel, i);
    }
}
