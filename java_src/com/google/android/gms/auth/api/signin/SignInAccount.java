package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes.dex */
public class SignInAccount extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInAccount> CREATOR = new zzc();
    final int versionCode;
    @Deprecated
    String zzadi;
    @Deprecated
    String zzaka;
    private GoogleSignInAccount zzakt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInAccount(int i, String str, GoogleSignInAccount googleSignInAccount, String str2) {
        this.versionCode = i;
        this.zzakt = googleSignInAccount;
        this.zzaka = zzac.zzh(str, "8.3 and 8.4 SDKs require non-null email");
        this.zzadi = zzac.zzh(str2, "8.3 and 8.4 SDKs require non-null userId");
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }

    public GoogleSignInAccount zzro() {
        return this.zzakt;
    }
}
