package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
/* loaded from: classes2.dex */
public final class zzvm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzvm> CREATOR = new zzvn();
    final int zzaiI;
    private final Credential zzajL;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzvm(int i, Credential credential) {
        this.zzaiI = i;
        this.zzajL = credential;
    }

    public zzvm(Credential credential) {
        this(1, credential);
    }

    public Credential getCredential() {
        return this.zzajL;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzvn.zza(this, parcel, i);
    }
}
