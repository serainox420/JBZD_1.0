package com.google.android.gms.identity.intents.model;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.identity.intents.AddressConstants;
/* loaded from: classes2.dex */
public final class UserAddress extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<UserAddress> CREATOR = new zzb();
    String name;
    String phoneNumber;
    String zzUI;
    String zzbhA;
    String zzbhB;
    String zzbhC;
    String zzbhD;
    boolean zzbhE;
    String zzbhF;
    String zzbhG;
    String zzbhv;
    String zzbhw;
    String zzbhx;
    String zzbhy;
    String zzbhz;

    UserAddress() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public UserAddress(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, boolean z, String str13, String str14) {
        this.name = str;
        this.zzbhv = str2;
        this.zzbhw = str3;
        this.zzbhx = str4;
        this.zzbhy = str5;
        this.zzbhz = str6;
        this.zzbhA = str7;
        this.zzbhB = str8;
        this.zzUI = str9;
        this.zzbhC = str10;
        this.zzbhD = str11;
        this.phoneNumber = str12;
        this.zzbhE = z;
        this.zzbhF = str13;
        this.zzbhG = str14;
    }

    public static UserAddress fromIntent(Intent intent) {
        if (intent == null || !intent.hasExtra(AddressConstants.Extras.EXTRA_ADDRESS)) {
            return null;
        }
        return (UserAddress) intent.getParcelableExtra(AddressConstants.Extras.EXTRA_ADDRESS);
    }

    public String getAddress1() {
        return this.zzbhv;
    }

    public String getAddress2() {
        return this.zzbhw;
    }

    public String getAddress3() {
        return this.zzbhx;
    }

    public String getAddress4() {
        return this.zzbhy;
    }

    public String getAddress5() {
        return this.zzbhz;
    }

    public String getAdministrativeArea() {
        return this.zzbhA;
    }

    public String getCompanyName() {
        return this.zzbhF;
    }

    public String getCountryCode() {
        return this.zzUI;
    }

    public String getEmailAddress() {
        return this.zzbhG;
    }

    public String getLocality() {
        return this.zzbhB;
    }

    public String getName() {
        return this.name;
    }

    public String getPhoneNumber() {
        return this.phoneNumber;
    }

    public String getPostalCode() {
        return this.zzbhC;
    }

    public String getSortingCode() {
        return this.zzbhD;
    }

    public boolean isPostBox() {
        return this.zzbhE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzb.zza(this, parcel, i);
    }
}
