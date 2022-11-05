package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
@KeepName
/* loaded from: classes2.dex */
public class CommonWalletObject extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<CommonWalletObject> CREATOR = new com.google.android.gms.wallet.wobs.zza();
    String name;
    int state;
    String zzbQA;
    String zzbQB;
    String zzbQC;
    String zzbQD;
    ArrayList<zzp> zzbQE;
    zzl zzbQF;
    ArrayList<LatLng> zzbQG;
    String zzbQH;
    String zzbQI;
    ArrayList<zzd> zzbQJ;
    boolean zzbQK;
    ArrayList<zzn> zzbQL;
    ArrayList<zzj> zzbQM;
    ArrayList<zzn> zzbQN;
    String zzbQx;
    String zzbQz;
    String zzkl;

    /* loaded from: classes2.dex */
    public final class zza {
        private zza() {
        }

        public CommonWalletObject zzUd() {
            return CommonWalletObject.this;
        }

        public zza zzim(String str) {
            CommonWalletObject.this.zzkl = str;
            return this;
        }
    }

    CommonWalletObject() {
        this.zzbQE = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQG = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQJ = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQL = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQM = com.google.android.gms.common.util.zzb.zzyY();
        this.zzbQN = com.google.android.gms.common.util.zzb.zzyY();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CommonWalletObject(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, int i, ArrayList<zzp> arrayList, zzl zzlVar, ArrayList<LatLng> arrayList2, String str9, String str10, ArrayList<zzd> arrayList3, boolean z, ArrayList<zzn> arrayList4, ArrayList<zzj> arrayList5, ArrayList<zzn> arrayList6) {
        this.zzkl = str;
        this.zzbQD = str2;
        this.name = str3;
        this.zzbQx = str4;
        this.zzbQz = str5;
        this.zzbQA = str6;
        this.zzbQB = str7;
        this.zzbQC = str8;
        this.state = i;
        this.zzbQE = arrayList;
        this.zzbQF = zzlVar;
        this.zzbQG = arrayList2;
        this.zzbQH = str9;
        this.zzbQI = str10;
        this.zzbQJ = arrayList3;
        this.zzbQK = z;
        this.zzbQL = arrayList4;
        this.zzbQM = arrayList5;
        this.zzbQN = arrayList6;
    }

    public static zza zzUc() {
        CommonWalletObject commonWalletObject = new CommonWalletObject();
        commonWalletObject.getClass();
        return new zza();
    }

    public String getId() {
        return this.zzkl;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        com.google.android.gms.wallet.wobs.zza.zza(this, parcel, i);
    }
}
