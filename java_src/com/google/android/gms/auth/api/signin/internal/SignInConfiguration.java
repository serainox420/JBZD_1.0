package com.google.android.gms.auth.api.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class SignInConfiguration extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<SignInConfiguration> CREATOR = new zzm();
    final int versionCode;
    private final String zzakG;
    private GoogleSignInOptions zzakH;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SignInConfiguration(int i, String str, GoogleSignInOptions googleSignInOptions) {
        this.versionCode = i;
        this.zzakG = zzac.zzdr(str);
        this.zzakH = googleSignInOptions;
    }

    public SignInConfiguration(String str, GoogleSignInOptions googleSignInOptions) {
        this(3, str, googleSignInOptions);
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj != null) {
            try {
                SignInConfiguration signInConfiguration = (SignInConfiguration) obj;
                if (this.zzakG.equals(signInConfiguration.zzry()) && (this.zzakH != null ? this.zzakH.equals(signInConfiguration.zzrz()) : signInConfiguration.zzrz() == null)) {
                    z = true;
                }
            } catch (ClassCastException e) {
            }
        }
        return z;
    }

    public int hashCode() {
        return new zzh().zzq(this.zzakG).zzq(this.zzakH).zzru();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }

    public String zzry() {
        return this.zzakG;
    }

    public GoogleSignInOptions zzrz() {
        return this.zzakH;
    }
}
