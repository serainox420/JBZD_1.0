package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzuz;
/* loaded from: classes2.dex */
public final class IdToken extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<IdToken> CREATOR = new zze();
    final int zzaiI;
    private final String zzajB;
    private final String zzaji;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IdToken(int i, String str, String str2) {
        zzuz.zzct(str);
        zzac.zzb(!TextUtils.isEmpty(str2), "id token string cannot be null or empty");
        this.zzaiI = i;
        this.zzaji = str;
        this.zzajB = str2;
    }

    public IdToken(String str, String str2) {
        this(1, str, str2);
    }

    public String getAccountType() {
        return this.zzaji;
    }

    public String getIdToken() {
        return this.zzajB;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zze.zza(this, parcel, i);
    }
}
