package com.google.android.gms.auth;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzaa;
import com.google.android.gms.common.internal.zzac;
import java.util.List;
/* loaded from: classes2.dex */
public class TokenData extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new zzf();
    final int zzaiI;
    private final String zzaiJ;
    private final Long zzaiK;
    private final boolean zzaiL;
    private final boolean zzaiM;
    private final List<String> zzaiN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TokenData(int i, String str, Long l, boolean z, boolean z2, List<String> list) {
        this.zzaiI = i;
        this.zzaiJ = zzac.zzdr(str);
        this.zzaiK = l;
        this.zzaiL = z;
        this.zzaiM = z2;
        this.zzaiN = list;
    }

    public static TokenData zzd(Bundle bundle, String str) {
        bundle.setClassLoader(TokenData.class.getClassLoader());
        Bundle bundle2 = bundle.getBundle(str);
        if (bundle2 == null) {
            return null;
        }
        bundle2.setClassLoader(TokenData.class.getClassLoader());
        return (TokenData) bundle2.getParcelable("TokenData");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.zzaiJ, tokenData.zzaiJ) && zzaa.equal(this.zzaiK, tokenData.zzaiK) && this.zzaiL == tokenData.zzaiL && this.zzaiM == tokenData.zzaiM && zzaa.equal(this.zzaiN, tokenData.zzaiN);
    }

    public String getToken() {
        return this.zzaiJ;
    }

    public int hashCode() {
        return zzaa.hashCode(this.zzaiJ, this.zzaiK, Boolean.valueOf(this.zzaiL), Boolean.valueOf(this.zzaiM), this.zzaiN);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }

    public Long zzqO() {
        return this.zzaiK;
    }

    public boolean zzqP() {
        return this.zzaiL;
    }

    public boolean zzqQ() {
        return this.zzaiM;
    }

    public List<String> zzqR() {
        return this.zzaiN;
    }
}
