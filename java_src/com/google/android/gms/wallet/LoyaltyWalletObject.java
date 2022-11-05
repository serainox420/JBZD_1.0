package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class LoyaltyWalletObject extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LoyaltyWalletObject> CREATOR = new zzm();
    int state;
    String zzaJT;
    String zzbQA;
    String zzbQB;
    String zzbQC;
    String zzbQD;
    ArrayList<com.google.android.gms.wallet.wobs.zzp> zzbQE;
    com.google.android.gms.wallet.wobs.zzl zzbQF;
    ArrayList<LatLng> zzbQG;
    String zzbQH;
    String zzbQI;
    ArrayList<com.google.android.gms.wallet.wobs.zzd> zzbQJ;
    boolean zzbQK;
    ArrayList<com.google.android.gms.wallet.wobs.zzn> zzbQL;
    ArrayList<com.google.android.gms.wallet.wobs.zzj> zzbQM;
    ArrayList<com.google.android.gms.wallet.wobs.zzn> zzbQN;
    com.google.android.gms.wallet.wobs.zzf zzbQO;
    String zzbQw;
    String zzbQx;
    String zzbQy;
    String zzbQz;
    String zzkl;

    LoyaltyWalletObject() {
        this.zzbQE = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQG = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQJ = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQL = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQM = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQN = com.google.android.gms.common.util.zzb.zzyY();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LoyaltyWalletObject(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, int i, ArrayList<com.google.android.gms.wallet.wobs.zzp> arrayList, com.google.android.gms.wallet.wobs.zzl zzlVar, ArrayList<LatLng> arrayList2, String str11, String str12, ArrayList<com.google.android.gms.wallet.wobs.zzd> arrayList3, boolean z, ArrayList<com.google.android.gms.wallet.wobs.zzn> arrayList4, ArrayList<com.google.android.gms.wallet.wobs.zzj> arrayList5, ArrayList<com.google.android.gms.wallet.wobs.zzn> arrayList6, com.google.android.gms.wallet.wobs.zzf zzfVar) {
        this.zzkl = str;
        this.zzbQw = str2;
        this.zzbQx = str3;
        this.zzbQy = str4;
        this.zzaJT = str5;
        this.zzbQz = str6;
        this.zzbQA = str7;
        this.zzbQB = str8;
        this.zzbQC = str9;
        this.zzbQD = str10;
        this.state = i;
        this.zzbQE = arrayList;
        this.zzbQF = zzlVar;
        this.zzbQG = arrayList2;
        this.zzbQH = str11;
        this.zzbQI = str12;
        this.zzbQJ = arrayList3;
        this.zzbQK = z;
        this.zzbQL = arrayList4;
        this.zzbQM = arrayList5;
        this.zzbQN = arrayList6;
        this.zzbQO = zzfVar;
    }

    public String getAccountId() {
        return this.zzbQw;
    }

    public String getAccountName() {
        return this.zzaJT;
    }

    public String getBarcodeAlternateText() {
        return this.zzbQz;
    }

    public String getBarcodeType() {
        return this.zzbQA;
    }

    public String getBarcodeValue() {
        return this.zzbQB;
    }

    public String getId() {
        return this.zzkl;
    }

    public String getIssuerName() {
        return this.zzbQx;
    }

    public String getProgramName() {
        return this.zzbQy;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzm.zza(this, parcel, i);
    }
}
