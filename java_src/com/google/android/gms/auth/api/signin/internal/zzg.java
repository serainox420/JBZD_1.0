package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptionsExtension;
/* loaded from: classes2.dex */
public class zzg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzg> CREATOR = new zzf();
    final int versionCode;
    private Bundle zzaic;
    private int zzakD;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzg(int i, int i2, Bundle bundle) {
        this.versionCode = i;
        this.zzakD = i2;
        this.zzaic = bundle;
    }

    public zzg(GoogleSignInOptionsExtension googleSignInOptionsExtension) {
        this(1, 1, googleSignInOptionsExtension.toBundle());
    }

    public Bundle getBundle() {
        return this.zzaic;
    }

    public int getType() {
        return this.zzakD;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
