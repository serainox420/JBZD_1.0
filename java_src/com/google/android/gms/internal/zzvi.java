package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.PasswordSpecification;
/* loaded from: classes2.dex */
public final class zzvi extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzvi> CREATOR = new zzvj();
    final int zzaiI;
    private final PasswordSpecification zzajb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvi(int i, PasswordSpecification passwordSpecification) {
        this.zzaiI = i;
        this.zzajb = passwordSpecification;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzvj.zza(this, parcel, i);
    }

    public PasswordSpecification zzqT() {
        return this.zzajb;
    }
}
