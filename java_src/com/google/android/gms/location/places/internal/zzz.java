package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.GoogleApiAvailability;
import java.util.Locale;
/* loaded from: classes2.dex */
public class zzz extends com.google.android.gms.common.internal.safeparcel.zza {
    public final int versionCode;
    public final String zzaJT;
    public final String zzblS;
    public final String zzbnc;
    public final String zzbnd;
    public final int zzbne;
    public final int zzbnf;
    public static final zzz zzbnb = new zzz("com.google.android.gms", Locale.getDefault(), null);
    public static final Parcelable.Creator<zzz> CREATOR = new zzaa();

    public zzz(int i, String str, String str2, String str3, String str4, int i2, int i3) {
        this.versionCode = i;
        this.zzbnc = str;
        this.zzbnd = str2;
        this.zzaJT = str3;
        this.zzblS = str4;
        this.zzbne = i2;
        this.zzbnf = i3;
    }

    public zzz(String str, Locale locale, String str2) {
        this(3, str, locale.toString(), str2, null, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE, 0);
    }

    public zzz(String str, Locale locale, String str2, String str3, int i) {
        this(3, str, locale.toString(), str2, str3, GoogleApiAvailability.GOOGLE_PLAY_SERVICES_VERSION_CODE, i);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzz)) {
            return false;
        }
        zzz zzzVar = (zzz) obj;
        return this.zzbne == zzzVar.zzbne && this.zzbnf == zzzVar.zzbnf && this.zzbnd.equals(zzzVar.zzbnd) && this.zzbnc.equals(zzzVar.zzbnc) && com.google.android.gms.common.internal.zzaa.equal(this.zzaJT, zzzVar.zzaJT) && com.google.android.gms.common.internal.zzaa.equal(this.zzblS, zzzVar.zzblS);
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.zzaa.hashCode(this.zzbnc, this.zzbnd, this.zzaJT, this.zzblS, Integer.valueOf(this.zzbne), Integer.valueOf(this.zzbnf));
    }

    @SuppressLint({"DefaultLocale"})
    public String toString() {
        return com.google.android.gms.common.internal.zzaa.zzv(this).zzg("clientPackageName", this.zzbnc).zzg("locale", this.zzbnd).zzg("accountName", this.zzaJT).zzg("gCoreClientName", this.zzblS).toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaa.zza(this, parcel, i);
    }
}
