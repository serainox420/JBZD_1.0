package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.metadata.CustomPropertyKey;
/* loaded from: classes2.dex */
public class zzc extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzc> CREATOR = new zzd();
    final String mValue;
    final CustomPropertyKey zzaOQ;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzc(int i, CustomPropertyKey customPropertyKey, String str) {
        this.zzaiI = i;
        zzac.zzb(customPropertyKey, "key");
        this.zzaOQ = customPropertyKey;
        this.mValue = str;
    }

    public zzc(CustomPropertyKey customPropertyKey, String str) {
        this(1, customPropertyKey, str);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || obj.getClass() != getClass()) {
            return false;
        }
        zzc zzcVar = (zzc) obj;
        return zzaa.equal(this.zzaOQ, zzcVar.zzaOQ) && zzaa.equal(this.mValue, zzcVar.mValue);
    }

    public String getValue() {
        return this.mValue;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaOQ, this.mValue);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }

    public CustomPropertyKey zzBu() {
        return this.zzaOQ;
    }
}
